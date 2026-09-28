using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using NUnit.Framework;
using UnityEditor;
using UnityEngine;

namespace Poiyomi.ModularShaderSystem.Tests
{
    public class ShaderSectionFilterTests
    {
        private const string Properties = "Properties {\n" +
            "m_root(\"Root\",Float)=0\n" +
            "/*poi-section:0*/m_start_a(\"A--{reference_property:_A}\",Float)=0\n_A(\"A\",Float)=0\nm_end_a(\"\",Float)=0/*poi-section:/0*/\n" +
            "/*poi-section:1*/m_start_b(\"B--{reference_property:_B}\",Float)=0\n_B(\"B\",Float)=0\nm_end_b(\"\",Float)=0/*poi-section:/1*/\n}\n";

        [Test]
        public void RemovesOwnedCodeButKeepsPropertiesAndOtherModule()
        {
            string source = Properties + "SubShader {\n/*poi-section:0*/void A() {}/*poi-section:/0*/\n/*poi-section:1*/void B() {}/*poi-section:/1*/\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_start_a" });
            Assert.That(result, Does.Contain("_A(\"A\",Float)=0"));
            Assert.That(result, Does.Not.Contain("void A()"));
            Assert.That(result, Does.Contain("void B()"));
            Assert.That(result, Does.Not.Contain("poi-section:"));
        }

        [Test]
        public void DisablingParentRemovesAllDescendantModules()
        {
            string source = Properties + "SubShader {\n/*poi-section:0*/void A() {}/*poi-section:/0*/\n/*poi-section:1*/void B() {}/*poi-section:/1*/\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_root" });
            Assert.That(result, Does.Not.Contain("void A()"));
            Assert.That(result, Does.Not.Contain("void B()"));
            Assert.That(result, Does.Contain("m_start_b"));
        }

        [Test]
        public void UnknownMaterialValuesDoNotStripSharedGuard()
        {
            string source = Properties + "SubShader {\n//ifex _A == 0 && _B == 0\nSHARED\n//endex\n//ifex _A == 0\nA_ONLY\n//endex\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_start_a" });
            Assert.That(result, Does.Contain("SHARED"));
            Assert.That(result, Does.Not.Contain("A_ONLY"));
            result = ShaderSectionFilter.Apply(source, new[] { "m_start_a", "m_start_b" });
            Assert.That(result, Does.Not.Contain("SHARED"));
        }

        [Test]
        public void RepeatedModulesKeepSharedFirstAndLastContributions()
        {
            string source = Properties + "SubShader {\n/*poi-section:0*/\n//ifex _A==0&&_B==0\nSHARED\n//endex\n//ifex _A==0\nA_ONLY\n//endex\n/*poi-section:/0*/\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_start_a" }, new[] { 0, 1 });
            Assert.That(result, Does.Contain("SHARED"));
            Assert.That(result, Does.Not.Contain("A_ONLY"));
        }

        [Test]
        public void ReenabledConfigurationRestoresExactSource()
        {
            const string source = "Properties {\nm_a(\"JSON { brace } and \\\"quote\\\"\",Float)=0\n}\nSubShader {}";
            Assert.That(ShaderSectionFilter.Apply(source, Array.Empty<string>()), Is.EqualTo(source));
            Assert.DoesNotThrow(() => ShaderSectionFilter.Apply(source, new[] { "m_a" }));
        }

        [Test]
        public void UnguardedNestedSectionUsesDisabledConstantsWithoutBreakingSharedCode()
        {
            string source = Properties + "SubShader {\nCGPROGRAM\nfloat _A, _B;\nvoid Code() { Use(_A); }\nENDCG\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_start_a" });
            Assert.That(result, Does.Contain("float  _B;"));
            Assert.That(result, Does.Contain("static const float poiSectionDefault_A = 0;"));
            Assert.That(result, Does.Contain("Use(poiSectionDefault_A)"));
        }

        [Test]
        public void SharedFallbackStaysInsideSurvivingPasses()
        {
            string shared = "/*poi-section-shared-begin*/SHARED/*poi-section-shared-end*/";
            string source = Properties + "SubShader {\n/*poi-section:0*/CGPROGRAM\n/*poi-section:1*/" + shared + "/*poi-section:/1*/\nENDCG/*poi-section:/0*/\n}";
            Assert.That(ShaderSectionFilter.Apply(source, new[] { "m_root" }), Does.Not.Contain("SHARED"));
            Assert.That(ShaderSectionFilter.Apply(source, new[] { "m_start_b" }), Does.Contain("CGPROGRAM\nSHARED\nENDCG"));
        }

        [Test]
        public void FrozenRenderStatesUseShaderLabNamesAndKeepHlslIndexing()
        {
            string source = Properties + "SubShader {\nZWrite [_A]\nCull [_A]\nBlend [_A] [_B]\nCGPROGRAM\nfloat _A;\nfloat4 Data[4];\nvoid Code() { Use(Data[_A]); }\nENDCG\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_start_a" });
            Assert.That(result, Does.Contain("ZWrite Off"));
            Assert.That(result, Does.Contain("Cull Off"));
            Assert.That(result, Does.Contain("Blend Zero [_B]"));
            Assert.That(result, Does.Contain("Data[poiSectionDefault_A]"));
        }

        [Test]
        public void LockingConditionsUseFrozenValuesInsteadOfSavedMaterialValues()
        {
            string source = Properties + "SubShader {\nCGPROGRAM\nfloat _A;\n//ifex _A == 1 && isNotAnimated(_A)\nUse(_A);\n//endex\nENDCG\n}";
            string result = ShaderSectionFilter.Apply(source, new[] { "m_start_a" });
            Assert.That(result, Does.Contain("//ifex 0 == 1 && true"));
            Assert.That(result, Does.Contain("Use(poiSectionDefault_A)"));
        }

        [Test]
        public void GeneratedSourceKeepsSharedCodeWithoutOptimizerConfusingAnnotations()
        {
            string source = Properties + "SubShader {\n/*poi-section:0*/\n/*poi-section-shared-begin*/\nSHARED\n/*poi-section-shared-end*/\n/*poi-section-fallback:\nFALLBACK\n*/\nFEATURE\n/*poi-section:/0*/\n}";
            string enabled = ShaderSectionFilter.Apply(source, Array.Empty<string>());
            Assert.That(enabled, Does.Contain("SHARED").And.Contain("FEATURE").And.Not.Contain("FALLBACK").And.Not.Contain("poi-section"));
            string disabled = ShaderSectionFilter.Apply(source, new[] { "m_start_a" });
            Assert.That(disabled, Does.Contain("SHARED").And.Contain("FALLBACK").And.Not.Contain("FEATURE").And.Not.Contain("poi-section"));
        }
    }

    public class ShaderSectionGenerationTests
    {
        private ModularShader _copy;
        private ShaderGenerator.ShaderContext _context;
        private Dictionary<string, ShaderModule[]> _duplicates;
        private string _baseline;

        [OneTimeSetUp]
        public void Prepare()
        {
            var source = AssetDatabase.FindAssets("PoiyomiPro t:ModularShader").Select(AssetDatabase.GUIDToAssetPath)
                .Select(AssetDatabase.LoadAssetAtPath<ModularShader>).FirstOrDefault(s => s != null && s.name == "PoiyomiPro");
            Assert.That(source, Is.Not.Null);
            _copy = UnityEngine.Object.Instantiate(source);
            _copy.LastGeneratedShaders = new List<Shader>();
            _copy.DisabledSections = new List<string>();
            // Generate in memory; this directory exists and no shader is written here.
            var preparation = ShaderGenerator.PrepareShaderContexts(Application.dataPath, _copy);
            _context = preparation.contexts[0];
            _duplicates = preparation.duplicates;
            _context.GenerateShader(_duplicates);
            _baseline = _context.ShaderFile.ToString();
        }

        [OneTimeTearDown]
        public void Cleanup()
        {
            if (_copy != null) UnityEngine.Object.DestroyImmediate(_copy);
            if (_duplicates != null)
                foreach (var module in _duplicates.Values.SelectMany(x => x))
                {
                    foreach (var template in module.Templates) UnityEngine.Object.DestroyImmediate(template.Template);
                    UnityEngine.Object.DestroyImmediate(module);
                }
        }

        [TestCase(0)]
        [TestCase(1)]
        [TestCase(3)]
        public void RemovingEmissionLayerPreservesOtherLayerIdentities(int layer)
        {
            string suffix = layer == 0 ? "" : layer.ToString();
            _context.DisabledSections = new[] { "m_start_emission" + suffix + "Options" };
            _context.GenerateShader(_duplicates);
            string result = _context.ShaderFile.ToString();
            string propertiesPattern = @"(?s)Properties\s*\{(.*?)\n\s*SubShader";
            Assert.That(Regex.Match(result, propertiesPattern).Groups[1].Value,
                Is.EqualTo(Regex.Match(_baseline, propertiesPattern).Groups[1].Value));
            string code = result.Substring(result.IndexOf("SubShader", StringComparison.Ordinal));
            string function = layer == 0 ? "applyEmission" : "applyEmission__" + layer;
            Assert.That(Regex.IsMatch(code, @"\b" + function + @"\s*\("), Is.False);
            for (int i = 0; i < 4; i++)
            {
                if (i == layer) continue;
                string remaining = i == 0 ? "applyEmission" : "applyEmission__" + i;
                Assert.That(Regex.IsMatch(code, @"\b" + remaining + @"\s*\("), Is.True);
            }
            Assert.That(result, Does.Not.Contain("/*poi-section:"));
            Assert.That(result.Length, Is.LessThan(_baseline.Length));
        }

        [Test]
        public void DisablingEverySectionAttemptsGenerationWithoutRequiredLocks()
        {
            _context.DisabledSections = Regex.Matches(_baseline, @"\b(?<name>(?:m_|s_start|ss_start|g_start)\w*)\s*\(")
                .Cast<Match>().Select(m => m.Groups["name"].Value).Where(ShaderSectionFilter.IsSection).Distinct().ToArray();
            Assert.That(_context.DisabledSections.Length, Is.GreaterThan(100));
            Assert.DoesNotThrow(() => _context.GenerateShader(_duplicates));
            Assert.That(_context.ShaderFile.Length, Is.LessThan(_baseline.Length));
            Assert.That(_context.ShaderFile.ToString(), Does.Contain("m_mainCategory"));
        }

        [Test]
        public void ApplyUpdatesSharedShaderAndPreservesMaterialValues()
        {
            string folder = "Assets/PoiSectionTest_" + Guid.NewGuid().ToString("N");
            Material first = null, second = null;
            try
            {
                AssetDatabase.CreateFolder("Assets", Path.GetFileName(folder));
                var owner = UnityEngine.Object.Instantiate(_copy);
                owner.Name = "Section Test";
                owner.ShaderPath = "Hidden/" + Path.GetFileName(folder);
                owner.DisabledSections = new List<string>();
                owner.LastGeneratedShaders = new List<Shader>();
                AssetDatabase.CreateAsset(owner, folder + "/Settings.asset");
                string shaderPath = folder + "/Section Test.shader";
                File.WriteAllText(shaderPath, _baseline.Replace("Shader \"" + _copy.ShaderPath + "\"", "Shader \"" + owner.ShaderPath + "\""));
                AssetDatabase.ImportAsset(shaderPath, ImportAssetOptions.ForceSynchronousImport);
                var shader = AssetDatabase.LoadAssetAtPath<Shader>(shaderPath);
                string guid = AssetDatabase.AssetPathToGUID(shaderPath);
                owner.LastGeneratedShaders.Add(shader);
                first = new Material(shader);
                second = new Material(shader);
                first.SetFloat("_EnableEmission1", 1);
                second.SetFloat("_EnableEmission1", 0);
                first.SetColor("_EmissionColor1", Color.red);
                second.SetColor("_EmissionColor1", Color.blue);

                Poi.Tools.PoiShaderSectionEditor.ApplySelection(owner, folder, new[] { "m_start_emission1Options", "m_start_glitter" });
                Assert.That(AssetDatabase.AssetPathToGUID(shaderPath), Is.EqualTo(guid));
                Assert.That(first.shader, Is.SameAs(second.shader));
                Assert.That(first.GetFloat("_EnableEmission1"), Is.EqualTo(1));
                Assert.That(first.GetColor("_EmissionColor1"), Is.EqualTo(Color.red));
                Assert.That(second.GetColor("_EmissionColor1"), Is.EqualTo(Color.blue));
                string filtered = File.ReadAllText(shaderPath);
                Assert.That(filtered, Does.Not.Contain("applyEmission__1("));

                Poi.Tools.PoiShaderSectionEditor.ApplySelection(owner, folder, Array.Empty<string>());
                Assert.That(owner.DisabledSections, Is.Empty);
                Assert.That(AssetDatabase.AssetPathToGUID(shaderPath), Is.EqualTo(guid));
                Assert.That(File.ReadAllText(shaderPath), Does.Contain("applyEmission__1("));
                Assert.That(first.GetColor("_EmissionColor1"), Is.EqualTo(Color.red));

                var brokenTemplate = ScriptableObject.CreateInstance<TemplateAsset>();
                brokenTemplate.Template = "DeliberatelyInvalidShaderLabToken";
                AssetDatabase.CreateAsset(brokenTemplate, folder + "/Broken.asset");
                owner.ShaderTemplate = brokenTemplate;
                string goodSource = File.ReadAllText(shaderPath);
                bool previousIgnore = UnityEngine.TestTools.LogAssert.ignoreFailingMessages;
                UnityEngine.TestTools.LogAssert.ignoreFailingMessages = true;
                try
                {
                    Assert.Throws<InvalidOperationException>(() => Poi.Tools.PoiShaderSectionEditor.ApplySelection(owner, folder, new[] { "m_start_glitter" }));
                }
                finally { UnityEngine.TestTools.LogAssert.ignoreFailingMessages = previousIgnore; }
                Assert.That(File.ReadAllText(shaderPath), Is.EqualTo(goodSource));
                Assert.That(owner.DisabledSections, Is.Empty);
                Assert.That(AssetDatabase.AssetPathToGUID(shaderPath), Is.EqualTo(guid));
                Assert.That(first.shader, Is.SameAs(second.shader));

                // Importing valid ShaderLab does not necessarily compile its HLSL. Apply must
                // catch an actual pass compiler failure as well, then restore the same assets.
                // WriteShaderSkeleton supplies Shader, Properties, and SubShader wrappers.
                brokenTemplate.Template = "Pass\n{\nCGPROGRAM\n#pragma vertex vert\n#pragma fragment frag\nfloat4 vert(float4 v : POSITION) : SV_POSITION { return v; }\nfloat4 frag() : SV_Target { return poiDeliberatelyMissingSymbol; }\nENDCG\n}";
                UnityEngine.TestTools.LogAssert.ignoreFailingMessages = true;
                try
                {
                    var failure = Assert.Throws<InvalidOperationException>(() => Poi.Tools.PoiShaderSectionEditor.ApplySelection(owner, folder, new[] { "m_start_glitter" }));
                    Assert.That(failure.Message, Does.Contain("poiDeliberatelyMissingSymbol"));
                }
                finally { UnityEngine.TestTools.LogAssert.ignoreFailingMessages = previousIgnore; }
                Assert.That(File.ReadAllText(shaderPath), Is.EqualTo(goodSource));
                Assert.That(owner.DisabledSections, Is.Empty);
                Assert.That(AssetDatabase.AssetPathToGUID(shaderPath), Is.EqualTo(guid));
            }
            finally
            {
                if (first != null) UnityEngine.Object.DestroyImmediate(first);
                if (second != null) UnityEngine.Object.DestroyImmediate(second);
                AssetDatabase.DeleteAsset(folder);
            }
        }
    }
}
