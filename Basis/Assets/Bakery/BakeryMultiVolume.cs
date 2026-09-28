using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using System.Runtime.InteropServices;
#if UNITY_EDITOR
using UnityEditor;
#endif

[ExecuteInEditMode]
public class BakeryMultiVolume : MonoBehaviour
{
    public bool dynamicUpdate = false;

    public int maxActiveVolumes = 64;

    [Space(10)] // 10 pixels of spacing here.

    /*public bool isStreamable = false;
    public int streamingAtlasSizeX = 256;
    public int streamingAtlasSizeY = 64;
    public int streamingAtlasSizeZ = 256;

    public int streamingBlockSizeX = 32;
    public int streamingBlockSizeY = 32;
    public int streamingBlockSizeZ = 32;*/

    public Texture3D bakedTexture0;
    public Texture3D bakedTexture1;
    public Texture3D bakedTexture2;
    public Texture3D bakedTexture3;
    public Texture3D bakedMask;

    public BakeryVolume[] volumes;
    Transform[] volumesT;

    public Vector3[] boundsMin;
    public Vector3[] boundsMax;

    /*[System.Serializable]
    public struct SubVolumeDesc
    {
        public int volumeIdx;
        public float scaleX, offsetX;
        public float scaleY, offsetY;
        public float scaleZ, offsetZ;
    };

    public SubVolumeDesc[] subVolumes;*/

    float gridMinX;
    float gridMinY = -10;
    float gridMinZ;
    float gridMaxX;
    float gridMaxY = 10;
    float gridMaxZ;

    int[] implicitGridX;
    int[] implicitGridZ;
    Vector4[] implicitGridXv;
    Vector4[] implicitGridZv;
    Vector4[] uvwBounds;
    Vector4[] bounds;

    int numVolumes;
    int[] isVolumeUpToDate;

    //ushort[] streamingBlockMap;

    struct CachedTransform
    {
        public Vector4 wminmax;
        public Vector3 min, invSize, max;
        public Vector2 ry;
    };

    int pMultiVolume0;
    int pMultiVolume1;
    int pMultiVolume2;
    int pMultiVolume3;
    int pMultiVolumeMask;
    int pMultiVolumeCount;
    int pMultiVolumeBounds;
    int pMultiVolumeUVWBounds;
    int pMultiVolumeGridBounds;
    int pMultiVolumeGridX;
    int pMultiVolumeGridZ;
    bool init = false;

    const int maxGridDimension = 16;

    const int gridWidth = maxGridDimension;
    const int gridHeight = maxGridDimension;

    CachedTransform[] cached;
    CachedTransform vdata;

    FloatInt[] fi;

    public void OnEnable()
    {
        SetGlobalParams();
    }

    [StructLayout(LayoutKind.Explicit)]
    struct FloatInt
    {
        [FieldOffset(0)]
        public float f;

        [FieldOffset(0)]
        public int i;
    };

    public int GetVolumeIndex(BakeryVolume vol)
    {
        return System.Array.IndexOf(volumes, vol);
    }

    public void MarkVolumeDirty(int volumeIndex)
    {
        isVolumeUpToDate[volumeIndex>>5] &= ~(1 << (volumeIndex&31));
    }

    public void RefreshFull()
    {
        init = false;
    }

    /*Texture3D AllocateStreamingTexture(TextureFormat format, string nm)
    {
        var tex = new Texture3D(streamingAtlasSizeX, streamingAtlasSizeY, streamingAtlasSizeZ, format, false);
        tex.wrapMode = TextureWrapMode.Clamp;
        tex.filterMode = FilterMode.Bilinear;
        tex.name = nm;
        return tex;
    }*/

	public void SetGlobalParams()
    {
        if (volumes == null) return;
        if (init && cached == null) init = false;
        if (!init)
        {
            pMultiVolume0 = Shader.PropertyToID("_MultiVolume0");
            pMultiVolume1 = Shader.PropertyToID("_MultiVolume1");
            pMultiVolume2 = Shader.PropertyToID("_MultiVolume2");
            pMultiVolume3 = Shader.PropertyToID("_MultiVolume3");
            pMultiVolumeMask = Shader.PropertyToID("_MultiVolumeMask");
            pMultiVolumeCount = Shader.PropertyToID("_MultiVolumeCount");
            pMultiVolumeBounds = Shader.PropertyToID("_MultiVolumeBounds");
            pMultiVolumeUVWBounds = Shader.PropertyToID("_MultiVolumeUVWBounds");
            pMultiVolumeGridBounds = Shader.PropertyToID("_MultiVolumeGridBounds");
            pMultiVolumeGridX = Shader.PropertyToID("_MultiVolumeGridX");
            pMultiVolumeGridZ = Shader.PropertyToID("_MultiVolumeGridZ");

            bounds = new Vector4[maxActiveVolumes * 2];
            isVolumeUpToDate = new int[maxActiveVolumes / 32 + 1];

            uvwBounds = new Vector4[maxActiveVolumes * 2];

            /*if (isStreamable)
            {
                int numBlocks = (streamingAtlasSizeX/streamingBlockSizeX) * (streamingAtlasSizeY/streamingBlockSizeY) * (streamingAtlasSizeZ/streamingBlockSizeZ);
                numVolumes = Math.Min(numBlocks, maxActiveVolumes);

                if (bakedTexture0 == null)
                {
                    bakedTexture0 = AllocateStreamingTexture(TextureFormat.RGBAHalf, "TempStreamingTex0");
                    bakedTexture1 = AllocateStreamingTexture(TextureFormat.RGBAHalf, "TempStreamingTex1");
                    bakedTexture2 = AllocateStreamingTexture(TextureFormat.RGBAHalf, "TempStreamingTex2");
                    bakedMask = AllocateStreamingTexture(TextureFormat.ARGB32, "TempStreamingMask");
                    streamingBlockMap = new ushort[numBlocks];
                }
            }
            else*/
            {
                numVolumes = volumes.Length;
                volumesT = new Transform[numVolumes];

                for(int i=0; i<numVolumes; i++)
                {
                    var bmin = boundsMin[i];
                    var bsize = boundsMax[i] - boundsMin[i];
                    uvwBounds[i*2]   = new Vector4(bmin.x, bmin.y, bmin.z, 1.0f);
                    uvwBounds[i*2+1] = new Vector4(bsize.x, bsize.y, bsize.z, 1.0f);

                    volumesT[i] = volumes[i].transform;
                }
            }

            cached = new CachedTransform[numVolumes];
            vdata = new CachedTransform();

            implicitGridX = new int[gridWidth];
            implicitGridZ = new int[gridHeight];

            implicitGridXv = new Vector4[gridWidth/4];
            implicitGridZv = new Vector4[gridHeight/4];
            fi = new FloatInt[4];

            init = true;
        }

        gridMinX = float.MaxValue;
        gridMinZ = float.MaxValue;

        gridMaxX = -float.MaxValue;
        gridMaxZ = -float.MaxValue;
        
        BakeryVolume volume;

        for(int i=0; i<numVolumes; i++)
        {
            if ((isVolumeUpToDate[i>>5] & (1<<(i&31))) == 0)
            {
                /*if (isStreamable)
                {
                    int volumeIdx = subVolumes[i].volumeIdx;
                    volume = volumes[volumeIdx];
                }
                else*/
                {
                    volume = volumes[i];
                }

                vdata.min = volume.GetMin();
                vdata.invSize = volume.GetInvSize();
                vdata.max = volume.GetMax();
                vdata.ry = volume.GetRotationY();
                vdata.wminmax = volume.GetWorldXZMinMax();

                cached[i] = vdata;
                isVolumeUpToDate[i>>5] |= 1 << (i&31);
            }
            else
            {
                vdata = cached[i];
            }

            float minx = vdata.wminmax.x;
            float minz = vdata.wminmax.y;
            float maxx = vdata.wminmax.z;
            float maxz = vdata.wminmax.w;

        	if (minx < gridMinX) gridMinX = minx;
        	if (minz < gridMinZ) gridMinZ = minz;

        	if (maxx > gridMaxX) gridMaxX = maxx;
        	if (maxz > gridMaxZ) gridMaxZ = maxz;

        	bounds[i*2]   = new Vector4(-vdata.min.x, -vdata.min.y, -vdata.min.z, vdata.ry.x);
        	bounds[i*2+1] = new Vector4(vdata.invSize.x, vdata.invSize.y, vdata.invSize.z, vdata.ry.y);
        }

        float gridWidthInvF = gridWidth/(gridMaxX - gridMinX);
        float gridHeightInvF = gridHeight/(gridMaxZ - gridMinZ);

        for(int x=0; x<gridWidth; x++) implicitGridX[x] = 0;
        for(int z=0; z<gridHeight; z++) implicitGridZ[z] = 0;

        //float gridXToWposX = (gridMaxX - gridMinX) / (float)gridWidth;
        //float gridZToWposZ = (gridMaxZ - gridMinZ) / (float)gridHeight;

        //float gridStepX = gridXToWposX;
        //float gridStepZ = gridZToWposZ;

        for(int i=0; i<numVolumes; i++)
        {
            vdata = cached[i];

            float minx = vdata.wminmax.x;
            float minz = vdata.wminmax.y;
            float maxx = vdata.wminmax.z;
            float maxz = vdata.wminmax.w;

        	int minCellX = (int)( (minx - gridMinX) * gridWidthInvF );
        	int maxCellX = (int)( (maxx - gridMinX) * gridWidthInvF );

        	int minCellZ = (int)( (minz - gridMinZ) * gridHeightInvF );
        	int maxCellZ = (int)( (maxz - gridMinZ) * gridHeightInvF );

        	if (minCellX >= gridWidth) minCellX = gridWidth-1;
        	if (maxCellX >= gridWidth) maxCellX = gridWidth-1;

        	if (minCellZ >= gridHeight) minCellZ = gridHeight-1;
        	if (maxCellZ >= gridHeight) maxCellZ = gridHeight-1;

        	//Debug.LogError(volumes[i].name+" "+minCellX+" "+maxCellX+" "+minCellZ+" "+maxCellZ+" "+bmax.z+" "+gridMaxZ);

            //if (!volumes[i].rotateAroundY)
            //{
                for(int x=minCellX; x<=maxCellX; x++) implicitGridX[x] |= 1 << i;
                for(int z=minCellZ; z<=maxCellZ; z++) implicitGridZ[z] |= 1 << i;
            //}
            /*else
            {               
                float cellZ = (minCellZ + 0.5f) * gridZToWposZ + gridMinZ;
                float startCellX = (minCellX + 0.5f) * gridXToWposX + gridMinX;

                var boundAddRx = bounds[i*2];
                var boundMulRy = bounds[i*2+1];

                for(int z=minCellZ; z<=maxCellZ; z++)
                {
                    float cellX = startCellX;
                    for(int x=minCellX; x<=maxCellX; x++)
                    {
                        Debug.LogError(minCellX+" "+gridMinX+" "+gridMaxX+" "+cellX);

                        float lpU = cellX + boundAddRx.x;
                        float lpV = cellZ + boundAddRx.z;

                        float s = boundAddRx.w;
                        float c = boundMulRy.w;
                        //float lpUr = lpU*c + lpV*s;
                        //float lpVr = lpU*-s + lpV*c;
                        float lpUr = lpU*c + lpV*-s;
                        float lpVr = lpU*s + lpV*c;

                        lpU = lpUr * boundMulRy.x;
                        lpV = lpVr * boundMulRy.z;

                        if (lpU > 0 && lpU < 1 && lpV > 0 && lpV < 1)
                        {
                            implicitGridX[x] |= 1 << i;
                            implicitGridZ[z] |= 1 << i;
                        }

                        cellX += gridStepX;
                    }
                    cellZ += gridStepZ;
                }
            }*/
        }

        for(int i=0; i<gridWidth; i+=4)
        {
            for(int j=0; j<4; j++) fi[j].i = implicitGridX[i+j];
        	implicitGridXv[i/4] = new Vector4(fi[0].f, fi[1].f, fi[2].f, fi[3].f);
        }
        for(int i=0; i<gridHeight; i+=4)
        {
            for(int j=0; j<4; j++) fi[j].i = implicitGridZ[i+j];
            implicitGridZv[i/4] = new Vector4(fi[0].f, fi[1].f, fi[2].f, fi[3].f);
        }

        Shader.SetGlobalTexture(pMultiVolume0, bakedTexture0);
        Shader.SetGlobalTexture(pMultiVolume1, bakedTexture1);
        Shader.SetGlobalTexture(pMultiVolume2, bakedTexture2);
        if (bakedTexture3 != null) Shader.SetGlobalTexture(pMultiVolume3, bakedTexture3);
        if (bakedMask != null) Shader.SetGlobalTexture(pMultiVolumeMask, bakedMask);

        Shader.SetGlobalFloat(pMultiVolumeCount, numVolumes);
        Shader.SetGlobalVectorArray(pMultiVolumeBounds, bounds);
		Shader.SetGlobalVectorArray(pMultiVolumeUVWBounds, uvwBounds);

        float scx = 1.0f/(gridMaxX-gridMinX);
        float scz = 1.0f/(gridMaxZ-gridMinZ);
        Shader.SetGlobalVector(pMultiVolumeGridBounds, new Vector4(scx, scz, -gridMinX*scx, -gridMinZ*scz));
		Shader.SetGlobalVectorArray(pMultiVolumeGridX, implicitGridXv);
		Shader.SetGlobalVectorArray(pMultiVolumeGridZ, implicitGridZv);
    }

    void Update()
    {
        if (!dynamicUpdate) return;
        bool anyMovement = false;
        for(int i=0; i<numVolumes; i++)
        {
            if (volumesT[i].hasChanged)
            {
                // must be patched or bounds get stale
                var b = volumes[i].bounds;
                b.center = volumesT[i].position;
                volumes[i].bounds = b;

                MarkVolumeDirty(i);
                anyMovement = true;
            }
        }
        if (anyMovement) SetGlobalParams();
    }

    void OnDrawGizmosSelected()
    {
    	Gizmos.color = Color.white;
    	Gizmos.DrawWireCube(new Vector3( (gridMinX+gridMaxX)*0.5f, (gridMinY+gridMaxY)*0.5f, (gridMinZ+gridMaxZ)*0.5f ),
    						new Vector3( gridMaxX-gridMinX, gridMaxY-gridMinY, gridMaxZ-gridMinZ ));
    }

}

