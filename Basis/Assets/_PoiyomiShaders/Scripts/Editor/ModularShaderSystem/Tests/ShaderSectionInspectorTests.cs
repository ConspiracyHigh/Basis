using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using NUnit.Framework;
using UnityEditor;
using UnityEngine;
using UnityEngine.TestTools;

namespace Poiyomi.ModularShaderSystem.Tests
{
    // A test-only host exercises the real IMGUI inspector even when the desktop isn't capturable.
    public class ShaderSectionInspectorHost : EditorWindow
    {
        public Material material;
        public Thry.ShaderEditor inspector;
        public MaterialEditor materialEditor;
        public int draws;
        public int repaints;
        public string error;
        private Vector2 _scroll;

        private void OnGUI()
        {
            if (material == null) return;
            if (materialEditor == null) materialEditor = (MaterialEditor)Editor.CreateEditor(material);
            if (inspector == null) inspector = new Thry.ShaderEditor();
            try
            {
                _scroll = EditorGUILayout.BeginScrollView(_scroll);
                inspector.OnGUI(materialEditor, MaterialEditor.GetMaterialProperties(new UnityEngine.Object[] { material }));
                EditorGUILayout.EndScrollView();
                draws++;
                if (Event.current.type == EventType.Repaint) repaints++;
            }
            catch (ExitGUIException) { throw; }
            catch (Exception exception) { error = exception.ToString(); throw; }
        }

        private void OnDisable()
        {
            if (materialEditor != null) DestroyImmediate(materialEditor);
        }
    }

    public class ShaderSectionInspectorTests
    {
        private static readonly BindingFlags StaticFlags = BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic;
        private static readonly Type Debugger = typeof(Editor).Assembly.GetType("UnityEditor.GUIViewDebuggerHelper");
        private static readonly Type DrawInstruction = typeof(Editor).Assembly.GetType("UnityEditor.IMGUIDrawInstruction");

        private static List<(GUIContent content, Rect rect)> DrawnControls()
        {
            var instructions = (IList)Activator.CreateInstance(typeof(List<>).MakeGenericType(DrawInstruction));
            Debugger.GetMethod("GetDrawInstructions", StaticFlags).Invoke(null, new object[] { instructions });
            return instructions.Cast<object>().Select(i => (
                (GUIContent)DrawInstruction.GetField("usedGUIContent").GetValue(i),
                (Rect)DrawInstruction.GetField("rect").GetValue(i))).ToList();
        }

        private static IEnumerator Repaint(ShaderSectionInspectorHost host)
        {
            int before = host.repaints;
            for (int i = 0; i < 40 && host.repaints <= before; i++)
            {
                host.Repaint();
                yield return null;
            }
            Assert.That(host.error, Is.Null);
            Assert.That(host.repaints, Is.GreaterThan(before));
        }

        private static void Click(ShaderSectionInspectorHost host, Rect rect)
        {
            host.SendEvent(new Event { type = EventType.MouseDown, button = 0, mousePosition = rect.center });
            host.SendEvent(new Event { type = EventType.MouseUp, button = 0, mousePosition = rect.center });
        }

        private static Rect Control(string text, bool inclusion = false)
        {
            var controls = DrawnControls();
            var matches = controls.Where(c => inclusion
                ? c.content?.tooltip == "Include this section in the shared shader: " + text
                : c.content?.text == text || c.content?.tooltip == text).ToArray();
            Assert.That(matches, Is.Not.Empty, "Missing control: " + text + ". Drawn: " +
                string.Join(" | ", controls.Select(c => c.content?.text + " [" + c.content?.tooltip + "]")));
            return matches[0].rect;
        }

        [UnityTest]
        public IEnumerator EditModeDrawsWithoutChangingMaterial()
        {
            var shader = Shader.Find(".poiyomi/Poiyomi Pro");
            Assert.That(shader, Is.Not.Null);
            var material = new Material(shader) { name = "Section Inspector Test", hideFlags = HideFlags.HideAndDontSave };
            var owner = Poi.Tools.PoiShaderSectionEditor.FindOwner(shader);
            string key = "Poi.ShaderSections." + AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(owner));
            string previousDraft = SessionState.GetString(key, "");
            var previousSelection = owner.DisabledSections;
            var host = ScriptableObject.CreateInstance<ShaderSectionInspectorHost>();
            var sessions = (IDictionary)typeof(Poi.Tools.PoiShaderSectionEditor).GetField("Sessions", BindingFlags.Static | BindingFlags.NonPublic).GetValue(null);
            try
            {
                // Establish the test's visible baseline even if the user has omitted sections.
                // The original selection is restored in finally without saving the asset.
                owner.DisabledSections = new List<string>();
                sessions.Remove(owner);
                SessionState.EraseString(key);
                material.SetFloat("_EnableEmission1", 1);
                host.material = material;
                host.titleContent = new GUIContent("Shader Sections Test");
                host.position = new Rect(100, 100, 650, 850);
                host.ShowUtility();
                var view = typeof(EditorWindow).GetField("m_Parent", BindingFlags.NonPublic | BindingFlags.Instance).GetValue(host);
                Debugger.GetMethod("DebugWindow", StaticFlags).Invoke(null, new[] { view });
                for (int i = 0; i < 40 && host.repaints == 0; i++)
                {
                    host.Repaint();
                    yield return null;
                }
                Assert.That(host.error, Is.Null);
                Assert.That(host.repaints, Is.GreaterThan(0), "The IMGUI host did not repaint.");
                var expandedProperty = typeof(Thry.ThryEditor.ShaderGroup).GetProperty("IsExpanded", BindingFlags.Instance | BindingFlags.NonPublic);
                foreach (var group in host.inspector.ShaderParts.OfType<Thry.ThryEditor.ShaderGroup>())
                    expandedProperty.SetValue(group, false);
                yield return Repaint(host);
                Control("Color & Normals");
                Click(host, Control("Edit Shader Sections"));
                int before = host.repaints;
                for (int i = 0; i < 40 && host.repaints <= before; i++)
                {
                    host.Repaint();
                    yield return null;
                }
                Assert.That(host.error, Is.Null);
                Assert.That(host.repaints, Is.GreaterThan(before));
                Assert.That(SessionState.GetString(key, ""), Does.Contain("\"editing\":true"));
                var controls = DrawnControls();
                var categoryControls = controls.Where(c => c.content?.tooltip?.StartsWith("Include this section in the shared shader:") == true).ToArray();
                Assert.That(categoryControls.Length, Is.GreaterThan(5),
                    "Edit mode must draw category checkboxes, not just an error-free toolbar. Drawn labels: " + string.Join(" | ", controls.Select(c => c.content?.text)));
                Assert.That(categoryControls.Any(c => c.content.tooltip.Contains("Color & Normals")), Is.True);
                Assert.That(categoryControls.Any(c => c.content.tooltip.Contains("Special FX")), Is.True);
                Assert.That(categoryControls.All(c => c.rect.width == 32 && c.rect.height == 16), Is.True);

                var mainGroup = host.inspector.ShaderParts.OfType<Thry.ThryEditor.ShaderGroup>().Single(g => g.MaterialProperty?.name == "m_mainCategory");
                Click(host, Control("Color & Normals", true));
                yield return Repaint(host);
                Assert.That(SessionState.GetString(key, ""), Does.Contain("m_mainCategory"), "Clicking a displayed category must change its draft selection.");
                Assert.That(expandedProperty.GetValue(mainGroup), Is.False, "Inclusion must not toggle the existing foldout.");

                Click(host, Control("Enable All"));
                yield return Repaint(host);
                Assert.That(SessionState.GetString(key, ""), Does.Contain("\"disabled\":[]"));

                Click(host, Control("Color & Normals"));
                yield return Repaint(host);
                Assert.That(expandedProperty.GetValue(mainGroup), Is.True, "The original header must still expand.");
                var adjustGroup = host.inspector.ShaderParts.OfType<Thry.ThryEditor.ShaderGroup>().Single(g => g.MaterialProperty?.name == "m_start_ColorAdjust");
                var nestedRow = Control(adjustGroup.Content.text, true);
                Click(host, nestedRow);
                yield return Repaint(host);
                Assert.That(SessionState.GetString(key, ""), Does.Contain("m_start_ColorAdjust"));
                Assert.That(material.GetFloat("_MainColorAdjustToggle"), Is.Zero, "Inclusion must not change the adjacent material toggle.");
                Assert.That(expandedProperty.GetValue(adjustGroup), Is.False);

                // The material's disabled toggle must not prevent editing deeper section inclusion.
                expandedProperty.SetValue(adjustGroup, true);
                yield return Repaint(host);
                var grading = host.inspector.ShaderParts.OfType<Thry.ThryEditor.ShaderGroup>().Single(g => g.MaterialProperty?.name == "s_start_ColorAdjustColorGrading");
                Control(grading.Content.text, true);
                Assert.That(DrawnControls().Any(c => c.content?.text?.Contains("Hue") == true), Is.True,
                    "Existing material controls must remain in the inspector while editing sections.");
                Click(host, Control(grading.Content.text, true));
                yield return Repaint(host);
                Assert.That(SessionState.GetString(key, ""), Does.Not.Contain("s_start_ColorAdjustColorGrading"));
                Assert.That(material.GetFloat("_ColorGradingToggle"), Is.Zero);

                Click(host, Control("Disable All"));
                yield return Repaint(host);
                var draft = SessionState.GetString(key, "");
                Assert.That(draft, Does.Contain("m_mainCategory"));
                Assert.That(draft, Does.Contain("m_start_emission1Options"), "Bulk selection must include nested layers.");

                Click(host, Control("Cancel"));
                yield return Repaint(host);
                Assert.That(SessionState.GetString(key, ""), Does.Contain("\"editing\":false"));
                Assert.That(DrawnControls().Any(c => c.content?.tooltip?.StartsWith("Include this section in the shared shader:") == true), Is.False);
                Assert.That(material.GetFloat("_EnableEmission1"), Is.EqualTo(1));

                // An applied omission is hidden normally but is recoverable on the original header.
                owner.DisabledSections = new List<string> { "m_mainCategory" };
                yield return Repaint(host);
                Assert.That(DrawnControls().Any(c => c.content?.text == "Color & Normals"), Is.False);
                Click(host, Control("Edit Shader Sections"));
                yield return Repaint(host);
                Control("Color & Normals", true);
                Click(host, Control("Cancel"));
                yield return Repaint(host);
                LogAssert.NoUnexpectedReceived();
            }
            finally
            {
                Debugger.GetMethod("StopDebugging", StaticFlags).Invoke(null, null);
                host.Close();
                UnityEngine.Object.DestroyImmediate(material);
                owner.DisabledSections = previousSelection;
                SessionState.SetString(key, previousDraft);
                // Drop the test session so the user's next inspector loads their original draft.
                sessions.Remove(owner);
            }
        }
    }
}
