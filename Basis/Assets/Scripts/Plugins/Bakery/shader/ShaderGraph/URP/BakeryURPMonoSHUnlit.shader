Shader "Custom/BakeryURPMonoSHUnlit"
{
    Properties
    {
        _Glossiness("Smoothness", Range(0.0, 1.0)) = 0.5
        [Gamma] _Metallic("Metallic", Range(0.0, 1.0)) = 0.0
        [MainColor] _BaseColor("Base Color", Color) = (1, 1, 1, 1)
        [MainTexture] _MainTex ("Base Map", 2D) = "white"
         _BumpMap ("Normal Map", 2D) = "bump"
    }

    SubShader
    {
        Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalPipeline" }

        Pass
        {
            HLSLPROGRAM

            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fwdbase

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/EntityLighting.hlsl"
            #include "BakeryDecodeLightmap.hlsl"

            struct Attributes
            {
                float4 Position : POSITION;
                float2 TexCoords0  : TEXCOORD0;
                float2 TexCoords1 : TEXCOORD1;
                float4 Tangent : TANGENT0;
                float3 Normal : NORMAL0;
            };

            struct Varyings
            {
                float4 Position : SV_POSITION;
                float2 TexCoords0  : TEXCOORD0;
                float2 TexCoords1 : TEXCOORD1;
                float3 WorldPos : TEXCOORD2;
                half4 Tangent : TEXCOORD3;
                half3 Normal : TEXCOORD4;
            };

            TEXTURE2D(_MainTex);
            SAMPLER(sampler_MainTex);

            TEXTURE2D(_BumpMap);

            CBUFFER_START(UnityPerMaterial)
                half4 _BaseColor;
                float4 _MainTex_ST;
                half _Glossiness, _Metallic;
            CBUFFER_END

            Varyings vert(Attributes IN)
            {
                Varyings OUT;
                float4 worldPos = mul(unity_ObjectToWorld, IN.Position);
                worldPos.w = 1;
                OUT.WorldPos = worldPos.xyz;
                OUT.Position = mul(UNITY_MATRIX_VP, worldPos);
                OUT.TexCoords0  = TRANSFORM_TEX(IN.TexCoords0, _MainTex);
                OUT.TexCoords1 = IN.TexCoords1 * unity_LightmapST.xy + unity_LightmapST.zw;
                OUT.Normal = normalize(mul((float3x3)unity_ObjectToWorld, IN.Normal).xyz);
                OUT.Tangent.xyz = normalize(mul((float3x3)unity_ObjectToWorld, IN.Tangent.xyz).xyz);
                OUT.Tangent.w = IN.Tangent.w;
                return OUT;
            }

            half4 frag(Varyings IN) : SV_Target
            {
                half4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, IN.TexCoords0) * _BaseColor;
                half4 normalMap = SAMPLE_TEXTURE2D(_BumpMap, sampler_MainTex, IN.TexCoords0);

                half3 binormal = cross(IN.Normal, IN.Tangent.xyz) * IN.Tangent.w;
                normalMap.xyz = UnpackNormal(normalMap);
                half3 normalWorld = normalize(IN.Tangent.xyz * normalMap.x + binormal * normalMap.y + IN.Normal * normalMap.z);
               
                // Diffuse only
                //float3 sh;
                //BakeryMonoSH_float(normalWorld, IN.TexCoords1, sh);
                //color.rgb *= sh;

                // Specular version
                float3 diffuseSH, specularSH;
                half3 viewDir = normalize(_WorldSpaceCameraPos - IN.WorldPos);
                half smoothness = color.a * _Glossiness;
                half metalness = _Metallic;
                BakerySpecMonoSHFull_float(normalWorld, IN.TexCoords1, viewDir, smoothness, color.rgb, metalness, diffuseSH, specularSH);

                return float4(diffuseSH * color + specularSH, 1);
            }
            ENDHLSL
        }
    }
}
