#if UNITY_EDITOR
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEngine;
using Thry;
using Thry.ThryEditor;

namespace Poi.Raymarching
{
    /// <summary>
    /// One-click button that runs the full normalizedcrow bake pipeline:
    /// 1. SDF volume bake (multi-pass, async pump)
    /// 2. Bind data bake (writes bind-pose into mesh UVs)
    /// 3. Assigns all results to the material
    ///
    /// Both outputs are shared data, not one effect's — they belong to the Raymarching Data module
    /// (ModularShader/Editor/Poi_FeatureModules/Pro/Poi_Raymarching), which every raymarching
    /// feature reads from.
    /// Usage in shader: [PoiApplySDFBaker] _SDFTexture ("SDF Volume", 3D) = "black" {}
    /// </summary>
    public class PoiApplySDFBakerDecorator : MaterialPropertyDrawer
    {
        public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
        {
            ShaderProperty.RegisterDecorator(this);
            return 26;
        }

        public override void OnGUI(Rect position, MaterialProperty prop, string label, MaterialEditor editor)
        {
            position = EditorGUI.IndentedRect(position);
            position.y += 2;
            position.height = 22;

            Renderer renderer = ShaderEditor.Active?.ActiveRenderer;
            bool canBake = renderer != null;

            EditorGUI.BeginDisabledGroup(!canBake);
            if (GUI.Button(position, canBake ? "Bake SDF + Bind Data" : "Bake (select a mesh object)"))
            {
                // The bake opens modal panels and pumps the editor loop, which corrupts the
                // IMGUI layout stack if it runs inside OnGUI. Defer it out of the GUI pass.
                Renderer bakeRenderer = renderer;
                Material[] materials = editor.targets.OfType<Material>().ToArray();

                EditorApplication.delayCall += () =>
                {
                    if (bakeRenderer == null)
                        return;

                    string savePath = EditorUtility.SaveFilePanelInProject(
                        "Save SDF Texture", bakeRenderer.name + "_SDF", "asset", "Save SDF texture");

                    if (!string.IsNullOrEmpty(savePath))
                        RunFullBake(bakeRenderer, materials, savePath);
                };
            }
            EditorGUI.EndDisabledGroup();
        }

        static void RunFullBake(Renderer renderer, Material[] materials, string sdfSavePath)
        {
            GameObject tempGO = null;

            try
            {
                // ===== Phase 1: SDF Bake =====
                EditorUtility.DisplayProgressBar("Poi SDF Baker", "Setting up SDF baker...", 0f);

                tempGO = new GameObject("_PoiBaker_Temp");
                tempGO.hideFlags = HideFlags.HideAndDontSave;

                // --- SDF Baker ---
                var sdfBaker = tempGO.AddComponent<PoiSDFBaker>();
                if (sdfBaker == null)
                {
                    EditorUtility.DisplayDialog("Poi Baker",
                    "Could not create the SDF baker component. PoiSDFBaker must be compiled into a runtime " +
                    "(non-Editor) assembly so it can be added to a GameObject.", "OK");
                    return;
                }
                var sdfSO = new SerializedObject(sdfBaker);
                sdfSO.FindProperty("mWeldMeshShader").objectReferenceValue = FindShader("WeldMesh");
                sdfSO.FindProperty("mDistanceFieldGenerationShader").objectReferenceValue = FindCompute("PoiMeshToDistanceField");
                sdfSO.FindProperty("mUnsignedToSignedConversionShader").objectReferenceValue = FindCompute("PoiUnsignedToSignedDistanceField");
                sdfSO.FindProperty("mExpandDistanceFieldShader").objectReferenceValue = FindCompute("PoiShrinkWrapDistanceField");
                sdfSO.FindProperty("mCopyDistanceFieldSliceShader").objectReferenceValue = FindCompute("PoiCopyDistanceFieldSlice");
                sdfSO.FindProperty("mMeshVisualizationShader").objectReferenceValue = FindShader("WeldedMeshVisualization");
                sdfSO.FindProperty("_SdfVisualizationShader").objectReferenceValue = FindShader("SDFVisualization");
                sdfSO.ApplyModifiedPropertiesWithoutUndo();

                if (sdfSO.FindProperty("mWeldMeshShader").objectReferenceValue == null ||
                    sdfSO.FindProperty("mDistanceFieldGenerationShader").objectReferenceValue == null)
                {
                    EditorUtility.DisplayDialog("Poi Baker", "Could not find required baking shaders.", "OK");
                    return;
                }

                Mesh mesh = GetMesh(renderer);
                if (mesh == null)
                {
                    EditorUtility.DisplayDialog("Poi Baker", "Could not get mesh from selected renderer.", "OK");
                    return;
                }

                var rendererInfos = new List<PoiSDFBaker.TargetRendererInfo>();
                rendererInfos.Add(new PoiSDFBaker.TargetRendererInfo(renderer, mesh));

                sdfBaker.Initilize();
                if (!sdfBaker.BeginBake(0.01f, 0.04f, 0.02f, renderer.gameObject, rendererInfos))
                {
                    EditorUtility.DisplayDialog("Poi Baker", "Failed to start SDF bake.", "OK");
                    return;
                }

                float startTime = (float)EditorApplication.timeSinceStartup;
                int iterations = 0;

                while (!sdfBaker.IsFinished() && !sdfBaker.IsFailed())
                {
                    sdfBaker.DoWork();
                    GL.Flush();
                    iterations++;

                    if (iterations % 50 == 0)
                    {
                        float progress = sdfBaker.GetPercentageDone();
                        float elapsed = (float)EditorApplication.timeSinceStartup - startTime;

                        if (EditorUtility.DisplayCancelableProgressBar("Poi SDF Baker",
                            $"Baking SDF... {Mathf.RoundToInt(progress * 100)}% ({elapsed:F1}s)", progress * 0.7f))
                        {
                            Debug.Log("<color=blue>Poi:</color> Cancelled.");
                            return;
                        }

                        if (elapsed > 300f)
                        {
                            Debug.LogError($"<color=blue>Poi:</color> SDF timed out at {progress * 100:F1}%");
                            EditorUtility.DisplayDialog("Poi Baker", "SDF bake timed out.", "OK");
                            return;
                        }
                    }
                }

                if (sdfBaker.IsFailed())
                {
                    string reason = sdfBaker.GetFailureReason();
                    EditorUtility.DisplayDialog("Poi Baker", string.IsNullOrEmpty(reason) ? "SDF bake failed." : reason, "OK");
                    return;
                }

                // Save SDF texture
                EditorUtility.DisplayProgressBar("Poi SDF Baker", "Saving SDF...", 0.72f);

                Texture3D sdf = sdfBaker.GetSDFTexture();
                if (sdf == null)
                {
                    EditorUtility.DisplayDialog("Poi Baker", "SDF bake produced no texture.", "OK");
                    return;
                }

                Texture3D existing = AssetDatabase.LoadAssetAtPath<Texture3D>(sdfSavePath);
                if (existing != null)
                {
                    EditorUtility.CopySerialized(sdf, existing);
                    sdf = existing;
                }
                else
                {
                    AssetDatabase.CreateAsset(sdf, sdfSavePath);
                }
                AssetDatabase.SaveAssets();

                float sdfPixelSize = sdfBaker.GetPixelSize();
                Vector3 sdfLowerCorner = sdfBaker.GetSDFLowerCorner();
                Vector3 sdfSize = sdfBaker.GetSDFSize();

                sdfBaker.CleanupAndReset();

                // ===== Phase 2: Bind Data Bake =====
                EditorUtility.DisplayProgressBar("Poi SDF Baker", "Baking bind data...", 0.75f);

                var bindBaker = tempGO.AddComponent<PoiBindDataBaker>();
                if (bindBaker == null)
                {
                    EditorUtility.DisplayDialog("Poi Baker",
                        "Could not create the bind data baker component. PoiBindDataBaker must be compiled into a " +
                        "runtime (non-Editor) assembly so it can be added to a GameObject.", "OK");
                    return;
                }
                var bindSO = new SerializedObject(bindBaker);
                bindSO.FindProperty("mBakeBindDataShader").objectReferenceValue = FindShader("BakeBindData");
                bindSO.FindProperty("mVisualizationShader").objectReferenceValue = FindShader("BindMaskVisualization");
                bindSO.ApplyModifiedPropertiesWithoutUndo();

                Color[] maskColors = new Color[PoiBindDataBaker.cMaxMaskColors];
                maskColors[0] = Color.white;

                bindBaker.SaveSettings(
                    renderer.gameObject, renderer, mesh,
                    null, 1, maskColors, Color.black,
                    PoiBindDataBaker.BindDataUVSlot.UV6,
                    PoiBindDataBaker.BindDataUVSlot.UV7,
                    PoiBindDataBaker.BindDataUVSlot.UV8);

                bindBaker.DoBake();

                Mesh meshWithBindData = bindBaker.GetMeshWithBindData();

                if (meshWithBindData != null)
                {
                    // Save the mesh with bind data baked into UVs
                    string meshSavePath = sdfSavePath.Replace("_SDF.asset", "_BindMesh.asset");
                    if (meshSavePath == sdfSavePath) meshSavePath = sdfSavePath.Replace(".asset", "_BindMesh.asset");

                    Mesh existingMesh = AssetDatabase.LoadAssetAtPath<Mesh>(meshSavePath);
                    if (existingMesh != null)
                    {
                        EditorUtility.CopySerialized(meshWithBindData, existingMesh);
                        meshWithBindData = existingMesh;
                    }
                    else
                    {
                        AssetDatabase.CreateAsset(Object.Instantiate(meshWithBindData), meshSavePath);
                        meshWithBindData = AssetDatabase.LoadAssetAtPath<Mesh>(meshSavePath);
                    }
                    AssetDatabase.SaveAssets();

                    // Apply the bind data mesh to the renderer
                    if (renderer is SkinnedMeshRenderer smr)
                        smr.sharedMesh = meshWithBindData;
                    else
                    {
                        MeshFilter mf = renderer.GetComponent<MeshFilter>();
                        if (mf != null) mf.sharedMesh = meshWithBindData;
                    }

                    Debug.Log($"<color=blue>Poi:</color> Bind data baked into mesh -> {meshSavePath}");
                }
                else
                {
                    Debug.LogWarning("<color=blue>Poi:</color> Bind data bake produced no mesh, skipping.");
                }

                bindBaker.CleanupAndReset();

                // ===== Phase 3: Assign to material =====
                EditorUtility.DisplayProgressBar("Poi SDF Baker", "Assigning to material...", 0.95f);

                foreach (Material mat in materials)
                {
                    if (mat == null)
                        continue;

                    Undo.RecordObject(mat, "Bake Lava Lamp");
                    mat.SetTexture("_SDFTexture", sdf);
                    mat.SetFloat("_SDFPixelSize", sdfPixelSize);
                    mat.SetVector("_SDFLowerCorner", sdfLowerCorner);
                    mat.SetVector("_SDFSize", sdfSize);
                    EditorUtility.SetDirty(mat);
                }

                Debug.Log($"<color=blue>Poi:</color> Full bake complete: SDF -> {sdfSavePath}");
            }
            finally
            {
                if (tempGO != null)
                    Object.DestroyImmediate(tempGO);
                EditorUtility.ClearProgressBar();
            }
        }

        static Mesh GetMesh(Renderer renderer)
        {
            if (renderer is SkinnedMeshRenderer smr) return smr.sharedMesh;
            var mf = renderer.GetComponent<MeshFilter>();
            return mf != null ? mf.sharedMesh : null;
        }

        static ComputeShader FindCompute(string name)
        {
            string[] guids = AssetDatabase.FindAssets(name + " t:ComputeShader");
            foreach (string guid in guids)
            {
                string path = AssetDatabase.GUIDToAssetPath(guid);
                if (path.Contains("RaymarchingBaking"))
                    return AssetDatabase.LoadAssetAtPath<ComputeShader>(path);
            }
            if (guids.Length > 0)
                return AssetDatabase.LoadAssetAtPath<ComputeShader>(AssetDatabase.GUIDToAssetPath(guids[0]));
            Debug.LogError($"<color=blue>Poi:</color> Could not find compute shader: {name}");
            return null;
        }

        static Shader FindShader(string name)
        {
            string[] guids = AssetDatabase.FindAssets(name + " t:Shader");
            foreach (string guid in guids)
            {
                string path = AssetDatabase.GUIDToAssetPath(guid);
                if (path.Contains("RaymarchingBaking"))
                    return AssetDatabase.LoadAssetAtPath<Shader>(path);
            }
            if (guids.Length > 0)
                return AssetDatabase.LoadAssetAtPath<Shader>(AssetDatabase.GUIDToAssetPath(guids[0]));
            Debug.LogError($"<color=blue>Poi:</color> Could not find shader: {name}");
            return null;
        }
    }
}
#endif
