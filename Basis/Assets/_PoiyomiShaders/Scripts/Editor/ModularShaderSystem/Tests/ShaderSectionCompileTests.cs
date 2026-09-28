using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using NUnit.Framework;
using UnityEditor;
using UnityEngine;
using UnityEngine.TestTools;

namespace Poiyomi.ModularShaderSystem.Tests
{
    public class ShaderSectionCompileTests
    {
        private ModularShader _owner;
        private ShaderGenerator.ShaderContext _context;
        private Dictionary<string, ShaderModule[]> _duplicates;
        private string _folder;
        private string _baseline;

        [OneTimeSetUp]
        public void Prepare()
        {
            var source = AssetDatabase.FindAssets("PoiyomiPro t:ModularShader").Select(AssetDatabase.GUIDToAssetPath)
                .Select(AssetDatabase.LoadAssetAtPath<ModularShader>).Single(s => s != null && s.name == "PoiyomiPro");
            _owner = UnityEngine.Object.Instantiate(source);
            _owner.Name = "Section Compile Audit";
            _owner.ShaderPath = "Hidden/PoiSectionCompileAudit";
            _owner.DisabledSections = new List<string>();
            _owner.LastGeneratedShaders = new List<Shader>();
            _folder = "Assets/PoiSectionCompileAudit_" + Guid.NewGuid().ToString("N");
            AssetDatabase.CreateFolder("Assets", Path.GetFileName(_folder));
            var prepared = ShaderGenerator.PrepareShaderContexts(_folder, _owner);
            _context = prepared.contexts[0];
            _duplicates = prepared.duplicates;
            _context.GenerateShader(_duplicates);
            _baseline = _context.ShaderFile.ToString();
        }

        [OneTimeTearDown]
        public void Cleanup()
        {
            if (_owner != null) UnityEngine.Object.DestroyImmediate(_owner);
            if (_duplicates != null)
                foreach (var module in _duplicates.Values.SelectMany(x => x))
                {
                    foreach (var template in module.Templates) UnityEngine.Object.DestroyImmediate(template.Template);
                    UnityEngine.Object.DestroyImmediate(module);
                }
            if (_folder != null) AssetDatabase.DeleteAsset(_folder);
        }

        [TestCase("")]
        [TestCase("m_mainCategory")]
        [TestCase("m_lightingCategory")]
        [TestCase("m_OutlineCategory")]
        [TestCase("m_specialFXCategory")]
        [TestCase("m_raymarchingCategory")]
        [TestCase("m_AudioLinkCategory")]
        [TestCase("m_vertexCategory")]
        [TestCase("m_modifierCategory")]
        [TestCase("m_thirdpartyCategory")]
        [TestCase("m_renderingCategory")]
        [TestCase("m_start_ColorAdjust")]
        [TestCase("s_start_ColorAdjustColorGrading")]
        [TestCase("ss_start_MainHueShiftAL")]
        [TestCase("m_start_Alpha")]
        [TestCase("m_start_Decal0")]
        [TestCase("m_start_Decal1")]
        [TestCase("m_start_Decal2")]
        [TestCase("m_start_Decal3")]
        [TestCase("m_start_PoiLightData")]
        [TestCase("m_start_PoiShading")]
        [TestCase("m_start_emissionOptions")]
        [TestCase("m_start_emission1Options")]
        [TestCase("m_start_emission2Options")]
        [TestCase("m_start_emission3Options")]
        [TestCase("m_start_glitter")]
        [TestCase("m_start_vertexManipulation")]
        [TestCase("s_start_VertexManipulationHeight")]
        [TestCase("s_start_vertexRounding")]
        [TestCase("m_start_GlobalMask")]
        [TestCase("m_start_GlobalThemeColor0")]
        [TestCase("m_start_Stochastic")]
        [TestCase("core-combination")]
        [TestCase("layers-combination")]
        [TestCase("all")]
        public void CategoryCompilesEveryPass(string section)
        {
            CompileConfiguration(section, false);
        }

        [TestCase("")]
        [TestCase("m_mainCategory")]
        [TestCase("m_lightingCategory")]
        [TestCase("m_modifierCategory")]
        [TestCase("m_start_Decal0")]
        [TestCase("m_start_Decal1")]
        [TestCase("m_start_Decal2")]
        [TestCase("m_start_Decal3")]
        [TestCase("m_start_PoiLightData")]
        [TestCase("m_start_Stochastic")]
        [TestCase("layers-combination")]
        [TestCase("all")]
        public void SharedDependenciesCompileWithAlternateKeywords(string section)
        {
            CompileConfiguration(section, true);
        }

        private void CompileConfiguration(string section, bool alternate)
        {
            if (section == "all")
                _context.DisabledSections = Regex.Matches(_baseline, @"\b(?<name>(?:m_|s_start|ss_start|g_start)\w*)\s*\(")
                    .Cast<Match>().Select(m => m.Groups["name"].Value).Where(ShaderSectionFilter.IsSection).Distinct().ToArray();
            else if (section == "core-combination")
                _context.DisabledSections = new[] { "m_mainCategory", "m_lightingCategory", "m_modifierCategory", "m_renderingCategory" };
            else if (section == "layers-combination")
                _context.DisabledSections = new[] { "m_start_Decal1", "m_start_Decal3", "m_start_emissionOptions", "m_start_emission2Options" };
            else _context.DisabledSections = string.IsNullOrEmpty(section) ? Array.Empty<string>() : new[] { section };
            foreach (string name in _context.DisabledSections) Assert.That(Regex.IsMatch(_baseline, @"\b" + Regex.Escape(name) + @"\s*\("), Is.True, name);
            _context.GenerateShader(_duplicates);
            string text = _context.ShaderFile.ToString();
            string path = _folder + "/Audit.shader";
            string reportFolder = Path.GetFullPath("Temp/PoiSectionCompileAudit");
            Directory.CreateDirectory(reportFolder);
            string reportName = string.IsNullOrEmpty(section) ? "baseline" : section;
            if (alternate) reportName += "_alternate";
            File.WriteAllText(Path.Combine(reportFolder, reportName + ".shader"), text);
            File.WriteAllText(path, text);
            bool previousIgnore = LogAssert.ignoreFailingMessages;
            Material material = null;
            var errors = new List<string>();
            try
            {
                LogAssert.ignoreFailingMessages = true;
                AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceSynchronousImport | ImportAssetOptions.ForceUpdate);
                var shader = AssetDatabase.LoadAssetAtPath<Shader>(path);
                Assert.That(shader, Is.Not.Null);
                material = new Material(shader);
                MaterialEditor.ApplyMaterialPropertyDrawers(material);
                errors.AddRange(ShaderUtil.GetShaderMessages(shader).Where(m => m.severity.ToString() == "Error").Select(m => m.message + " at line " + m.line));
                Assert.That(material.passCount, Is.GreaterThan(0));
                if (errors.Count == 0)
                    foreach (bool features in alternate ? new[] { true } : new[] { false, true })
                    {
                        if (features)
                            foreach (string keyword in new[] { "COLOR_GRADING_HDR", "POI_BUMP2NDMAP", "POI_AUDIOLINK", "POI_GLOBALMASK_TEXTURES", "AUTO_EXPOSURE", "POI_BACKFACE", "VIGNETTE_MASKED", "MOCHIE_PBR", "GGX_ANISOTROPICS", "POI_CLEARCOAT", "_EMISSION", "POI_EMISSION_1", "POI_EMISSION_2", "POI_EMISSION_3" })
                                material.EnableKeyword(keyword);
                        if (alternate)
                        {
                            material.DisableKeyword("_LIGHTINGMODE_FLAT");
                            material.DisableKeyword("_STOCHASTICMODE_DELIOT_HEITZ");
                            foreach (string keyword in new[] { "_LIGHTINGMODE_REALISTIC", "_STOCHASTICMODE_HEXTILE", "GEOM_TYPE_BRANCH", "POI_DECAL_1", "POI_DECAL_2", "POI_DECAL_3", "PROP_DECALMASK" })
                                material.EnableKeyword(keyword);
                        }
                        for (int pass = 0; pass < material.passCount; pass++) ShaderUtil.CompilePass(material, pass, true);
                        errors.AddRange(ShaderUtil.GetShaderMessages(shader).Where(m => m.severity.ToString() == "Error").Select(m =>
                            (features ? "features: " : "default: ") + m.message + " at line " + m.line));
                        if (errors.Count > 0) break;
                    }
                File.WriteAllText(Path.Combine(reportFolder, reportName + ".txt"),
                    "Passes: " + material.passCount + (alternate ? "; profile: enabled features, decals/mask, realistic lighting, hextile\n" : "; profiles: default, enabled feature keywords\n") + (errors.Count == 0 ? "PASS" : string.Join("\n", errors.Distinct())));
                Assert.That(errors, Is.Empty, section + ": " + string.Join("\n", errors.Distinct()));
            }
            finally
            {
                if (material != null) UnityEngine.Object.DestroyImmediate(material);
                LogAssert.ignoreFailingMessages = previousIgnore;
            }
        }

        [TestCase("m_start_emission1Options", "_EnableEmission1")]
        [TestCase("m_start_Decal1", "_DecalEnabled1")]
        [TestCase("m_start_ColorAdjust", "_MainColorAdjustToggle")]
        [TestCase("m_start_vertexManipulation", "_VertexManipulationsEnabled")]
        [TestCase("m_start_GlobalMask", "_GlobalMaskTexturesEnable")]
        [TestCase("m_mainCategory", "")]
        [TestCase("m_lightingCategory", "_ShadingEnabled")]
        [TestCase("m_renderingCategory", "")]
        public void RemovedSectionRendersLikeFeatureOff(string section, string enabler)
        {
            string baselinePath = _folder + "/Reference.shader", actualPath = _folder + "/Removed.shader";
            File.WriteAllText(baselinePath, _baseline.Replace("Hidden/PoiSectionCompileAudit", "Hidden/PoiSectionCompileReference"));
            _context.DisabledSections = new[] { section };
            _context.GenerateShader(_duplicates);
            File.WriteAllText(actualPath, _context.ShaderFile.ToString());
            AssetDatabase.ImportAsset(baselinePath, ImportAssetOptions.ForceSynchronousImport);
            AssetDatabase.ImportAsset(actualPath, ImportAssetOptions.ForceSynchronousImport);
            var reference = new Material(AssetDatabase.LoadAssetAtPath<Shader>(baselinePath));
            var actual = new Material(AssetDatabase.LoadAssetAtPath<Shader>(actualPath));
            var active = new Material(reference);
            try
            {
                foreach (var material in new[] { reference, actual, active })
                {
                    material.SetColor("_Color", new Color(0.65f, 0.3f, 0.15f, 1));
                    material.SetColor("_EmissionColor1", new Color(0.4f, 0.1f, 0.7f, 1));
                    material.SetFloat("_EmissionStrength1", 1);
                    material.SetColor("_DecalColor1", Color.green);
                    material.SetFloat("_MainHueShiftToggle", 1);
                    material.SetFloat("_MainHueShift", 0.35f);
                    material.SetVector("_VertexManipulationLocalTranslation", new Vector4(0.45f, 0.25f, 0, 1));
                    if (!string.IsNullOrEmpty(enabler)) material.SetFloat(enabler, material == reference ? 0 : 1);
                    if (section == "m_start_GlobalMask")
                    {
                        material.SetTexture("_GlobalMaskTexture0", Texture2D.blackTexture);
                        material.SetFloat("_EnableEmission1", 1);
                        material.SetFloat("_EmissionMask1GlobalMask", 1);
                    }
                    if (section == "m_mainCategory")
                    {
                        material.SetColor("_Color", material == reference ? Color.white : Color.red);
                        material.SetTexture("_MainTex", material == reference ? Texture2D.whiteTexture : Texture2D.blackTexture);
                    }
                    if (section == "m_renderingCategory") material.SetFloat("_ColorMask", material == reference ? 15 : 0);
                    MaterialEditor.ApplyMaterialPropertyDrawers(material);
                }
                var expected = Render(reference);
                var removed = Render(actual);
                var featureOn = Render(active);
                string reportFolder = Path.GetFullPath("Temp/PoiSectionCompileAudit");
                Directory.CreateDirectory(reportFolder);
                File.WriteAllBytes(Path.Combine(reportFolder, section + "_reference.png"), expected.EncodeToPNG());
                File.WriteAllBytes(Path.Combine(reportFolder, section + "_removed.png"), removed.EncodeToPNG());
                File.WriteAllBytes(Path.Combine(reportFolder, section + "_active.png"), featureOn.EncodeToPNG());
                float difference = PixelDifference(expected, removed);
                float activeDifference = PixelDifference(expected, featureOn);
                File.WriteAllText(Path.Combine(reportFolder, section + "_render.txt"), "Removed/reference mean RGB difference: " + difference + "\nActive/reference difference: " + activeDifference);
                UnityEngine.Object.DestroyImmediate(expected);
                UnityEngine.Object.DestroyImmediate(removed);
                UnityEngine.Object.DestroyImmediate(featureOn);
                Assert.That(activeDifference, Is.GreaterThan(0.002f), "The active-feature control must visibly differ; otherwise this render test proves nothing.");
                Assert.That(difference, Is.LessThan(0.002f), "Removed section must match the original feature's off state, despite saved enabled values.");
            }
            finally
            {
                UnityEngine.Object.DestroyImmediate(reference);
                UnityEngine.Object.DestroyImmediate(actual);
                UnityEngine.Object.DestroyImmediate(active);
            }
        }

        [TestCase("")]
        [TestCase("m_start_GlobalThemeColor0")]
        [TestCase("m_mainCategory")]
        public void RemovedDefaultsSurviveMaterialLocking(string section)
        {
            string uniqueName = "Hidden/PoiSectionLockAudit_" + Guid.NewGuid().ToString("N");
            string cacheFolder = Thry.ThryEditor.LockedShaderCache.CacheRoot + "/" + Thry.ThryEditor.LockedShaderCache.SanitizeFolderName(uniqueName);
            Assert.That(AssetDatabase.IsValidFolder(cacheFolder), Is.False, "Test must own its cache folder.");
            string path = _folder + "/LockSource.shader";
            _context.DisabledSections = string.IsNullOrEmpty(section) ? Array.Empty<string>() : new[] { section };
            _context.GenerateShader(_duplicates);
            File.WriteAllText(path, _context.ShaderFile.ToString().Replace("Hidden/PoiSectionCompileAudit", uniqueName));
            AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceSynchronousImport);
            var material = new Material(AssetDatabase.LoadAssetAtPath<Shader>(path));
            Texture2D before = null, after = null;
            try
            {
                AssetDatabase.CreateAsset(material, _folder + "/LockMaterial.mat");
                material.SetColor("_Color", Color.red);
                material.SetColor("_GlobalThemeColor0", Color.red);
                material.SetFloat("_ColorThemeIndex", 1);
                material.SetFloat("_Cutoff", 0.9f);
                MaterialEditor.ApplyMaterialPropertyDrawers(material);
                before = Render(material);
                Assert.That(Thry.ThryEditor.ShaderOptimizer.LockMaterials(new[] { material }), Is.True);
                Assert.That(Thry.ThryEditor.ShaderOptimizer.IsMaterialLocked(material), Is.True);
                Directory.CreateDirectory("Temp/PoiSectionCompileAudit");
                string reportName = string.IsNullOrEmpty(section) ? "baseline" : section;
                File.WriteAllText("Temp/PoiSectionCompileAudit/" + reportName + "_locked.shader", File.ReadAllText(AssetDatabase.GetAssetPath(material.shader)));
                for (int pass = 0; pass < material.passCount; pass++) ShaderUtil.CompilePass(material, pass, true);
                var errors = ShaderUtil.GetShaderMessages(material.shader).Where(m => m.severity.ToString() == "Error").Select(m => m.message).ToArray();
                Assert.That(errors, Is.Empty, string.Join("\n", errors));
                after = Render(material);
                float difference = PixelDifference(before, after);
                Directory.CreateDirectory("Temp/PoiSectionCompileAudit");
                File.WriteAllText("Temp/PoiSectionCompileAudit/" + reportName + "_locked.txt", "Passes: " + material.passCount + "; compile PASS; locked/unlocked mean RGB difference: " + difference);
                Assert.That(difference, Is.LessThan(0.002f));
            }
            finally
            {
                if (Thry.ThryEditor.ShaderOptimizer.IsMaterialLocked(material)) Thry.ThryEditor.ShaderOptimizer.UnlockMaterials(new[] { material });
                AssetDatabase.DeleteAsset(_folder + "/LockMaterial.mat");
                // Only this test's GUID-named cache subtree is eligible for cleanup.
                string cacheRoot = Path.GetFullPath(Thry.ThryEditor.LockedShaderCache.CacheRoot) + Path.DirectorySeparatorChar;
                Assert.That(Path.GetFullPath(cacheFolder).StartsWith(cacheRoot, StringComparison.OrdinalIgnoreCase), Is.True);
                if (AssetDatabase.IsValidFolder(cacheFolder)) AssetDatabase.DeleteAsset(cacheFolder);
                if (before != null) UnityEngine.Object.DestroyImmediate(before);
                if (after != null) UnityEngine.Object.DestroyImmediate(after);
            }
        }

        private static float PixelDifference(Texture2D a, Texture2D b)
        {
            var left = a.GetPixels(); var right = b.GetPixels();
            return left.Zip(right, (x, y) => Mathf.Abs(x.r - y.r) + Mathf.Abs(x.g - y.g) + Mathf.Abs(x.b - y.b)).Sum() / (left.Length * 3);
        }

        private static Texture2D Render(Material material)
        {
            bool async = ShaderUtil.allowAsyncCompilation;
            RenderTexture previous = RenderTexture.active;
            var preview = new PreviewRenderUtility();
            var sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
            try
            {
                ShaderUtil.allowAsyncCompilation = false;
                preview.AddSingleGO(sphere);
                sphere.GetComponent<Renderer>().sharedMaterial = material;
                preview.camera.transform.position = new Vector3(0, 0, -2.8f);
                preview.camera.transform.rotation = Quaternion.identity;
                preview.camera.nearClipPlane = 0.1f;
                preview.camera.farClipPlane = 10;
                preview.camera.fieldOfView = 30;
                preview.camera.clearFlags = CameraClearFlags.SolidColor;
                preview.camera.backgroundColor = new Color(0.08f, 0.08f, 0.08f, 1);
                preview.ambientColor = new Color(0.2f, 0.2f, 0.2f);
                preview.lights[0].intensity = 1;
                preview.lights[0].transform.rotation = Quaternion.Euler(35, -25, 0);
                preview.lights[1].intensity = 0;
                preview.BeginPreview(new Rect(0, 0, 128, 128), GUIStyle.none);
                preview.Render(true, false);
                var target = (RenderTexture)preview.EndPreview();
                RenderTexture.active = target;
                // Preview dimensions include editor DPI scaling; read the whole frame.
                var output = new Texture2D(target.width, target.height, TextureFormat.RGBA32, false);
                output.ReadPixels(new Rect(0, 0, target.width, target.height), 0, 0);
                output.Apply();
                return output;
            }
            finally
            {
                RenderTexture.active = previous;
                preview.Cleanup();
                if (sphere != null) UnityEngine.Object.DestroyImmediate(sphere);
                ShaderUtil.allowAsyncCompilation = async;
            }
        }
    }
}
