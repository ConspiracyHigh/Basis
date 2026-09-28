using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.TestTools.TestRunner.Api;
using UnityEngine;

namespace Poiyomi.ModularShaderSystem.Tests
{
    // Re-register after a domain reload so long mixed NUnit/UnityTest runs retain their results
    // even when an external test-job connection loses its callbacks.
    [InitializeOnLoad]
    internal static class ShaderSectionAuditResults
    {
        private static readonly TestRunnerApi Api;

        static ShaderSectionAuditResults()
        {
            Api = ScriptableObject.CreateInstance<TestRunnerApi>();
            Api.hideFlags = HideFlags.HideAndDontSave;
            Api.RegisterCallbacks(new Results());
        }

        private sealed class Results : ICallbacks
        {
            public void RunStarted(ITestAdaptor testsToRun) { }
            public void TestStarted(ITestAdaptor test) { }
            public void TestFinished(ITestResultAdaptor result) { }

            public void RunFinished(ITestResultAdaptor result)
            {
                var tests = Leaves(result).Where(r => r.FullName.StartsWith("Poiyomi.ModularShaderSystem.Tests.", StringComparison.Ordinal)).ToArray();
                if (tests.Length == 0) return;
                Directory.CreateDirectory("Temp/PoiSectionCompileAudit");
                string summary = tests.Count(t => t.ResultState == "Passed") + "/" + tests.Length + " passed\n";
                File.WriteAllText("Temp/PoiSectionCompileAudit/run-" + DateTime.UtcNow.ToString("yyyyMMdd-HHmmss") + ".txt",
                    summary + string.Join("\n", tests.Select(t => t.ResultState + " " + t.FullName +
                        (string.IsNullOrEmpty(t.Message) ? "" : "\n" + t.Message))));
            }

            private static IEnumerable<ITestResultAdaptor> Leaves(ITestResultAdaptor result)
            {
                if (!result.HasChildren) yield return result;
                else foreach (var child in result.Children)
                    foreach (var leaf in Leaves(child)) yield return leaf;
            }
        }
    }
}
