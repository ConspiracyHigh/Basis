// Disable 'obsolete' warnings
#pragma warning disable 0618

using UnityEngine;
using UnityEditor;
using UnityEngine.SceneManagement;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.SceneManagement;

public class ftMultiVolumeMenu : EditorWindow
{
    //public int blockSizeX = 64;
    //public int blockSizeY = 32;
    //public int blockSizeZ = 64;

    static public bool compress;

#if BAKERY_TOOLSMENU
    [MenuItem("Tools/Bakery/Multivolume/Generate Multivolume (experimental)", false, 44)]
#else
    [MenuItem("Bakery/Multivolume/Generate Multivolume (experimental)", false, 44)]
#endif
    private static void ShowWnd()
    {
        var instance = (ftMultiVolumeMenu)GetWindow(typeof(ftMultiVolumeMenu));
        instance.titleContent.text = "Multivolume";
        instance.minSize = new Vector2(320, 90);
        instance.maxSize = new Vector2(instance.minSize.x, instance.minSize.y + 1);
        instance.Show();
    }

    static void ConvertToMultivolume()
    {
        var vols = GameObject.FindObjectsOfType<BakeryVolume>();
        var vols2 = new List<BakeryVolume>();
        for(int i=0; i<vols.Length; i++)
        {
            if (vols[i].bakedTexture0 != null)
            {
                vols2.Add(vols[i]);

                var fmt = vols[i].bakedTexture0.format;
                if (fmt == TextureFormat.BC6H || fmt == TextureFormat.BC7 || fmt == TextureFormat.DXT1 || fmt == TextureFormat.DXT5)
                {
                    Debug.LogError("Input volumes must not be compressed");
                    return;
                }
            }
        }
        vols2.Sort(delegate(BakeryVolume a, BakeryVolume b)
        {
            return b.multiVolumePriority.CompareTo(a.multiVolumePriority);
        });
        ConvertToMultivolume(vols2, compress);
    }

    struct Block
    {
        public int index, w, h, d;
    };

    struct PlacedBlock
    {
        public int x, y, z, w, h, d, index;
    };

    const int TEX0 = 0;
    const int TEX1 = 1;
    const int TEX2 = 2;
    const int TEX3 = 3;
    const int TEXMASK = 4;

    static int Ceil4(int x)
    {
        return (x + 3) & ~3;
    }

    static Color[] ResampleXY(Color[] src, int sw, int sh, int depth, int dw, int dh)
    {
        var dst = new Color[dw * dh * depth];
        float rx = (float)sw / dw;
        float ry = (float)sh / dh;
        for (int z=0; z<depth; z++)
        {
            int soff = z * sw * sh;
            int doff = z * dw * dh;
            for (int y=0; y<dh; y++)
            {
                float syf = (y + 0.5f) * ry - 0.5f;
                int y0 = Mathf.FloorToInt(syf);
                float wy = syf - y0;
                int y0r = soff + Mathf.Clamp(y0, 0, sh - 1) * sw;
                int y1r = soff + Mathf.Clamp(y0 + 1, 0, sh - 1) * sw;
                for (int x=0; x<dw; x++)
                {
                    float sxf = (x + 0.5f) * rx - 0.5f;
                    int x0 = Mathf.FloorToInt(sxf);
                    float wx = sxf - x0;
                    int x0c = Mathf.Clamp(x0, 0, sw - 1);
                    int x1c = Mathf.Clamp(x0 + 1, 0, sw - 1);
                    var c0 = Color.LerpUnclamped(src[y0r + x0c], src[y0r + x1c], wx);
                    var c1 = Color.LerpUnclamped(src[y1r + x0c], src[y1r + x1c], wx);
                    dst[doff + y * dw + x] = Color.LerpUnclamped(c0, c1, wy);
                }
            }
        }
        return dst;
    }

    // Packing based on RedSIM implementation
    static Color[] CopyVoxels(int texType, int atlasW, int atlasH, int atlasD, int padX, int padY, int padZ, List<PlacedBlock> placed, List<BakeryVolume> texs)
    {
        int atlasWH = atlasW * atlasH;
        var atlasPixels = new Color[atlasWH * atlasD];
        foreach (var p in placed)
        {
            Texture3D tex = null;
            if (texType == TEX0)
            {
                tex = texs[p.index].bakedTexture0;
            }
            else if (texType == TEX1)
            {
                tex = texs[p.index].bakedTexture1;
            }
            else if (texType == TEX2)
            {
                tex = texs[p.index].bakedTexture2;
            }
            else if (texType == TEX3)
            {
                tex = texs[p.index].bakedTexture3;
            }
            else if (texType == TEXMASK)
            {
                tex = texs[p.index].bakedMask;
            }

            Color[] col = tex.GetPixels();
            int w = tex.width;
            int h = tex.height;
            int d = tex.depth;

            if (compress)
            {
                // Round resolution up by 4 because of block size
                int tw = Ceil4(w);
                int th = Ceil4(h);
                if (tw != w || th != h)
                {
                    col = ResampleXY(col, w, h, d, tw, th);
                    w = tw;
                    h = th;
                }
            }

            int wh = w * h;
            int paddedW = w + padX * 2;
            int paddedH = h + padY * 2;
            int paddedD = d + padZ * 2;

            // Copy volume to atlas with added padding
            for (int z=0; z<paddedD; z++)
            {
                int sz = Mathf.Clamp(z - padZ, 0, d - 1) * wh;
                int dstZ = (p.z + z) * atlasWH;
                for (int y=0; y<paddedH; y++)
                {
                    int sy = sz + Mathf.Clamp(y - padY, 0, h - 1) * w;
                    int dstRow = dstZ + (p.y + y) * atlasW + p.x;
                    for (int x=0; x<paddedW; x++)
                    {
                        atlasPixels[dstRow + x] = col[sy + Mathf.Clamp(x - padX, 0, w - 1)];
                    }
                }
            }
        }

        return atlasPixels;
    }

#if UNITY_2020_1_OR_NEWER
    static Texture3D CompressAtlas(Color[] voxels, int atlasW, int atlasH, int atlasD, TextureFormat formatU, TextureFormat formatC, string name, Color[] divideByL0 = null)
    {
        if (divideByL0 != null)
        {
            int numTotal = atlasW * atlasH * atlasD;
            const float invConvL0 = 1.0f / ftAdditionalConfig.convL0;
            for(int i=0; i<numTotal; i++)
            {
                float l0r = divideByL0[i].r * invConvL0;
                float l0g = divideByL0[i].g * invConvL0;
                float l0b = divideByL0[i].b * invConvL0;

                float il0r = 0.5f / l0r;
                float il0g = 0.5f / l0g;
                float il0b = 0.5f / l0b;

                float l1r = voxels[i].r;
                float l1g = voxels[i].g;
                float l1b = voxels[i].b;

                l1r = (l1r * il0r) * 0.5f + 0.5f;
                l1g = (l1g * il0g) * 0.5f + 0.5f;
                l1b = (l1b * il0b) * 0.5f + 0.5f;

                voxels[i] = new Color(l1r, l1g, l1b, 1.0f);
            }
        }

        int numSlicePixels = atlasW * atlasH;
        var slicePixels = new Color[numSlicePixels];
        byte[] data = null;
        int sliceByteSize = 0;
        for (int z=0; z<atlasD; z++)
        {
            System.Array.Copy(voxels, z * numSlicePixels, slicePixels, 0, numSlicePixels);
            var sliceTex = new Texture2D(atlasW, atlasH, formatU, false);
            sliceTex.SetPixels(slicePixels);
            sliceTex.Apply(false);

            EditorUtility.CompressTexture(sliceTex, formatC, UnityEditor.TextureCompressionQuality.Best);

            var bytes = sliceTex.GetRawTextureData();
            if (data == null)
            {
                sliceByteSize = bytes.Length;
                data = new byte[sliceByteSize * atlasD];
            }
            System.Array.Copy(bytes, 0, data, sliceByteSize * z, sliceByteSize);
            Object.DestroyImmediate(sliceTex);
        }
        var atlasTex = new Texture3D(atlasW, atlasH, atlasD, formatC, false);
        atlasTex.wrapMode = TextureWrapMode.Clamp;
        atlasTex.filterMode = FilterMode.Bilinear;

        atlasTex.SetPixelData(data, 0, 0);
        atlasTex.Apply(false);

        AssetDatabase.CreateAsset(atlasTex, "Assets/Multivolume" + name + ".asset");
        return atlasTex;
    }
#endif

    static Texture3D SaveAtlas(Color[] pixels, int atlasW, int atlasH, int atlasD, TextureFormat format, string name)
    {
        var atlasTexture = new Texture3D(atlasW, atlasH, atlasD, format, false);
        atlasTexture.wrapMode = TextureWrapMode.Clamp;
        atlasTexture.filterMode = FilterMode.Bilinear;
        atlasTexture.SetPixels(pixels);
        atlasTexture.Apply(false);
        AssetDatabase.CreateAsset(atlasTexture, "Assets/Multivolume" + name + ".asset");
        return atlasTexture;
    }

    static void ConvertToMultivolume(List<BakeryVolume> texs, bool compress)
    {
        int count = texs.Count;

        var block = new Block();
        var blocks = new List<Block>();
        for (int i = 0; i < count; ++i)
        {
            block.index = i;
            block.w = texs[i].bakedTexture0.width;
            block.h = texs[i].bakedTexture0.height;
            block.d = texs[i].bakedTexture0.depth;
            if (compress)
            {
                block.w = Ceil4(block.w);
                block.h = Ceil4(block.h);
            }
            blocks.Add(block);
        }

        blocks.Sort((a, b) => (b.w * b.h * b.d).CompareTo(a.w * a.h * a.d));

        var placedBlock = new PlacedBlock();
        var placed = new List<PlacedBlock>();
        int atlasW = 0, atlasH = 0, atlasD = 0;

        int padX = compress ? 4 : 1;
        int padY = padX;
        int padZ = 1;

        const int maxAtlasSize = 2048; // let's hope it's true on modern phones as well

        foreach (var b in blocks)
        {
            int bw = b.w + padX * 2;
            int bh = b.h + padY * 2;
            int bd = b.d + padZ * 2;

            int bestPosX = 0;
            int bestPosY = 0;
            int bestPosZ = 0;
            int bestVol = int.MaxValue;

            List<int> xCand = new List<int> { 0 };
            List<int> yCand = new List<int> { 0 };
            List<int> zCand = new List<int> { 0 };
            foreach (var p in placed)
            {
                xCand.Add(p.x + p.w);
                yCand.Add(p.y + p.h);
                zCand.Add(p.z + p.d);
            }

            foreach (int x in xCand)
            {
                foreach (int y in yCand)
                {
                    foreach (int z in zCand)
                    {
                        bool collides = false;
                        foreach (var p in placed)
                        {
                            if (x < p.x + p.w && 
                                x + bw > p.x && 
                                y < p.y + p.h && 
                                y + bh > p.y && 
                                z < p.z + p.d && 
                                z + bd > p.z)
                            {
                                collides = true;
                                break;
                            }
                        }
                        if (collides) continue;

                        int newW = System.Math.Max(atlasW, x + bw);
                        int newH = System.Math.Max(atlasH, y + bh);
                        int newD = System.Math.Max(atlasD, z + bd);

                        if (newW > maxAtlasSize || newH > maxAtlasSize || newD > maxAtlasSize) continue;

                        int vol = newW * newH * newD;

                        if (vol < bestVol)
                        {
                            bestVol = vol;
                            bestPosX = x;
                            bestPosY = y;
                            bestPosZ = z;
                        }
                    }
                }
            }

            placedBlock.x = bestPosX;
            placedBlock.y = bestPosY;
            placedBlock.z = bestPosZ;
            placedBlock.w = bw;
            placedBlock.h = bh;
            placedBlock.d = bd;
            placedBlock.index = b.index;
            placed.Add(placedBlock);

            atlasW = System.Math.Max(atlasW, bestPosX + bw);
            atlasH = System.Math.Max(atlasH, bestPosY + bh);
            atlasD = System.Math.Max(atlasD, bestPosZ + bd);
        }

        // Update bounds
        var uniqueBoundsMin = new Vector3[count];
        var uniqueBoundsMax = new Vector3[count];
        foreach (var p in placed)
        {
            var tex = texs[p.index].bakedTexture0;
            int w = compress ? Ceil4(tex.width) : tex.width;
            int h = compress ? Ceil4(tex.height) : tex.height;
            int d = tex.depth;

            uniqueBoundsMin[p.index] = new Vector3(
                (float)(p.x + padX) / atlasW,
                (float)(p.y + padY) / atlasH,
                (float)(p.z + padZ) / atlasD);

            uniqueBoundsMax[p.index] = new Vector3(
                (float)(p.x + padX + w) / atlasW,
                (float)(p.y + padY + h) / atlasH,
                (float)(p.z + padZ + d) / atlasD);
        }



        // Update pixels
        var atlasVoxels0 = CopyVoxels(TEX0, atlasW, atlasH, atlasD, padX, padY, padZ, placed, texs);
        var atlasVoxels1 = CopyVoxels(TEX1, atlasW, atlasH, atlasD, padX, padY, padZ, placed, texs);
        var atlasVoxels2 = CopyVoxels(TEX2, atlasW, atlasH, atlasD, padX, padY, padZ, placed, texs);

        int maskFormat = -1;
        bool hasMasks = false;
        bool hasEmptyMasks = false;
        for(int i=0; i<count; i++)
        {
            if (texs[i].bakedMask == null)
            {
                hasEmptyMasks = true;
            }
            else
            {
                hasMasks = true;
                int format = (int)texs[i].bakedMask.format;
                if (maskFormat < 0)
                {
                    maskFormat = format;
                }
                else if (maskFormat != format)
                {
                    Debug.LogError("Volume masks use different formats.");
                    return;
                }
            }
        }
        if (hasEmptyMasks)
        {
            if (hasMasks)
            {
                Debug.LogError("Some volumes have masks, but some don't");
                return;
            }
        }

        Color[] atlasVoxelsMask = hasMasks ? CopyVoxels(TEXMASK, atlasW, atlasH, atlasD, padX, padY, padZ, placed, texs) : null;


        Texture3D atlasTexture0, atlasTexture1, atlasTexture2;
        Texture3D atlasTexture3 = null;
        Texture3D atlasMask = null;

        var assetName = ftRenderLightmap.GenerateLightingDataAssetName();

#if UNITY_2020_1_OR_NEWER
        if (compress)
        {
            int numVoxels = atlasVoxels0.Length;
            var atlasVoxels3 = new Color[numVoxels];
            for(int i=0; i<numVoxels; i++)
            {
                atlasVoxels3[i] = new Color(atlasVoxels0[i].a, atlasVoxels1[i].a, atlasVoxels2[i].a, 1.0f);
            }
            atlasTexture0 = CompressAtlas(atlasVoxels0, atlasW, atlasH, atlasD, TextureFormat.RGBAHalf, TextureFormat.BC6H, assetName+"_0");
            atlasTexture1 = CompressAtlas(atlasVoxels1, atlasW, atlasH, atlasD, TextureFormat.ARGB32, TextureFormat.BC7, assetName+"_1", atlasVoxels0);
            atlasTexture2 = CompressAtlas(atlasVoxels2, atlasW, atlasH, atlasD, TextureFormat.ARGB32, TextureFormat.BC7, assetName+"_2", atlasVoxels0);
            atlasTexture3 = CompressAtlas(atlasVoxels3, atlasW, atlasH, atlasD, TextureFormat.ARGB32, TextureFormat.BC7, assetName+"_3", atlasVoxels0);
            if (hasMasks) atlasMask = CompressAtlas(atlasVoxelsMask, atlasW, atlasH, atlasD, TextureFormat.ARGB32, TextureFormat.BC7, assetName+"_Mask");
        }
        else
#endif
        {
            atlasTexture0 = SaveAtlas(atlasVoxels0, atlasW, atlasH, atlasD, TextureFormat.RGBAHalf, assetName+"_0");
            atlasTexture1 = SaveAtlas(atlasVoxels1, atlasW, atlasH, atlasD, TextureFormat.RGBAHalf, assetName+"_1");
            atlasTexture2 = SaveAtlas(atlasVoxels2, atlasW, atlasH, atlasD, TextureFormat.RGBAHalf, assetName+"_2");
            if (hasMasks) atlasMask = SaveAtlas(atlasVoxelsMask, atlasW, atlasH, atlasD, texs[0].bakedMask.format, assetName+"_Mask");
        }

        AssetDatabase.SaveAssets();

        var sceneCount = EditorSceneManager.sceneCount;
        for(int i=0; i<sceneCount; i++)
        {
            var scene = EditorSceneManager.GetSceneAt(i);
            if (!scene.isLoaded) continue;
            var go = ftLightmaps.FindInScene("!ftraceLightmaps", scene);
            if (go == null) continue;
            var storage = go.GetComponent<ftLightmapsStorage>();
            if (storage == null) continue;
            storage.multiVolumes = true;
            storage.compressedVolumes = compress;
            EditorUtility.SetDirty(storage);
        }

        var fgo = GameObject.Find("BakeryMultiVolume");
        if (fgo == null)
        {
            fgo = new GameObject();
            fgo.name = "BakeryMultiVolume";
        }
        var mv = fgo.GetComponent<BakeryMultiVolume>();
        if (mv == null)
        {
            mv = fgo.AddComponent<BakeryMultiVolume>();
        }
        mv.boundsMin = uniqueBoundsMin;
        mv.boundsMax = uniqueBoundsMax;
        
        mv.bakedTexture0 = atlasTexture0;
        mv.bakedTexture1 = atlasTexture1;
        mv.bakedTexture2 = atlasTexture2;
        mv.bakedTexture3 = atlasTexture3;
        mv.bakedMask = atlasMask;
        mv.volumes = texs.ToArray();
        mv.RefreshFull();
        EditorUtility.SetDirty(mv);

        mv.SetGlobalParams();
    }

    static int DivideCeil(int a, int b)
    {
        return (a + b - 1) / b;;
    }

    /*void ConvertToStreamableMultivolume(List<Texture3D> texs, string prefix)
    {
        int srcIdx, dstIdx;
        int blockIdx = 1;
        var dstPixels = new Color[blockSizeX * blockSizeY * blockSizeZ];

        for(int i=0; i<texs.Count; i++)
        {
            var tex = texs[i];
            int srcSizeX = tex.width;
            int srcSizeY = tex.height;
            int srcSizeZ = tex.depth;
            int numBlocksX = DivideCeil(srcSizeX, blockSizeX);
            int numBlocksY = DivideCeil(srcSizeY, blockSizeY);
            int numBlocksZ = DivideCeil(srcSizeZ, blockSizeZ);

            var srcPixels = tex.GetPixels();

            for(int zb=0; zb<numBlocksZ; zb++)
            {
                for(int yb=0; yb<numBlocksY; yb++)
                {
                    for(int xb=0; xb<numBlocksX; xb++)
                    {

                        dstIdx = 0;
                        int srcXStart = xb*blockSizeX;
                        int srcYStart = yb*blockSizeY;
                        int srcZStart = zb*blockSizeZ;

                        for(int sz=0; sz<blockSizeZ; sz++)
                        {
                            int srcZ = srcZStart + sz;
                            if (srcZ >= srcSizeZ) srcZ = srcSizeZ-1;
                            srcZ *= srcSizeX * srcSizeY;
                            for(int sy=0; sy<blockSizeY; sy++)
                            {
                                int srcY = srcYStart + sy;
                                if (srcY >= srcSizeY) srcY = srcSizeY-1;
                                srcY *= srcSizeX;
                                int srcZY = srcZ + srcY;
                                for(int sx=0; sx<blockSizeX; sx++)
                                {
                                    int srcX = srcXStart + sx;
                                    if (srcX >= srcSizeX) srcX = srcSizeX-1;
                                    dstPixels[dstIdx + sx] = srcPixels[srcZY + srcX];
                                }
                                dstIdx += blockSizeX;
                            }
                        }

                        var blockTex = new Texture3D(blockSizeX, blockSizeY, blockSizeZ, tex.format, false);
                        blockTex.wrapMode = TextureWrapMode.Clamp;
                        blockTex.filterMode = FilterMode.Bilinear;
                        blockTex.SetPixels(dstPixels);
                        blockTex.Apply(false);

                        AssetDatabase.CreateAsset(blockTex, "Assets/MultivolumeBlock"+prefix+blockIdx+".asset");
                        blockIdx++;

                    }
                }
            }
        }

        AssetDatabase.SaveAssets();

        var fgo = GameObject.Find("BakeryMultiVolume");
        if (fgo == null)
        {
            fgo = new GameObject();
            fgo.name = "BakeryMultiVolume";
        }
        var mv = fgo.GetComponent<BakeryMultiVolume>();
        if (mv == null)
        {
            mv = fgo.AddComponent<BakeryMultiVolume>();
        }

        mv.isStreamable = true;
        mv.streamingBlockSizeX = blockSizeX;
        mv.streamingBlockSizeY = blockSizeY;
        mv.streamingBlockSizeZ = blockSizeZ;

        mv.bakedTexture0 = null;
        mv.bakedTexture1 = null;
        mv.bakedTexture2 = null;
        mv.bakedTexture3 = null;
        mv.bakedMask = null;
        mv.volumes = null;
        mv.RefreshFull();
        EditorUtility.SetDirty(mv);

        /*mv.boundsMin = uniqueBoundsMin;
        mv.boundsMax = uniqueBoundsMax;

        mv.SetGlobalParams();*/
    //}

    void OnGUI()
    {
        //GUILayout.Space(10);
        //blockSizeX = EditorGUILayout.IntField("Block Size X", blockSizeX);
        //blockSizeY = EditorGUILayout.IntField("Block Size Y", blockSizeY);
        //blockSizeZ = EditorGUILayout.IntField("Block Size Z", blockSizeZ);

        EditorGUILayout.BeginVertical(EditorStyles.inspectorFullWidthMargins);

        GUILayout.Space(10);
#if UNITY_2020_1_OR_NEWER
#else
        GUI.enabled = false;
#endif
        //EditorGUI.indentLevel++;
        compress = EditorGUILayout.ToggleLeft(" Compress", compress);
        //EditorGUI.indentLevel--;
        GUILayout.Space(20);

        GUI.enabled = true;

        if (GUILayout.Button("Convert currently loaded volumes to Multivolume", GUILayout.Height(24)))
        {
            ConvertToMultivolume();
        }

        EditorGUILayout.EndVertical();

        /*if (GUILayout.Button("Convert currently loaded volumes to Streamable Multivolume", GUILayout.Height(24)))
        {
            var vols = FindObjectsOfType<BakeryVolume>();
            var volsL0 = new List<Texture3D>();
            var volsL1x = new List<Texture3D>();
            var volsL1y = new List<Texture3D>();
            //var volsL1z = new List<Texture3D>();
            var volsMask = new List<Texture3D>();
            for(int i=0; i<vols.Length; i++)
            {
                if (vols[i].bakedTexture0 != null)
                {
                    volsL0.Add(vols[i].bakedTexture0);
                    volsL1x.Add(vols[i].bakedTexture1);
                    volsL1y.Add(vols[i].bakedTexture2);
                    //volsL1z.Add(vols[i].bakedTexture3);
                }
                if (vols[i].bakedMask != null)
                {
                    volsMask.Add(vols[i].bakedMask); // TODO: take masked/non-masked combo into account (indexing)
                }
            }
            ConvertToStreamableMultivolume(volsL0, "L0");
            ConvertToStreamableMultivolume(volsL1x, "L1x");
            ConvertToStreamableMultivolume(volsL1y, "L1y");
            //ConvertToStreamableMultivolume(volsL1z, "L1z"); // TODO: only exists when compressed
            ConvertToStreamableMultivolume(volsMask, "Mask");
        }*/

        /*if (GUILayout.Button("Revert Multivolume to separate volumes", GUILayout.Height(24)))
        {
        }*/
    }
}

