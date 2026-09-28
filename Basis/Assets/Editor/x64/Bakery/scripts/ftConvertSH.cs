#if UNITY_EDITOR

using UnityEngine;
using UnityEditor;
using UnityEngine.SceneManagement;
using UnityEditor.SceneManagement;
using System.IO;
using System.Collections.Generic;

public class ftConvertSH
{
    static BakeryProjectSettings pstorage;

#if BAKERY_TOOLSMENU
    [MenuItem("Tools/Bakery/Utilities/Convert separate SH to Triple SH", false, 90)]
#else
    [MenuItem("Bakery/Utilities/Convert separate SH to Triple SH", false, 90)]
#endif
    private static void ConvertSHToTripleSH()
    {
        if (pstorage == null) pstorage = ftLightmaps.GetProjectSettings();

        ftTextureProcessor.texSettings = new Dictionary<string, ftRenderLightmap.Int2>();

        var storages = new List<ftLightmapsStorage>();
        var paths = new List<string>();
        bool hasNonSH = false;

        int sceneCount = SceneManager.sceneCount;
        for(int s=0; s<sceneCount; s++)
        {
            var scene = EditorSceneManager.GetSceneAt(s);
            if (!scene.isLoaded) continue;
            
            var storageGO = ftLightmaps.FindInScene("!ftraceLightmaps", scene);
            if (storageGO == null) continue;

            var storage = storageGO.GetComponent<ftLightmapsStorage>();
            if (storage == null) continue;

            if (storage.rnmMaps0 == null) continue;

            storages.Add(storage);

            for(int i=0; i<storage.rnmMaps0.Count; i++)
            {
                if (storage.mapsMode[i] != 3)
                {
                    hasNonSH = true;
                    continue;
                }
                if (storage.rnmMaps0[i] == null || storage.rnmMaps1[i] == null || storage.rnmMaps2[i] == null) continue;
                if (storage.rnmMaps0[i].width != storage.rnmMaps0[i].height) continue;

                var path = Convert(storage.rnmMaps0[i], storage.rnmMaps1[i], storage.rnmMaps2[i]);
                paths.Add(path);
            }
        }

        AssetDatabase.Refresh();

        int pathIdx = 0;
        for(int s=0; s<storages.Count; s++)
        {
            var storage = storages[s];
            storage.dirMaps = new List<Texture2D>();

            var emptyDir = ftLightmaps.GetEmptyDirectionTex(storage);
            for(int i=0; i<storage.maps.Count; i++)
            {
                storage.dirMaps.Add(emptyDir);
            }

            for(int i=0; i<storage.rnmMaps0.Count; i++)
            {
                if (storage.mapsMode[i] != 3) continue;
                if (storage.rnmMaps0[i] == null || storage.rnmMaps1[i] == null || storage.rnmMaps2[i] == null) continue;
                if (storage.rnmMaps0[i].width != storage.rnmMaps0[i].height) continue;

                storage.dirMaps[i] = AssetDatabase.LoadAssetAtPath<Texture2D>(paths[pathIdx]) as Texture2D;
                storage.rnmMaps0[i] = null;
                storage.rnmMaps1[i] = null;
                storage.rnmMaps2[i] = null;
                storage.mapsMode[i] = -1;
                pathIdx++;
            }

            if (!hasNonSH)
            {
                storage.rnmMaps0 = new List<Texture2D>();
                storage.rnmMaps1 = new List<Texture2D>();
                storage.rnmMaps2 = new List<Texture2D>();
                storage.mapsMode = new List<int>();
            }

            storage.tripleSH = true;

            EditorUtility.SetDirty(storage);
        }

        EditorSceneManager.MarkAllScenesDirty();
        ftLightmaps.RefreshFull();
    }

    static string Convert(Texture2D tx, Texture2D ty, Texture2D tz)
    {
        var assetPathX = AssetDatabase.GetAssetPath(tx);
        var assetPathY = AssetDatabase.GetAssetPath(ty);
        var assetPathZ = AssetDatabase.GetAssetPath(tz);

        var outputPathFull = Path.GetDirectoryName(assetPathX).Replace("\\", "/");
        var lmname = Path.GetFileNameWithoutExtension(assetPathX).Replace("L1x", "L1");

        var startInfo = new System.Diagnostics.ProcessStartInfo();
        startInfo.CreateNoWindow  = false;
        startInfo.UseShellExecute = false;

        startInfo.FileName        = Application.dataPath + "/Editor/x64/Bakery/combineSH.exe";
        startInfo.CreateNoWindow = true;



        var outname = outputPathFull + "/" + lmname + (pstorage.format8bit == BakeryProjectSettings.FileFormat.PNG ? ".png" : ".tga");
        var outPath1 = Application.dataPath + "/../" + outname;
        if (File.Exists(outPath1)) ftRenderLightmap.ValidateFileAttribs(outPath1);

        startInfo.Arguments       = " \"" + outPath1 + "\"" + 
                                    " \"" + Application.dataPath + "/../" + assetPathX + "\"" +
                                    " \"" + Application.dataPath + "/../" + assetPathY + "\"" +
                                    " \"" + Application.dataPath + "/../" + assetPathZ + "\"" +
                                    " t";

        var app = Path.GetFileNameWithoutExtension(startInfo.FileName);

        Debug.Log("Running "+app+" with "+startInfo.Arguments);

        var exeProcess = ftRenderLightmap.RunLocalProcess(app+" "+startInfo.Arguments, true);
        while(!ftRenderLightmap.IsProcessFinished(exeProcess))
        {
        }
        int lastReturnValue = ftRenderLightmap.GetProcessReturnValueAndClose(exeProcess);
        if (lastReturnValue != 0)
        {
            Debug.LogError("Error: "+lastReturnValue);
        }
        else
        {
            ftTextureProcessor.texSettings[outname] = new ftRenderLightmap.Int2(tx.width*3+16, ftTextureProcessor.TEX_DIR_NO_ALPHA_NPOT);
            Debug.Log("Importing "+outname+" "+ftTextureProcessor.texSettings[outname].x+" "+ftTextureProcessor.texSettings[outname].y);
        }

        return outname;
    }

#if BAKERY_TOOLSMENU
    [MenuItem("Tools/Bakery/Utilities/Convert Triple SH to separate SH", false, 90)]
#else
    [MenuItem("Bakery/Utilities/Convert Triple SH to separate SH", false, 90)]
#endif
    private static void ConvertTripleSHToSH()
    {
        if (pstorage == null) pstorage = ftLightmaps.GetProjectSettings();

        int sceneCount = SceneManager.sceneCount;
        for(int s=0; s<sceneCount; s++)
        {
            bool hasActualDir = false;

            var scene = EditorSceneManager.GetSceneAt(s);
            if (!scene.isLoaded) continue;
            
            var storageGO = ftLightmaps.FindInScene("!ftraceLightmaps", scene);
            if (storageGO == null) continue;

            var storage = storageGO.GetComponent<ftLightmapsStorage>();
            if (storage == null) continue;

            if (storage.dirMaps == null) continue;
            if (storage.rnmMaps0 == null) storage.rnmMaps0 = new List<Texture2D>();
            if (storage.rnmMaps1 == null) storage.rnmMaps1 = new List<Texture2D>();
            if (storage.rnmMaps2 == null) storage.rnmMaps2 = new List<Texture2D>();
            if (storage.mapsMode == null) storage.mapsMode = new List<int>();

            for(int i=0; i<storage.dirMaps.Count; i++)
            {
                if (storage.dirMaps[i] == null) continue;
                if (storage.dirMaps[i].width == storage.dirMaps[i].height)
                {
                    hasActualDir = true;
                    continue;
                }

                var tx = storage.dirMaps[i];
                var path = AssetDatabase.GetAssetPath(tx);
                var basePath = Path.GetDirectoryName(path).Replace("\\", "/") + "/" + Path.GetFileNameWithoutExtension(path);
                var expectedExt = (pstorage.format8bit == BakeryProjectSettings.FileFormat.PNG ? ".png" : ".tga");
                var xpath = basePath + "x" + expectedExt;
                var ypath = basePath + "y" + expectedExt;
                var zpath = basePath + "z" + expectedExt;

                var l1x = AssetDatabase.LoadAssetAtPath<Texture2D>(xpath);
                if (l1x == null)
                {
                    Debug.LogError("Can't load "+xpath);
                    continue;
                }

                var l1y = AssetDatabase.LoadAssetAtPath<Texture2D>(ypath);
                if (l1y == null)
                {
                    Debug.LogError("Can't load "+ypath);
                    continue;
                }

                var l1z = AssetDatabase.LoadAssetAtPath<Texture2D>(zpath);
                if (l1z == null)
                {
                    Debug.LogError("Can't load "+zpath);
                    continue;
                }

                while(storage.rnmMaps0.Count < i+1) storage.rnmMaps0.Add(null);
                while(storage.rnmMaps1.Count < i+1) storage.rnmMaps1.Add(null);
                while(storage.rnmMaps2.Count < i+1) storage.rnmMaps2.Add(null);
                while(storage.mapsMode.Count < i+1) storage.mapsMode.Add(-1);

                storage.rnmMaps0[i] = l1x;
                storage.rnmMaps1[i] = l1y;
                storage.rnmMaps2[i] = l1z;
                storage.mapsMode[i] = 3;

                storage.dirMaps[i] = null;

                storage.tripleSH = false;

                EditorUtility.SetDirty(storage);
            }

            if (!hasActualDir)
            {
                storage.dirMaps = new List<Texture2D>();
            }
        }

        EditorSceneManager.MarkAllScenesDirty();
        ftLightmaps.RefreshFull();
    }
}

#endif
