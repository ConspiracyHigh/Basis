using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;

public class PoiWeldMeshHelper
{
    //configurable parameters
    private Material mWeldMeshMaterial = null;
    
    //output
    private int mTriangleCount;
    private ComputeBuffer mVertexBuffer = null;
    private Bounds mWeldedMeshBounds;
    
    //internal
    private CommandBuffer mWeldMeshCommandBuffer = null;
    private ComputeBuffer mVertexCounter = null;
    private RenderTexture mDummyRenderTarget = null;
    private bool mCpuMeshReady = false;

    private bool mAreResourcesReady = false;

    ~PoiWeldMeshHelper()
    {
        Cleanup();
    }

    public bool Initialize(Shader weldMeshShader, Vector3 rootPosition, Renderer[] sourceRenderers, Mesh[] sourceMeshes, bool[][] submeshToggles, float[] expansionsDistances = null, Texture[] expansionTextures = null)
    {
        //cleanup the old buffers
        Cleanup();

        if (weldMeshShader == null || sourceRenderers.Length == 0 || sourceRenderers.Length != sourceMeshes.Length || sourceRenderers.Length != submeshToggles.Length)
        {
            return false;
        }

        //count the number of indicies and triangles in all the meshes we are rendering
        int numIndicies = 0;
        for(int meshIndex = 0; meshIndex < sourceMeshes.Length; meshIndex++)
        {
            Mesh currentMesh = sourceMeshes[meshIndex];

            if (currentMesh != null)
            {
                for (int submeshIndex = 0; submeshIndex < currentMesh.subMeshCount; submeshIndex++)
                {
                    if (submeshIndex < submeshToggles[meshIndex].Length && submeshToggles[meshIndex][submeshIndex])
                    {
                        numIndicies += (int)currentMesh.GetIndexCount(submeshIndex);
                    }
                }
            }
        }

        //don't bother if there isn't at least one triangle
        if(numIndicies < 3)
        {
            return false;
        }

        mTriangleCount = numIndicies / 3;
        mWeldedMeshBounds = new Bounds(Vector3.zero, Vector3.zero);

        // Extract it on the CPU so the bake does not depend on graphics-stage UAV writes.
        if (expansionsDistances == null && expansionTextures == null)
        {
            return InitializeCpuMesh(rootPosition, sourceRenderers, sourceMeshes, submeshToggles, numIndicies);
        }

        //setup the material and render resources
        mWeldMeshMaterial = new Material(weldMeshShader);

        mVertexBuffer = new ComputeBuffer(numIndicies, sizeof(float) * 3);
        mVertexCounter = new ComputeBuffer(1, sizeof(uint));

        mDummyRenderTarget = new RenderTexture(1, 1, 0, RenderTextureFormat.R8);
        mDummyRenderTarget.Create();

        mWeldMeshCommandBuffer = new CommandBuffer();
        mWeldMeshCommandBuffer.Clear();
        mWeldMeshCommandBuffer.SetRenderTarget(mDummyRenderTarget);
        mWeldMeshCommandBuffer.SetRandomWriteTarget(1, mVertexBuffer);
        mWeldMeshCommandBuffer.SetRandomWriteTarget(2, mVertexCounter);
        mWeldMeshCommandBuffer.SetGlobalVector("_BakeMeshRootPosition", rootPosition);

        //render every renderer
        for (int rendererIndex = 0; rendererIndex < sourceRenderers.Length; rendererIndex++)
        {
            if (sourceRenderers[rendererIndex] != null && sourceMeshes[rendererIndex] != null)
            {
                //expand this mesh if there was an expansion value provided
                if(expansionsDistances != null && rendererIndex < expansionsDistances.Length)
                {
                    mWeldMeshCommandBuffer.SetGlobalFloat("_MeshExpansion", expansionsDistances[rendererIndex]);
                }
                else
                {
                    mWeldMeshCommandBuffer.SetGlobalFloat("_MeshExpansion", 0.0f);
                }

                //modify the expansion by a texture heightfield if one was provided
                if (expansionTextures != null && rendererIndex < expansionTextures.Length && expansionTextures[rendererIndex] != null)
                {
                    mWeldMeshCommandBuffer.SetGlobalTexture("_MeshExpansionTexture", expansionTextures[rendererIndex]);
                }
                else
                {
                    mWeldMeshCommandBuffer.SetGlobalTexture("_MeshExpansionTexture", Texture2D.whiteTexture);
                }

                //draw every enabled submesh
                for (int submeshIndex = 0; submeshIndex < sourceMeshes[rendererIndex].subMeshCount; submeshIndex++)
                {
                    if (submeshIndex < submeshToggles[rendererIndex].Length && submeshToggles[rendererIndex][submeshIndex])
                    {
                        mWeldMeshCommandBuffer.DrawRenderer(sourceRenderers[rendererIndex], mWeldMeshMaterial, submeshIndex);
                    }
                }
            }
        }

        mWeldMeshCommandBuffer.ClearRandomWriteTargets();

        mAreResourcesReady = true;
        return true;
    }

    public bool DoWork()
    {
        if(!mAreResourcesReady)
        {
            return false;
        }

        if (mCpuMeshReady)
        {
            return true;
        }

        //initilize the vertex counter to 0
        uint[] zeroArray = { 0 };
        mVertexCounter.SetData(zeroArray, 0, 0, 1);

        //do the mesh welding
        Graphics.ExecuteCommandBuffer(mWeldMeshCommandBuffer);

        //get the verticies
        Vector3[] vertices = new Vector3[mVertexBuffer.count];
        mVertexBuffer.GetData(vertices, 0, 0, mVertexBuffer.count);

        mWeldedMeshBounds = ComputeWeldedBounds(vertices, vertices.Length);

        return true;
    }

    //Shared AABB computation for both weld paths.
    private static Bounds ComputeWeldedBounds(IList<Vector3> positions, int count)
    {
        float largeNumber = 10000000.0f;
        Vector3 minCorner = new Vector3(largeNumber, largeNumber, largeNumber);
        Vector3 maxCorner = new Vector3(-largeNumber, -largeNumber, -largeNumber);

        for (int i = 0; i < count; i++)
        {
            Vector3 position = positions[i];
            minCorner = new Vector3(Mathf.Min(position.x, minCorner.x), Mathf.Min(position.y, minCorner.y), Mathf.Min(position.z, minCorner.z));
            maxCorner = new Vector3(Mathf.Max(position.x, maxCorner.x), Mathf.Max(position.y, maxCorner.y), Mathf.Max(position.z, maxCorner.z));
        }

        return new Bounds((minCorner + maxCorner) / 2.0f, maxCorner - minCorner);
    }

    private bool InitializeCpuMesh(Vector3 rootPosition, Renderer[] sourceRenderers, Mesh[] sourceMeshes, bool[][] submeshToggles, int expectedIndexCount)
    {
        List<Vector3> weldedVertices = new List<Vector3>(expectedIndexCount);

        for (int rendererIndex = 0; rendererIndex < sourceRenderers.Length; rendererIndex++)
        {
            Renderer sourceRenderer = sourceRenderers[rendererIndex];
            Mesh sourceMesh = sourceMeshes[rendererIndex];
            Mesh bakedMesh = null;

            if (sourceRenderer == null || sourceMesh == null)
                continue;

            if (sourceRenderer is SkinnedMeshRenderer skinnedRenderer)
            {
                bakedMesh = new Mesh { name = sourceMesh.name + "_PoiBakeTemp" };
                skinnedRenderer.BakeMesh(bakedMesh);
                sourceMesh = bakedMesh;
            }

            Vector3[] vertices = sourceMesh.vertices;
            Matrix4x4 localToWorld = sourceRenderer.localToWorldMatrix;

            for (int submeshIndex = 0; submeshIndex < sourceMesh.subMeshCount; submeshIndex++)
            {
                if (submeshIndex >= submeshToggles[rendererIndex].Length || !submeshToggles[rendererIndex][submeshIndex])
                    continue;

                int[] indices = sourceMesh.GetIndices(submeshIndex, true);
                for (int index = 0; index < indices.Length; index++)
                {
                    int vertexIndex = indices[index];
                    if ((uint)vertexIndex >= (uint)vertices.Length)
                        continue;

                    Vector3 bakePosition = localToWorld.MultiplyPoint3x4(vertices[vertexIndex]) - rootPosition;
                    weldedVertices.Add(bakePosition);
                }
            }

            if (bakedMesh != null)
            {
                if (Application.isPlaying)
                    Object.Destroy(bakedMesh);
                else
                    Object.DestroyImmediate(bakedMesh);
            }
        }

        if (weldedVertices.Count < 3)
            return false;

        mWeldedMeshBounds = ComputeWeldedBounds(weldedVertices, weldedVertices.Count);

        mTriangleCount = weldedVertices.Count / 3;
        mVertexBuffer = new ComputeBuffer(weldedVertices.Count, sizeof(float) * 3);
        mVertexBuffer.SetData(weldedVertices);
        mCpuMeshReady = true;
        mAreResourcesReady = true;
        return true;
    }

    public void Cleanup()
    {
        if (mVertexBuffer != null)
        {
            mVertexBuffer.Release();
        }

        if (mVertexCounter != null)
        {
            mVertexCounter.Release();
        }

        if (mDummyRenderTarget != null)
        {
            mDummyRenderTarget.Release();
            mDummyRenderTarget = null;
        }

        mWeldMeshMaterial = null;

        mCpuMeshReady = false;
        mAreResourcesReady = false;
    }

    //Getters

    public int GetTriangleCount()
    {
        return mTriangleCount;
    }
    
    public ComputeBuffer GetVertexBuffer()
    {
        return mVertexBuffer;
    }

    public Bounds GetWeldedMeshBounds()
    {
        return mWeldedMeshBounds;
    }
}
