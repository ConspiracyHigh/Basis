Shader "Hidden/Locked/.poiyomi/Poiyomi Pro URP World/28ef6b50b1731da86e45da209fe8b1fd"
{
	Properties
	{
		[HideInInspector] shader_master_label ("<color=#E75898ff>Poiyomi 10.0.20</color>", Float) = 0
		[HideInInspector] shader_is_using_thry_editor ("", Float) = 0
		[HideInInspector] shader_locale ("0db0b86376c3dca4b9a6828ef8615fe0", Float) = 0
		[HideInInspector] footer_website ("{texture:{name:icon-poilogo,height:24},action:{type:URL,data:https://www.poiyomi.com},hover:WEBSITE}", Float) = 0
		[HideInInspector] footer_discord ("{texture:{name:icon-discord,height:24},action:{type:URL,data:https://discord.gg/Ays52PY},hover:DISCORD}", Float) = 0
		[HideInInspector] footer_patreon ("{texture:{name:icon-patreon-new,height:24},action:{type:URL,data:https://www.patreon.com/poiyomi},hover:PATREON}", Float) = 0
		[HideInInspector] footer_youtube ("{texture:{name:icon-youtube,height:24},action:{type:URL,data:https://www.youtube.com/poiyomi},hover:YOUTUBE}", Float) = 0
		[HideInInspector] footer_github ("{texture:{name:icon-github,height:24},action:{type:URL,data:https://github.com/poiyomi},hover:GITHUB}", Float) = 0
		[HideInInspector] footer_bluesky ("{texture:{name:icon-bluesky,height:24},action:{type:URL,data:https://bsky.app/profile/poiyomi.com},hover:BLUESKY}", Float) = 0
		[HideInInspector] footer_twitter ("{texture:{name:icon-twitter,height:24},action:{type:URL,data:https://x.com/poiyomi},hover:X}", Float) = 0
		[Header(POIYOMI SHADER UI FAILED TO LOAD)]
		[Header(.    This is caused by scripts failing to compile. It can be fixed.)]
		[Header(.          The inspector will look broken and will not work properly until fixed.)]
		[Header(.    Please check your console for script errors.)]
		[Header(.          You can filter by errors in the console window.)]
		[Header(.          Often the topmost error points to the erroring script.)]
		[Space(30)][Header(Common Error Causes)]
		[Header(.    Forgot to install Poiyomi Shaders)]
		[Header(.          Make sure you follow the instructions on our Documentation.)]
		[Header(.    Installing multiple Poiyomi Shader packages)]
		[Header(.          Make sure to delete the Poiyomi shader folder before you update Poiyomi.)]
		[Header(.          If a package came with Poiyomi this is bad practice and can cause issues.)]
		[Header(.          Delete the package and import it without any Poiyomi components.)]
		[Header(.    Bad VRCSDK installation (e.g. Both VCC and Standalone))]
		[Header(.          Delete the VRCSDK Folder in Assets if you are using the VCC.)]
		[Header(.          Avoid using third party SDKs. They can cause incompatibility.)]
		[Header(.    Script Errors in other scripts)]
		[Header(.          Outdated tools or prefabs can cause this.)]
		[Header(.          Update things that are throwing errors or move them outside the project.)]
		[Space(30)][Header(Visit Our Discord to Ask For Help)]
		[Space(5)]_ShaderUIWarning0 (" → discord.gg/poiyomi ←    We can help you get it fixed!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         --{condition_showS:(0==1)}", Int) = -0
		[Space(1400)][Header(POIYOMI SHADER UI FAILED TO LOAD)]
		_ShaderUIWarning1 ("Please scroll up for more information!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     --{condition_showS:(0==1)}", Int) = -0
		[HideInInspector] _ForgotToLockMaterial (";;YOU_FORGOT_TO_LOCK_THIS_MATERIAL;", Int) = 1
		[ThryShaderOptimizerLockButton] _ShaderOptimizerEnabled ("", Int) = 1
		[HideInInspector] GeometryShader_Enabled("GEOMETRY SHADER ENABLED", Float) = 1
		[HideInInspector] Tessellation_Enabled("TESSELLATION ENABLED", Float) = 1
		[DoNotAnimate][ThryWideEnum(Opaque, 0, Cutout, 1, TransClipping, 9, Fade, 2, Transparent, 3, Additive, 4, Soft Additive, 5, Multiplicative, 6, 2x Multiplicative, 7)]_Mode("Rendering Preset--{on_value_actions:[
		{value:0,actions:[{type:SET_PROPERTY,data:render_queue=2000},{type:SET_PROPERTY,data:_AlphaForceOpaque=1}, {type:SET_PROPERTY,data:render_type=Opaque},            {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=1}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=1}, {type:SET_PROPERTY,data:_OutlineDstBlend=0},  {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=0}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:1,actions:[{type:SET_PROPERTY,data:render_queue=2450},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=.5}, {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=1}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=1}, {type:SET_PROPERTY,data:_OutlineDstBlend=0},  {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:9,actions:[{type:SET_PROPERTY,data:render_queue=2460},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0.01},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=5}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=5}, {type:SET_PROPERTY,data:_OutlineDstBlend=10}, {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:2,actions:[{type:SET_PROPERTY,data:render_queue=3000},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0.002},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=5}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=5}, {type:SET_PROPERTY,data:_OutlineDstBlend=10}, {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:3,actions:[{type:SET_PROPERTY,data:render_queue=3000},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=1}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=1}, {type:SET_PROPERTY,data:_OutlineSrcBlend=1}, {type:SET_PROPERTY,data:_OutlineDstBlend=10}, {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:4,actions:[{type:SET_PROPERTY,data:render_queue=3000},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=1}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=1}, {type:SET_PROPERTY,data:_OutlineDstBlend=1},  {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:5,actions:[{type:SET_PROPERTY,data:render_queue=3000},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=4}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=4}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=4}, {type:SET_PROPERTY,data:_OutlineDstBlend=1},  {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:6,actions:[{type:SET_PROPERTY,data:render_queue=3000},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=2}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=2}, {type:SET_PROPERTY,data:_OutlineDstBlend=0},  {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]},
		{value:7,actions:[{type:SET_PROPERTY,data:render_queue=3000},{type:SET_PROPERTY,data:_AlphaForceOpaque=0}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=4}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=3},  {type:SET_PROPERTY,data:_SrcBlendAlpha=1}, {type:SET_PROPERTY,data:_DstBlendAlpha=1},  {type:SET_PROPERTY,data:_AddSrcBlend=2}, {type:SET_PROPERTY,data:_AddDstBlend=1}, {type:SET_PROPERTY,data:_AddSrcBlendAlpha=0}, {type:SET_PROPERTY,data:_AddDstBlendAlpha=1}, {type:SET_PROPERTY,data:_AlphaToCoverage=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}, {type:SET_PROPERTY,data:_OutlineSrcBlend=2}, {type:SET_PROPERTY,data:_OutlineDstBlend=3},  {type:SET_PROPERTY,data:_OutlineSrcBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineDstBlendAlpha=1}, {type:SET_PROPERTY,data:_OutlineBlendOp=0}, {type:SET_PROPERTY,data:_OutlineBlendOpAlpha=4}]}
		]}", Int) = 0
		[HideInInspector] m_mainCategory ("Color & Normals--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/},hover:Documentation}}", Float) = 0
		_Color ("Color & Alpha--{reference_property:_ColorThemeIndex}", Color) = (1, 1, 1, 1)
		[ThryHideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _ColorThemeIndex ("Color Theme Index", Int) = 0
		[sRGBWarning(true)]_MainTex ("Texture--{reference_properties:[_MainTexPan, _MainTexUV, _MainPixelMode, _MainTexStochastic, _MainIgnoreTexAlpha]}", 2D) = "white" { }
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _MainTexUV ("UV", Int) = 0
		[ThryHideInInspector][Vector2]_MainTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ToggleUI]_MainPixelMode ("Pixel Mode", Float) = 0
		[ThryHideInInspector][ToggleUI]_MainTexStochastic ("Stochastic Sampling", Float) = 0
		[ThryHideInInspector][ToggleUI]_MainIgnoreTexAlpha ("Ignore Alpha", Float) = 0
		[Normal]_BumpMap ("Normal Map--{reference_property:_BumpScale, reference_properties:[_BumpMapPan, _BumpMapUV, _BumpMapStochastic]}", 2D) = "bump" { }
		[ThryHideInInspector]_BumpScale ("Intensity", Range(0, 10)) = 1
		[ThryHideInInspector][Vector2]_BumpMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _BumpMapUV ("UV", Int) = 0
		[ThryHideInInspector][ToggleUI]_BumpMapStochastic ("Stochastic Sampling", Float) = 0
		[sRGBWarning]_AlphaMask ("Alpha Map--{reference_properties:[_AlphaMaskPan, _AlphaMaskUV, _AlphaMaskInvert, _MainAlphaMaskMode, _AlphaMaskBlendStrength, _AlphaMaskValue, _AlphaMaskR, _AlphaMaskG, _AlphaMaskB, _AlphaMaskA, _AlphaMaskChannelBlendMode, _AlphaMaskMinMax, _AlphaMaskGamma], alts:[_AlphaMap]}", 2D) = "white" { }
		[ThryHideInInspector][Vector2]_AlphaMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _AlphaMaskUV ("UV", Int) = 0
		[ThryHideInInspector][ThryWideEnum(Off, 0, Replace, 1, Multiply, 2, Add, 3, Subtract, 4)]_MainAlphaMaskMode ("Blend Mode", Int) = 2
		[ThryHideInInspector]_AlphaMaskR ("R Channel", Range(0, 1)) = 1
		[ThryHideInInspector]_AlphaMaskG ("G Channel", Range(0, 1)) = 0
		[ThryHideInInspector]_AlphaMaskB ("B Channel", Range(0, 1)) = 0
		[ThryHideInInspector]_AlphaMaskA ("A Channel", Range(0, 1)) = 0
		[ThryHideInInspector][ThryWideEnum(Replace, 0, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Add, 7)]_AlphaMaskChannelBlendMode ("Channel Blend", Int) = 2
		[ThryHideInInspector][MultiSlider]_AlphaMaskMinMax ("Min Max", Vector) = (0, 1, 0, 1)
		[ThryHideInInspector]_AlphaMaskGamma ("Gamma", Range(0.01, 5)) = 1
		[ThryHideInInspector]_AlphaMaskBlendStrength ("Blend Strength", Float) = 1
		[ThryHideInInspector]_AlphaMaskValue ("Blend Offset", Float) = 0
		[ThryHideInInspector][ToggleUI]_AlphaMaskInvert ("Invert", Float) = 0
		_Cutoff ("Alpha Cutoff", Range(0, 1.001)) = 0.5
		[HideInInspector] m_start_Alpha ("Alpha Options--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/alpha-options},hover:Documentation}}", Float) = 0
		[ToggleUI]_AlphaForceOpaque ("Force Opaque", Float) = 1
		_AlphaMod ("Alpha Mod", Range(-1, 1)) = 0.0
		[ThryWideEnum(Off, 0, 1R, 1, 1G, 2, 1B, 3, 1A, 4, 2R, 5, 2G, 6, 2B, 7, 2A, 8, 3R, 9, 3G, 10, 3B, 11, 3A, 12, 4R, 13, 4G, 14, 4B, 15, 4A, 16)] _AlphaGlobalMask ("Global Mask--{reference_property:_AlphaGlobalMaskBlendType}", Int) = 0
		[ThryHideInInspector][ThryWideEnum(Add, 7, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Replace, 0)] _AlphaGlobalMaskBlendType ("Blending", Int) = 2
		[HideInInspector] s_start_AlphaAdvanced ("Advanced--{persistent_expand:true,default_expand:false}", Float) = 0
		[ToggleUI]_AlphaPremultiply ("Alpha Premultiply", Float) = 0
		_AlphaBoostFA ("Boost Transparency in ForwardAdd--{condition_showS:(_AddBlendOp==4)}", Range(1, 100)) = 10
		[HideInInspector] s_end_AlphaAdvanced ("Advanced", Float) = 0
		[HideInInspector] m_end_Alpha ("Alpha Options", Float) = 0
		[HideInInspector] m_lightingCategory ("Shading", Float) = 0
		[HideInInspector] m_start_PoiLightData ("Light Data--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/light-data},hover:Documentation}}", Float) = 0
		[TextureKeyword][sRGBWarning][ThryRGBAPacker(R, G, B, A, Linear, false)]_LightingAOMaps ("AO Maps (expand)--{reference_properties:[_LightingAOMapsPan, _LightingAOMapsUV,_LightDataAOStrengthR,_LightDataAOStrengthG,_LightDataAOStrengthB,_LightDataAOStrengthA, _LightDataAOGlobalMaskR]}", 2D) = "white" { }
		[ThryHideInInspector][Vector2]_LightingAOMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _LightingAOMapsUV ("UV", Int) = 0
		[ThryHideInInspector]_LightDataAOStrengthR ("R Strength", Range(0, 1)) = 1
		[ThryHideInInspector]_LightDataAOStrengthG ("G Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightDataAOStrengthB ("B Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightDataAOStrengthA ("A Strength", Range(0, 1)) = 0
		[ThryHideInInspector][ThryWideEnum(Off, 0, 1R, 1, 1G, 2, 1B, 3, 1A, 4, 2R, 5, 2G, 6, 2B, 7, 2A, 8, 3R, 9, 3G, 10, 3B, 11, 3A, 12, 4R, 13, 4G, 14, 4B, 15, 4A, 16)] _LightDataAOGlobalMaskR ("Global Mask--{reference_property:_LightDataAOGlobalMaskBlendTypeR}", Int) = 0
		[ThryHideInInspector][ThryWideEnum(Add, 7, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Replace, 0)] _LightDataAOGlobalMaskBlendTypeR ("Blending", Range(0, 1)) = 2
		[TextureKeyword][sRGBWarning][ThryRGBAPacker(R, G, B, A, Linear, false)]_LightingDetailShadowMaps ("Shadow Map (expand)--{reference_properties:[_LightingDetailShadowMapsPan, _LightingDetailShadowMapsUV,_LightingDetailShadowStrengthR,_LightingDetailShadowStrengthG,_LightingDetailShadowStrengthB,_LightingDetailShadowStrengthA,_LightingAddDetailShadowStrengthR,_LightingAddDetailShadowStrengthG,_LightingAddDetailShadowStrengthB,_LightingAddDetailShadowStrengthA, _LightDataDetailShadowGlobalMaskR]}", 2D) = "white" { }
		[ThryHideInInspector][Vector2]_LightingDetailShadowMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _LightingDetailShadowMapsUV ("UV", Int) = 0
		[ThryHideInInspector]_LightingDetailShadowStrengthR ("R Strength", Range(0, 1)) = 1
		[ThryHideInInspector]_LightingDetailShadowStrengthG ("G Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingDetailShadowStrengthB ("B Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingDetailShadowStrengthA ("A Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingAddDetailShadowStrengthR ("Additive R Strength", Range(0, 1)) = 1
		[ThryHideInInspector]_LightingAddDetailShadowStrengthG ("Additive G Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingAddDetailShadowStrengthB ("Additive B Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingAddDetailShadowStrengthA ("Additive A Strength", Range(0, 1)) = 0
		[ThryHideInInspector][ThryWideEnum(Off, 0, 1R, 1, 1G, 2, 1B, 3, 1A, 4, 2R, 5, 2G, 6, 2B, 7, 2A, 8, 3R, 9, 3G, 10, 3B, 11, 3A, 12, 4R, 13, 4G, 14, 4B, 15, 4A, 16)] _LightDataDetailShadowGlobalMaskR ("Global Mask--{reference_property:_LightDataDetailShadowGlobalMaskBlendTypeR}", Int) = 0
		[ThryHideInInspector][ThryWideEnum(Add, 7, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Replace, 0)] _LightDataDetailShadowGlobalMaskBlendTypeR ("Blending", Range(0, 1)) = 2
		[TextureKeyword][sRGBWarning][ThryRGBAPacker(R, G, B, A, Linear, false)]_LightingShadowMasks ("Shadow Masks (expand)--{reference_properties:[_LightingShadowMasksPan, _LightingShadowMasksUV,_LightingShadowMaskStrengthR,_LightingShadowMaskStrengthG,_LightingShadowMaskStrengthB,_LightingShadowMaskStrengthA, _LightDataShadowMaskGlobalMaskR]}", 2D) = "white" { }
		[ThryHideInInspector][Vector2]_LightingShadowMasksPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _LightingShadowMasksUV ("UV", Int) = 0
		[ThryHideInInspector]_LightingShadowMaskStrengthR ("R Strength", Range(0, 1)) = 1
		[ThryHideInInspector]_LightingShadowMaskStrengthG ("G Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingShadowMaskStrengthB ("B Strength", Range(0, 1)) = 0
		[ThryHideInInspector]_LightingShadowMaskStrengthA ("A Strength", Range(0, 1)) = 0
		[ThryHideInInspector][ThryWideEnum(Off, 0, 1R, 1, 1G, 2, 1B, 3, 1A, 4, 2R, 5, 2G, 6, 2B, 7, 2A, 8, 3R, 9, 3G, 10, 3B, 11, 3A, 12, 4R, 13, 4G, 14, 4B, 15, 4A, 16)] _LightDataShadowMaskGlobalMaskR ("Global Mask--{reference_property:_LightDataShadowMaskGlobalMaskBlendTypeR}", Int) = 0
		[ThryHideInInspector][ThryWideEnum(Add, 7, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Replace, 0)] _LightDataShadowMaskGlobalMaskBlendTypeR ("Blending", Range(0, 1)) = 2
		[HideInInspector] s_start_LightDataBasePass ("Base Pass (Main Directional & Baked Lights)--{persistent_expand:true,default_expand:true}", Float) = 1
		[Enum(Poi Custom, 0, Standard, 1, UTS2, 2, OpenLit(LilToon), 3)] _LightingColorMode ("Light Color Mode--{tooltip:Defines the method to use when calculating light color.}", Int) = 0
		[Enum(Poi Custom, 0, Normalized NDotL, 1, Saturated NDotL, 2, Casted Shadows Only, 3, SDF, 4)] _LightingMapMode ("Light Map Mode--{tooltip:Changes how the light map is calculated.}", Int) = 0
		[HideInInspector] s_start_LightDataSDF ("Signed Distance Fields--{persistent_expand:true,default_expand:true, condition_showS:(_LightingMapMode==4)}", Float) = 1
		[TextureKeyword][sRGBWarning][ThryRGBAPacker(R, G, Nothing, Nothing, Linear, false)]_LightDataSDFMap ("SDF Map (expand)--{reference_properties:[_LightDataSDFMapPan, _LightDataSDFMapUV]}", 2D) = "white" { }
		[ThryHideInInspector][Vector2]_LightDataSDFMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[ThryHideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Polar UV, 6, Distorted UV, 7, Matcap, 9, Screen Space, 10)] _LightDataSDFMapUV ("UV", Int) = 0
		_LightDataSDFMapLOD ("LOD", Range(0, 1)) = 0
		_LightDataSDFBlendY ("Blend Y Direction", Range(0.001, 2)) = 1
		[HideInInspector] s_end_LightDataSDF ("Signed Distance Fields", Float) = 1
		[Enum(Poi Custom, 0, Forced Local Direction, 1, Forced World Direction, 2, UTS2, 3, OpenLit(LilToon), 4, View Direction, 5)] _LightingDirectionMode ("Light Direction Mode--{tooltip:Defines how the light direction should be calculated.}", Int) = 0
		[Vector3]_LightngForcedDirection ("Forced Direction--{condition_showS:(_LightingDirectionMode==1 || _LightingDirectionMode==2),tooltip:Sets the light direction to a locked vector.}", Vector) = (0, 0, 0)
		_LightingViewDirOffsetPitch ("View Dir Offset Pitch--{condition_showS:_LightingDirectionMode==5}", Range(-90, 90)) = 0
		_LightingViewDirOffsetYaw ("View Dir Offset Yaw--{condition_showS:_LightingDirectionMode==5}", Range(-90, 90)) = 0
		[ToggleUI]_LightingForceColorEnabled ("Force Light Color--{tooltip:Forces a specific light color to use.}", Float) = 0
		_LightingForcedColor ("Forced Color--{condition_showS:(_LightingForceColorEnabled==1),reference_property:_LightingForcedColorThemeIndex}", Color) = (1, 1, 1)
		[ThryHideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _LightingForcedColorThemeIndex ("", Int) = 0
		_Unlit_Intensity ("Unlit Intensity--{condition_showS:(_LightingColorMode==2),tooltip:How much the model should be lit in the absence of direct light.}", Range(0.001, 4)) = 1
		[DoNotLock][ToggleUI]_LightingCapEnabled ("Limit Brightness--{tooltip:Enables clamping the maximum brightness. This toggle is tagged animated by default.}", Float) = 1
		[DoNotLock]_LightingCap ("Max Brightness--{condition_showS:(_LightingCapEnabled==1),tooltip:Clamps the brightness to never go above this value in regular lighting. This slider is tagged animated by default.}", Range(0, 10)) = 1
		[DoNotLock]_LightingMinLightBrightness ("Min Brightness--{tooltip:A value here above 0 will make the model visible in total darkness at the specified intensity. This slider is tagged animated by default.}", Range(0, 1)) = 0
		_LightingIndirectUsesNormals ("Indirect Uses Normals--{condition_showS:(_LightingColorMode==0),tooltip:Amount of normal influence when calculating indirect lighting.}", Range(0, 1)) = 0
		_LightingCastedShadows ("Receive Casted Shadows--{tooltip:Amount to apply Unity's built-in casted shadows to the model.}", Range(0, 1)) = 0
		_LightingShadowSoftness ("Casted Shadow Softness--{tooltip:Softens the casted shadows applied to the model.}", Range(0, 1)) = 0
		[DoNotLock]_LightingMonochromatic ("Grayscale Lighting--{tooltip:De-saturates the base lighting color while keeping perceptual luminance the same.}", Range(0, 1)) = 0
		[ToggleUI]_LightingVertexLightingEnabled ("Vertex lights (Non-Important)--{tooltip:Enables realtime vertex lights to perform unimportant lighting calculations.}", Float) = 1
		[ToggleUI]_LightingMirrorVertexLightingEnabled ("Mirror Vertex lights (Non-Important)--{tooltip:Invokes correct handling of vertex lighting due to how VRChat performs lighting differently in various mirrors.}", Float) = 1
		[HideInInspector] s_end_LightDataBasePass ("Base Pass", Float) = 1
		[HideInInspector] s_start_LightDataAddPass ("Add Pass (Point, Spot, & other Directional Lights)--{persistent_expand:true,default_expand:true}", Float) = 1
		[ToggleUI]_LightingAdditiveEnable ("Pixel Lights (Important)--{tooltip:Enables or disables the entire additive pass in general.}", Float) = 1
		[ToggleUI]_DisableDirectionalInAdd ("Ignore Directional Lights--{condition_showS:(_LightingAdditiveEnable==1),tooltip:Counteracts against poor lighting in scenes with too many Directional Lights.}", Float) = 0
		[ToggleUI]_LightingAdditiveLimited ("Limit Brightness--{tooltip:Enables clamping the maximum brightness.}", Float) = 1
		_LightingAdditiveLimit ("Max Brightness--{condition_showS:(_LightingAdditiveLimited==1),tooltip:Clamps the brightness to never go above this value in the additive pass.}", Range(0, 10)) = 1
		_LightingAdditiveCastedShadows ("Receive Casted Shadows--{tooltip:Amount to apply Unity's built-in casted shadows to the mode.}", Range(0, 1)) = 1
		_LightingAdditiveMonochromatic ("Grayscale Lighting--{tooltip:De-saturates the additive lighting color while keeping perceptual luminance the same.}", Range(0, 1)) = 0
		_LightingAdditivePassthrough ("Light Passthrough--{tooltip:Sets how much to apply point lighting to the indirect color.}", Range(0, 1)) = 0
		[Curve4]_LightingAdditiveAttenCurve ("Light Attenuation Curve--{tooltip:Remaps the distance attenuation for finer control of the lighting falloff.}", Vector) =  (0, 0.3333333, 0.6666667, 1)
		[HideInInspector] s_end_LightDataAddPass ("Add Pass", Float) = 1
		[HideInInspector] s_start_LightDataLightVolumes ("Light Volumes--{reference_property:_LightingEnableLightVolumes,persistent_expand:true,default_expand:true}", Float) = 1
		[ThryHideInInspector][ToggleUI]_LightingEnableLightVolumes ("Light Volumes", Float) = 1
		[ThryDescription] LVDesc ("This shader supports VRC Light Volumes by RED_SIM. Click for more info.--{onClick:{type:URL,data:https://github.com/REDSIM/VRCLightVolumes}}", Int) = 0
		_LightingLightVolumesSpecular ("LV Specular--{tooltip:Adjusts the specular intensity received from Light Volumes data.}", Range(0, 1)) = 1
		_LightingLightVolumesIntensity ("LV Intensity--{tooltip:Adjusts the total intensity of Light Volumes affecting the model.}", Range(0, 1)) = 1
		_LightingLightVolumesShadows ("LV Shadows--{tooltip:Adjusts the intensity of shadows to simulate when the model is exposed to a Light Volumes voxel.}", Range(0, 1)) = 0
		_LightingLightVolumesNormalBias ("Normal Bias Sampling--{tooltip:Offsets the position where lighting from the mesh normals is sampled from in Light Volumes.}", Range(-1, 1)) = 0
		[HideInInspector] s_end_LightDataLightVolumes ("Light Volumes", Float) = 1
		[HideInInspector] s_start_LightDataDebug ("Debug / Data Visualizations--{reference_property:_LightDataDebugEnabled,persistent_expand:true,default_expand:false}", Float) = 0
		[HideInInspector][DoNotAnimate][ThryToggleUI(false)]_LightDataDebugEnabled ("Debug", Float) = 0
		[Helpbox(1, 2, 3)] _DebugWarning ("This area visualizes your Light Data configuration in real time. Make sure to turn this off before locking!", Int) = 0
		[ThryWideEnum(Direct Color, 0, Indirect Color, 1, Light Map, 2, Attenuation, 3, Shadow, 12, N Dot L, 4, Half Dir, 5, Direction, 6, Add Color, 7, Add Attenuation, 8, Add Shadow, 9, Add N Dot L, 10, Add Half Dir, 11, Add Light Map, 13)] _LightingDebugVisualize ("Visualize", Int) = 0
		[HideInInspector] s_end_LightDataDebug ("Debug", Float) = 0
		[HideInInspector] m_end_PoiLightData ("Light Data", Float) = 0
		[HideInInspector] m_start_bakedLighting ("Baked Lighting--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/baked-lighting},hover:Documentation}}", Float) = 0
		[Helpbox(1, 5, 3)] _GIWarning ("Poiyomi Shaders is not designed to be used as a general-purpose World shader and should be reserved only for specialized features that typical World shaders do not have. Additionally, Static Batching is unsupported! For this reason, you should keep your usage of Poiyomi World to a minimum.", Int) = 0
		[DoNotAnimate] _GIEmissionMultiplier ("GI Emission Multiplier", Float) = 1
		[HideInInspector][HDR]_EmissionColor ("Emission Color", Color) = (0, 0, 0, 1) // Fallback for Unity GI - overridden by emission module when enabled
		[HideInInspector][DoNotAnimate] DSGI ("DSGI", Float) = 0 //add this property for double sided illumination settings to be shown
		[HideInInspector][DoNotAnimate] LightmapFlags ("Lightmap Flags", Float) = 0 //add this property for lightmap flags settings to be shown
		[DoNotAnimate][ThryWideEnum(None, 0, SH, 1, RNM, 2, MonoSH, 3)] _BakeryMode ("Bakery Mode", Float) = 0
		[DoNotAnimate][Toggle(_LIGHTMAP_BICUBIC)] _LightmapBicubic ("Use Bicubic Filtering", Float) = 0
		[HideInInspector] m_end_bakedLighting ("Baked Lighting", Float) = 0
		[HideInInspector] m_start_PoiShading (" Shadows--{reference_property:_ShadingEnabled,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/main},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE_MASKED)]_ShadingEnabled ("Enable Shading", Float) = 1
		[DoNotAnimate][KeywordEnum(TextureRamp, Multilayer Math, Wrapped, Skin, ShadeMap, Flat, Realistic, Cloth, SDF)] _LightingMode ("Lighting Type", Float) = 5
		[Helpbox(1, 2, 1)] _FlatLightingInfo ("Flat uses lighting at the same level uniformly. This mode will not read Normals or Normal Maps at any level.--{condition_showS:(_LightingMode==5)}", Int) = 0
		[Helpbox(1, 2, 1)] _ClothPBRInfo ("Cloth has built-in Reflections & Specular. Therefore, it's not necessary to enable Reflections & Specular separately.--{condition_showS:(_LightingMode==7)}", Int) = 0
		[Helpbox(1, 2, 1)] _SDFNote ("SDF requires a specialized data texture specific to your model in order for this to work. If there's no texture, this will appear Flat.--{condition_showS:(_LightingMode==8)}", Int) = 0
		_LightingShadowColor ("Shadow Tint--{condition_showS:(_LightingMode!=4 && _LightingMode!=1 && _LightingMode!=5)}", Color) = (1, 1, 1)
		[ToggleUI]_ForceFlatRampedLightmap ("Force Ramped Lightmap--{condition_showS:(_LightingMode==5)}", Range(0, 1)) = 1
		_ShadowStrength ("Shadow Strength--{condition_showS:(_LightingMode<=4 || _LightingMode==6 || _LightingMode==8)}", Range(0, 1)) = 1
		_LightingIgnoreAmbientColor ("Ignore Indirect Shadow Color--{condition_showS:(_LightingMode<=3 || _LightingMode==8)}", Range(0, 1)) = 1
		[Space(15)]
		[HideInInspector] s_start_ShadingAddPass ("Add Pass (Point & Spot Lights)--{persistent_expand:true,default_expand:false}", Float) = 0
		[ThryWideEnum(Realistic, 0, Toon, 1, Same as Base Pass, 3)] _LightingAdditiveType ("Lighting Type", Int) = 3
		_LightingAdditiveGradientStart ("Gradient Start--{condition_showS:(_LightingAdditiveType==1)}", Range(0, 1)) = 0
		_LightingAdditiveGradientEnd ("Gradient End--{condition_showS:(_LightingAdditiveType==1)}", Range(0, 1)) = .5
		[HideInInspector] s_end_ShadingAddPass ("Add Pass", Float) = 0
		[HideInInspector] s_start_ShadingGlobalMask ("Global Masks--{persistent_expand:true,default_expand:false}", Float) = 0
		[ThryWideEnum(Off, 0, 1R, 1, 1G, 2, 1B, 3, 1A, 4, 2R, 5, 2G, 6, 2B, 7, 2A, 8, 3R, 9, 3G, 10, 3B, 11, 3A, 12, 4R, 13, 4G, 14, 4B, 15, 4A, 16)] _ShadingRampedLightMapApplyGlobalMaskIndex ("LightMap to Global Mask--{reference_property:_ShadingRampedLightMapApplyGlobalMaskBlendType}", Int) = 0
		_ShadingRampedLightMapApplyGlobalMaskStrength ("Mask Strength--{condition_showS:(_ShadingRampedLightMapApplyGlobalMaskIndex>0)}", Range(0, 3)) = 1
		[ThryHideInInspector][ThryWideEnum(Add, 7, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Replace, 0)] _ShadingRampedLightMapApplyGlobalMaskBlendType ("Blending", Int) = 2
		[ThryWideEnum(Off, 0, 1R, 1, 1G, 2, 1B, 3, 1A, 4, 2R, 5, 2G, 6, 2B, 7, 2A, 8, 3R, 9, 3G, 10, 3B, 11, 3A, 12, 4R, 13, 4G, 14, 4B, 15, 4A, 16)] _ShadingRampedLightMapInverseApplyGlobalMaskIndex ("Inversed LightMap to Global Mask--{reference_property:_ShadingRampedLightMapInverseApplyGlobalMaskBlendType}", Int) = 0
		_ShadingRampedLightMapInverseApplyGlobalMaskStrength ("Inversed Mask Strength--{condition_showS:(_ShadingRampedLightMapInverseApplyGlobalMaskIndex>0)}", Range(0, 3)) = 1
		[ThryHideInInspector][ThryWideEnum(Add, 7, Subtract, 1, Multiply, 2, Divide, 3, Min, 4, Max, 5, Average, 6, Replace, 0)] _ShadingRampedLightMapInverseApplyGlobalMaskBlendType ("Blending", Int) = 2
		[HideInInspector] s_end_ShadingGlobalMask ("Global Masks", Float) = 0
		[HideInInspector] m_end_PoiShading ("Shading", Float) = 0
		[HideInInspector] m_OutlineCategory (" Outlines--{reference_property:_EnableOutlines,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/outlines/},hover:Documentation}}", Float) = 0
		[HideInInspector] m_specialFXCategory ("Special FX", Float) = 0
		[HideInInspector] m_raymarchingCategory ("Raymarching", Float) = 0
		[HideInInspector] m_vertexCategory ("Vertex Options", Float) = 0
		[HideInInspector] m_modifierCategory ("Global Modifiers & Data", Float) = 0
		[HideInInspector] m_start_PoiGlobalCategory ("Global Data and Masks", Float) = 0
		[HideInInspector] m_start_PoiTimeOptions ("Time Source--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/time-source},hover:Documentation}}", Float) = 0
		[ThryWideEnum(Unity Default, 0, VRChat Network Time, 1)] _PoiTimeSource ("Time Source", Int) = 1
		[HideInInspector] m_end_PoiTimeOptions ("Time Source", Float) = 0
		[HideInInspector] m_start_GlobalThemes ("Global Themes--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/global-themes},hover:Documentation}}", Float) = 0
		[HideInInspector] m_start_GlobalThemeColor0 ("Theme Color 0", Float) = 0
		[HDR]_GlobalThemeColor0 ("Theme Color 0", Color) = (1, 1, 1, 1)
		[ThryWideEnum(OKLab, 0, HSV, 1)] _GlobalThemeHueShiftColorSpace0 ("Color Space", Int) = 0
		_GlobalThemeHueSpeed0 ("Shift Speed", Float) = 0
		_GlobalThemeHue0 ("Hue Shift", Range(0, 1)) = 0
		[ThryWideEnum(Saturation Value (old), 0, Saturation Brightness, 1)] _GlobalThemeSaturationMethod0 ("Saturation Style", Int) = 1
		_GlobalThemeSaturation0 ("Saturation Adjust--{condition_show:(_GlobalThemeSaturationMethod0==0)}", Range(-1, 1)) = 0
		_GlobalThemeValue0 ("Value Adjust--{condition_show:(_GlobalThemeSaturationMethod0==0)}", Range(-1, 1)) = 0
		_GlobalThemeSaturation0 ("Saturation--{condition_show:(_GlobalThemeSaturationMethod0==1)}", Range(-1, 10)) = 0
		_GlobalThemeBrightness0 ("Brightness--{condition_show:(_GlobalThemeSaturationMethod0==1)}", Range(-1, 2)) = 0
		[HideInInspector] m_end_GlobalThemeColor0   ("Theme Color 0", Float) = 0
		[HideInInspector] m_start_GlobalThemeColor1 ("Theme Color 1", Float) = 0
		[HDR]_GlobalThemeColor1 ("Theme Color 1", Color) = (1, 1, 1, 1)
		[ThryWideEnum(OKLab, 0, HSV, 1)] _GlobalThemeHueShiftColorSpace1 ("Color Space", Int) = 0
		_GlobalThemeHueSpeed1 ("Shift Speed", Float) = 0
		_GlobalThemeHue1 ("Hue Shift", Range(0, 1)) = 0
		[ThryWideEnum(Saturation Value (old), 0, Saturation Brightness, 1)] _GlobalThemeSaturationMethod1 ("Saturation Style", Int) = 1
		_GlobalThemeSaturation1 ("Saturation Adjust--{condition_show:(_GlobalThemeSaturationMethod1==0)}", Range(-1, 1)) = 0
		_GlobalThemeValue1 ("Value Adjust--{condition_show:(_GlobalThemeSaturationMethod1==0)}", Range(-1, 1)) = 0
		_GlobalThemeSaturation1 ("Saturation--{condition_show:(_GlobalThemeSaturationMethod1==1)}", Range(-1, 10)) = 0
		_GlobalThemeBrightness1 ("Brightness--{condition_show:(_GlobalThemeSaturationMethod1==1)}", Range(-1, 2)) = 0
		[HideInInspector] m_end_GlobalThemeColor1   ("Theme Color 1", Float) = 0
		[HideInInspector] m_start_GlobalThemeColor2 ("Theme Color 2", Float) = 0
		[HDR]_GlobalThemeColor2 ("Theme Color 2", Color) = (1, 1, 1, 1)
		[ThryWideEnum(OKLab, 0, HSV, 1)] _GlobalThemeHueShiftColorSpace2 ("Color Space", Int) = 0
		_GlobalThemeHueSpeed2 ("Shift Speed", Float) = 0
		_GlobalThemeHue2 ("Hue Shift", Range(0, 1)) = 0
		[ThryWideEnum(Saturation Value (old), 0, Saturation Brightness, 1)] _GlobalThemeSaturationMethod2 ("Saturation Style", Int) = 1
		_GlobalThemeSaturation2 ("Saturation Adjust--{condition_show:(_GlobalThemeSaturationMethod2==0)}", Range(-1, 1)) = 0
		_GlobalThemeValue2 ("Value Adjust--{condition_show:(_GlobalThemeSaturationMethod2==0)}", Range(-1, 1)) = 0
		_GlobalThemeSaturation2 ("Saturation--{condition_show:(_GlobalThemeSaturationMethod2==1)}", Range(-1, 10)) = 0
		_GlobalThemeBrightness2 ("Brightness--{condition_show:(_GlobalThemeSaturationMethod2==1)}", Range(-1, 2)) = 0
		[HideInInspector] m_end_GlobalThemeColor2   ("Theme Color 2", Float) = 0
		[HideInInspector] m_start_GlobalThemeColor3 ("Theme Color 3", Float) = 0
		[HDR]_GlobalThemeColor3 ("Theme Color 3", Color) = (1, 1, 1, 1)
		[ThryWideEnum(OKLab, 0, HSV, 1)] _GlobalThemeHueShiftColorSpace3 ("Color Space", Int) = 0
		_GlobalThemeHueSpeed3 ("Shift Speed", Float) = 0
		_GlobalThemeHue3 ("Hue Shift", Range(0, 1)) = 0
		[ThryWideEnum(Saturation Value (old), 0, Saturation Brightness, 1)] _GlobalThemeSaturationMethod3 ("Saturation Style", Int) = 1
		_GlobalThemeSaturation3 ("Saturation Adjust--{condition_show:(_GlobalThemeSaturationMethod3==0)}", Range(-1, 1)) = 0
		_GlobalThemeValue3 ("Value Adjust--{condition_show:(_GlobalThemeSaturationMethod3==0)}", Range(-1, 1)) = 0
		_GlobalThemeSaturation3 ("Saturation--{condition_show:(_GlobalThemeSaturationMethod3==1)}", Range(-1, 10)) = 0
		_GlobalThemeBrightness3 ("Brightness--{condition_show:(_GlobalThemeSaturationMethod3==1)}", Range(-1, 2)) = 0
		[HideInInspector] m_end_GlobalThemeColor3   ("Theme Color 3", Float) = 0
		[HideInInspector] m_end_GlobalThemes ("Global Themes", Float ) = 0
		[HideInInspector] m_start_GlobalMask ("Global Mask--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/global-masks},hover:Documentation}}", Float) = 0
		[HideInInspector] m_start_GlobalMaskModifiers ("Modifiers", Float) = 0
		[HideInInspector] m_end_GlobalMaskModifiers ("", Float) = 0
		[HideInInspector] m_end_GlobalMask ("Global Mask", Float) = 0
		[HideInInspector] m_end_PoiGlobalCategory ("Global Data and Masks ", Float) = 0
		[HideInInspector] m_start_PoiUVCategory ("UVs", Float) = 0
		[HideInInspector] m_start_Stochastic ("Stochastic Sampling--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/uvs/stochastic-sampling},hover:Documentation}}", Float) = 0
		[DoNotAnimate][KeywordEnum(Deliot Heitz, Hextile, None)] _StochasticMode ("Sampling Mode", Float) = 0
		[HideInInspector] s_start_deliot ("Deliot Heitz--{persistent_expand:true,default_expand:false,condition_show:_StochasticMode==0}", Float) = 0
		_StochasticDeliotHeitzDensity ("Detiling Density", Range(0.1, 10)) = 1
		[HideInInspector] s_end_deliot ("Deliot Heitz", Float) = 0
		[HideInInspector] m_end_Stochastic ("Stochastic Sampling", Float) = 0
		[HideInInspector] m_start_uvSettings ("UV Settings--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/uvs/uv-settings},hover:Documentation}}", Float) = 0
		[HideInInspector] s_start_uvSettingsUV0 ("UV0--{persistent_expand:true,default_expand:false}", Float) = 0
		[VectorLabel(X, Y)]_UVSettingsTiling0 ("Tiling", Vector) = (1, 1, 0, 0)
		[VectorLabel(X, Y)]_UVSettingsOffset0 ("Offset", Vector) = (0, 0, 0, 0)
		_UVSettingsAngle0 ("Angle", Range(-180, 180)) = 0
		[VectorLabel(X, Y)]_UVSettingsPan0 ("Pan", Vector) = (0, 0, 0, 0)
		_UVSettingsRotate0 ("Rotate", Float) = 0
		[HideInInspector] s_end_uvSettingsUV0 ("UV0", Float) = 0
		[HideInInspector] s_start_uvSettingsUV1 ("UV1--{persistent_expand:true,default_expand:false}", Float) = 0
		[VectorLabel(X, Y)]_UVSettingsTiling1 ("Tiling", Vector) = (1, 1, 0, 0)
		[VectorLabel(X, Y)]_UVSettingsOffset1 ("Offset", Vector) = (0, 0, 0, 0)
		_UVSettingsAngle1 ("Angle", Range(-180, 180)) = 0
		[VectorLabel(X, Y)]_UVSettingsPan1 ("Pan", Vector) = (0, 0, 0, 0)
		_UVSettingsRotate1 ("Rotate", Float) = 0
		[HideInInspector] s_end_uvSettingsUV1 ("UV1", Float) = 0
		[HideInInspector] s_start_uvSettingsUV2 ("UV2--{persistent_expand:true,default_expand:false}", Float) = 0
		[VectorLabel(X, Y)]_UVSettingsTiling2 ("Tiling", Vector) = (1, 1, 0, 0)
		[VectorLabel(X, Y)]_UVSettingsOffset2 ("Offset", Vector) = (0, 0, 0, 0)
		_UVSettingsAngle2 ("Angle", Range(-180, 180)) = 0
		[VectorLabel(X, Y)]_UVSettingsPan2 ("Pan", Vector) = (0, 0, 0, 0)
		_UVSettingsRotate2 ("Rotate", Float) = 0
		[HideInInspector] s_end_uvSettingsUV2 ("UV2", Float) = 0
		[HideInInspector] s_start_uvSettingsUV3 ("UV3--{persistent_expand:true,default_expand:false}", Float) = 0
		[VectorLabel(X, Y)]_UVSettingsTiling3 ("Tiling", Vector) = (1, 1, 0, 0)
		[VectorLabel(X, Y)]_UVSettingsOffset3 ("Offset", Vector) = (0, 0, 0, 0)
		_UVSettingsAngle3 ("Angle", Range(-180, 180)) = 0
		[VectorLabel(X, Y)]_UVSettingsPan3 ("Pan", Vector) = (0, 0, 0, 0)
		_UVSettingsRotate3 ("Rotate", Float) = 0
		[HideInInspector] s_end_uvSettingsUV3 ("UV3", Float) = 0
		[ToggleUI] _UVSettingsShiftBackfaceUV ("Shift Backface UV", Float) = 0
		[HideInInspector] m_end_uvSettings ("UV Settings", Float) = 0
		[HideInInspector] m_start_uvLocalWorld ("Local World UV--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/uvs/local-world-uv},hover:Documentation}}", Float) = 0
		[ThryWideEnum(X, 0, Y, 1, Z, 2, Zero, 3, VColor R, 4, VColor G, 5, VColor B, 6, VColor A, 7)] _UVModLocalPos0 ("Local X", Int) = 0
		[ThryWideEnum(X, 0, Y, 1, Z, 2, Zero, 3, VColor R, 4, VColor G, 5, VColor B, 6, VColor A, 7)] _UVModLocalPos1 ("Local Y", Int) = 1
		[Space(10)]
		[ThryWideEnum(X, 0, Y, 1, Z, 2, Zero, 3)] _UVModWorldPos0 ("World X", Int) = 0
		[ThryWideEnum(X, 0, Y, 1, Z, 2, Zero, 3)] _UVModWorldPos1 ("World Y", Int) = 2
		[HideInInspector] m_end_uvLocalWorld ("Local World UV", Float) = 0
		[HideInInspector] m_start_uvPanosphere ("Panosphere UV--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/uvs/panosphere-uv},hover:Documentation}}", Float) = 0
		[ThryWideEnum(Mono, 0, Top Bottom, 1, Side by Side, 2)] _StereoEnabled ("Stereo Layout", Float) = 0
		[ToggleUI] _PanoUseBothEyes ("Perspective Correct (VR)", Float) = 1
		[HideInInspector] m_end_uvPanosphere ("Panosphere UV", Float) = 0
		[HideInInspector] m_start_uvScreenSpace ("Screen Space UV--{persistent_expand:true,default_expand:false}", Float) = 0
		[ToggleUI] _ScreenSpaceUVObjectScale ("Object Relative Scale", Float) = 0
		_ScreenSpaceUVWorldSize ("Size (World Units)", Float) = 1
		[HideInInspector] m_end_uvScreenSpace ("Screen Space UV", Float) = 0
		[HideInInspector] m_start_uvPolar ("Polar UV--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/modifiers/uvs/polar-uv},hover:Documentation}}", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos, 5, Local Pos, 8, Matcap, 9, Screen Space, 10)] _PolarUV ("UV", Int) = 0
		[ThryWideEnum(Standard, 0, Log Polar, 1, Square Polar, 2)] _PolarMode ("Mode", Int) = 0
		[Vector2]_PolarCenter ("Center Coordinate", Vector) = (.5, .5, 0, 0)
		_PolarRadialScale ("Radial Scale", Float) = 1
		_PolarLengthScale ("Length Scale", Float) = 1
		_PolarSpiralPower ("Spiral Power", Float) = 0
		[HideInInspector] m_end_uvPolar ("Polar UV", Float) = 0
		[HideInInspector] m_end_PoiUVCategory ("UVs ", Float) = 0
		[HideInInspector] m_start_PoiPostProcessingCategory ("Post Processing", Float) = 0
		[HideInInspector] m_start_PPAnimations ("PP Animations--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/post-processing/pp-animations},hover:Documentation}}", Float) = 0
		[Helpbox(1, 2, 1)] _PPHelp ("This section is intended for real time adjustments through animations at runtime. Therefore, these should not be changed in Unity.", Int) = 0
		_PPLightingMultiplier ("Lighting Multiplier", Float) = 1
		_PPLightingAddition ("Lighting Add", Float) = 0
		_PPEmissionMultiplier ("Emission Multiplier", Float) = 1
		_PPFinalColorMultiplier ("Final Color Multiplier", Float) = 1
		[HideInInspector] m_end_PPAnimations ("PP Animations ", Float) = 0
		[HideInInspector] m_end_PoiPostProcessingCategory ("Post Processing ", Float) = 0
		[HideInInspector] m_thirdpartyCategory ("Third Party", Float) = 0
		[HideInInspector] m_renderingCategory ("Rendering--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/rendering/},hover:Documentation}}", Float) = 0
		[HideInInspector] s_start_cullingDepth ("Culling and Depth--{persistent_expand:true,default_expand:true}", Float) = 1
		[DoNotAnimate][Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull--{tooltip:Faces to discard. Off = double-sided.}", Float) = 2
		[DoNotAnimate][Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest--{tooltip:Depth test. Always = draw on top.}", Float) = 4
		[DoNotAnimate][Enum(Off, 0, On, 1)] _ZWrite ("ZWrite--{tooltip:Write to the depth buffer.}", Int) = 1
		[DoNotAnimate][ToggleUI] _ZClip ("ZClip--{tooltip:Clip past the near and far planes.}", Float) = 1
		[DoNotAnimate] _OffsetFactor ("Offset Factor--{tooltip:Slope-scaled depth bias.}", Float) = 0.0
		[DoNotAnimate] _OffsetUnits ("Offset Units--{tooltip:Constant depth bias against z-fighting.}", Float) = 0.0
		[HideInInspector] s_end_cullingDepth ("Culling and Depth", Float) = 0
		[HideInInspector] s_start_colorDepthOffset ("Color--{persistent_expand:true,default_expand:true}", Float) = 1
		[DoNotAnimate][ThryMask(Thry.ColorMaskFlags)] _ColorMask ("Color Mask--{tooltip:Channels written to the output.}", Int) = 15
		[HideInInspector] s_end_colorDepthOffset ("Color", Float) = 0
		[HideInInspector] s_start_renderOptions ("Options--{persistent_expand:true,default_expand:true}", Float) = 1
		[DoNotAnimate][ToggleUI] _RenderingReduceClipDistance ("Reduce Clip Distance--{tooltip:Stops close geometry clipping the near plane.}", Float) = 0
		[DoNotAnimate][ToggleUI] _IgnoreFog ("Ignore Fog--{tooltip:Exclude from fog.}", Float) = 0
		[DoNotAnimate][ToggleUI]_FlipBackfaceNormals ("Flip Backface Normals--{tooltip:Fix lighting on backfaces.}", Int) = 1
		[DoNotAnimate][HideInInspector] Instancing ("Instancing", Float) = 0 //add this property for instancing variants settings to be shown
		[HideInInspector] s_end_renderOptions ("Options", Float) = 0
		[HideInInspector] m_start_blending ("Blending--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/rendering/blending},hover:Documentation}}", Float) = 0
		[DoNotAnimate][Enum(Thry.BlendOp)] _BlendOp ("RGB Blend Op", Int) = 0
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("RGB Source Blend", Int) = 1
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("RGB Destination Blend", Int) = 0
		[DoNotAnimate][Space][ThryHeaderLabel(Additive Blending, 13)]
		[DoNotAnimate][Enum(Thry.BlendOp)] _AddBlendOp ("RGB Blend Op", Int) = 4
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _AddSrcBlend ("RGB Source Blend", Int) = 1
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _AddDstBlend ("RGB Destination Blend", Int) = 1
		[DoNotAnimate][HideInInspector] m_start_alphaBlending ("Advanced Alpha Blending", Float) = 0
		[DoNotAnimate][Enum(Thry.BlendOp)] _BlendOpAlpha ("Alpha Blend Op", Int) = 0
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _SrcBlendAlpha ("Alpha Source Blend", Int) = 1
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _DstBlendAlpha ("Alpha Destination Blend", Int) = 10
		[DoNotAnimate][Space][ThryHeaderLabel(Additive Blending, 13)]
		[DoNotAnimate][Enum(Thry.BlendOp)] _AddBlendOpAlpha ("Alpha Blend Op", Int) = 4
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _AddSrcBlendAlpha ("Alpha Source Blend", Int) = 0
		[DoNotAnimate][Enum(UnityEngine.Rendering.BlendMode)] _AddDstBlendAlpha ("Alpha Destination Blend", Int) = 1
		[DoNotAnimate][HideInInspector] m_end_alphaBlending ("Advanced Alpha Blending", Float) = 0
		[HideInInspector] m_end_blending ("Blending", Float) = 0
		[HideInInspector] m_start_StencilPassOptions ("Stencil--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/rendering/stencil},hover:Documentation}}", Float) = 0
		[ThryWideEnum(Simple, 0, Front Face vs Back Face, 1)] _StencilType ("Stencil Type", Float) = 0
		[ByteSlider] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
		[ByteSlider] _StencilReadMask ("Stencil ReadMask Value", Range(0, 255)) = 255
		[ByteSlider] _StencilWriteMask ("Stencil WriteMask Value", Range(0, 255)) = 255
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilPassOp ("Stencil Pass Op--{condition_showS:(_StencilType==0)}", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFailOp ("Stencil Fail Op--{condition_showS:(_StencilType==0)}", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailOp ("Stencil ZFail Op--{condition_showS:(_StencilType==0)}", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction ("Stencil Compare Function--{condition_showS:(_StencilType==0)}", Float) = 8
		[HideInInspector] s_start_StencilPassBackOptions("Back--{condition_showS:(_StencilType==1)}", Float) = 0
		[Helpbox(1, 2, 1)] _FFBFStencilHelp0 ("Front Face and Back Face Stencils only work when locked in due to Unity's Stencil management", Int) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilBackPassOp ("Back Pass Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilBackFailOp ("Back Fail Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilBackZFailOp ("Back ZFail Op", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilBackCompareFunction ("Back Compare Function", Float) = 8
		[HideInInspector] s_end_StencilPassBackOptions("Back", Float) = 0
		[HideInInspector] s_start_StencilPassFrontOptions("Front--{condition_showS:(_StencilType==1)}", Float) = 0
		[Helpbox(1, 2, 1)] _FFBFStencilHelp1 ("Front Face and Back Face Stencils only work when locked in due to Unity's Stencil management", Int) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFrontPassOp ("Front Pass Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFrontFailOp ("Front Fail Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFrontZFailOp ("Front ZFail Op", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilFrontCompareFunction ("Front Compare Function", Float) = 8
		[HideInInspector] s_end_StencilPassFrontOptions("Front", Float) = 0
		[HideInInspector] m_start_StencilCalculator ("Stencil Calculator--{persistent_expand:true,default_expand:false}", Float) = 0
		[ToggleUI(true)] _StencilIsOccluded ("Simulate ZFail", Float) = 0
		[HideInInspector] s_start_StencilCalcSimple ("Calculator--{condition_showS:(_StencilType==0),persistent_expand:true,default_expand:true}", Float) = 1
		[HideInInspector][IntRange] _StencilBufferValue ("Existing Buffer Value", Range(0, 255)) = 0
		[HideInInspector] ss_start_StencilGridSimple ("Bit Grid--{persistent_expand:true,default_expand:true}", Float) = 1
		[ThryStencilCalculator]
		[ThryRichLabel(10)] _StencilCheckResult ("<i>Simulated in the editor. The GPU performs its own stencil test.</i>", Float) = 0
		[HideInInspector] ss_end_StencilGridSimple ("Bit Grid", Float) = 0
		[HideInInspector] ss_start_StencilSummarySimple ("Summary--{tooltip:Shows the stencil test and the operation selected by its outcome.,persistent_expand:true,default_expand:true}", Float) = 1
		[ThryStencilSummary]
		[ThryRichLabel(10)] _StencilSummaryNote ("<i>Editing these dropdowns writes to the properties above.</i>", Float) = 0
		[Helpbox(1, 0, 5)] _StencilCheckFailed ("The pixel's stencil check would have failed--{condition_showS:(_StencilType==0 && _StencilCheckResult==0)}", Int) = 0
		[Helpbox(1, 0, 4)] _StencilCheckPassed ("The pixel's stencil check would have passed--{condition_showS:(_StencilType==0 && _StencilCheckResult==1)}", Int) = 0
		[HideInInspector] ss_end_StencilSummarySimple ("Summary", Float) = 0
		[HideInInspector] s_end_StencilCalcSimple ("Calculator", Float) = 0
		[HideInInspector] s_start_StencilCalcFront ("Front Faces--{condition_showS:(_StencilType==1),persistent_expand:true,default_expand:false}", Float) = 0
		[HideInInspector] ss_start_StencilGridFront ("Bit Grid--{persistent_expand:true,default_expand:false}", Float) = 0
		[ThryStencilCalculator(Front)]
		[ThryRichLabel(10)] _StencilFrontCheckResult ("<i>Front face simulation.</i>", Float) = 0
		[HideInInspector] ss_end_StencilGridFront ("Bit Grid", Float) = 0
		[HideInInspector] ss_start_StencilSummaryFront ("Summary--{persistent_expand:true,default_expand:false}", Float) = 0
		[ThryStencilSummary(Front)]
		[ThryRichLabel(10)] _StencilFrontSummaryNote ("<i>Front face test and selected operation.</i>", Float) = 0
		[HideInInspector] ss_end_StencilSummaryFront ("Summary", Float) = 0
		[HideInInspector] s_end_StencilCalcFront ("Front Faces", Float) = 0
		[HideInInspector] s_start_StencilCalcBack ("Back Faces--{condition_showS:(_StencilType==1),persistent_expand:true,default_expand:false}", Float) = 0
		[HideInInspector] ss_start_StencilGridBack ("Bit Grid--{persistent_expand:true,default_expand:false}", Float) = 0
		[ThryStencilCalculator(Back)]
		[ThryRichLabel(10)] _StencilBackCheckResult ("<i>Back face simulation.</i>", Float) = 0
		[HideInInspector] ss_end_StencilGridBack ("Bit Grid", Float) = 0
		[HideInInspector] ss_start_StencilSummaryBack ("Summary--{persistent_expand:true,default_expand:false}", Float) = 0
		[ThryStencilSummary(Back)]
		[ThryRichLabel(10)] _StencilBackSummaryNote ("<i>Back face test and selected operation.</i>", Float) = 0
		[HideInInspector] ss_end_StencilSummaryBack ("Summary", Float) = 0
		[HideInInspector] s_end_StencilCalcBack ("Back Faces", Float) = 0
		[HideInInspector] m_end_StencilCalculator ("Stencil Calculator", Float) = 0
		[HideInInspector] m_end_StencilPassOptions ("Stencil", Float) = 0
	}
	SubShader
	{
		Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalPipeline" "Queue" = "Geometry" }
		HLSLINCLUDE
		#define POI_BIRP 1
		#define POI_URP 2
		#define POI_PIPE POI_URP
		#if !defined(SHADER_API_MOBILE) && !defined(SHADER_API_GLES3)
		#pragma use_dxc vulkan
		#endif
		#if POI_PIPE == POI_BIRP
		#include "UnityCG.cginc"
		#include "AutoLight.cginc"
		#elif POI_PIPE == POI_URP
		#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
		#if defined(SHADER_API_VULKAN)
		#undef TEXTURE3D
		#define TEXTURE3D(textureName) TEXTURE3D_FLOAT(textureName)
		#endif
		#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
		#endif
		SamplerState sampler_linear_clamp;
		SamplerState sampler_linear_repeat;
		SamplerState sampler_trilinear_clamp;
		SamplerState sampler_trilinear_repeat;
		SamplerState sampler_point_clamp;
		SamplerState sampler_point_repeat;
		#define DielectricSpec half4(0.04h, 0.04h, 0.04h, 1.0h - 0.04h)
		#define PI_OVER_2 1.5707963f
		#define PI_OVER_4 0.785398f
		#define EPSILON 0.000001f
		#if POI_PIPE == POI_BIRP
		#define HALF_PI float(1.5707964)
		#define PI float(3.14159265359)
		#define TWO_PI float(6.28318530718)
		#define INV_PI 0.31830988618f
		#define INV_TWO_PI 0.15915494309f
		#ifdef LIGHTMAP_ON
		#define OUTPUT_LIGHTMAP_UV(lightmapUV, lightmapScaleOffset, OUT) OUT.xy = lightmapUV.xy * lightmapScaleOffset.xy + lightmapScaleOffset.zw;
		#else
		#define OUTPUT_LIGHTMAP_UV(lightmapUV, lightmapScaleOffset, OUT)
		#endif
		#elif POI_PIPE == POI_URP
		#define UNITY_PI 3.14159265359f
		#define UNITY_INV_PI 0.31830988618f
		#define UNITY_TWO_PI 6.28318530718f
		#define UNITY_INV_TWO_PI 0.15915494309f
		#define UNITY_DECLARE_TEX2D(tex) Texture2D tex; SamplerState sampler##tex
		#define UNITY_DECLARE_TEX2D_NOSAMPLER(tex) Texture2D tex
		#define UNITY_SAMPLE_TEX2D(tex,coord) tex.Sample (sampler##tex,coord)
		#define UNITY_SAMPLE_TEX2D_LOD(tex, coord, lod) tex.SampleLevel (sampler##tex, coord, lod)
		#define UNITY_SAMPLE_TEX2D_SAMPLER(tex,samplertex,coord) tex.Sample (sampler##samplertex,coord)
		#define UNITY_SAMPLE_TEX2D_SAMPLER_LOD(tex, samplertex, coord, lod) tex.SampleLevel (sampler##samplertex, coord, lod)
		#define UNITY_SAMPLE_TEXCUBE_LOD(tex,coord,lod) tex.SampleLevel (sampler##tex,coord, lod)
		#define UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(tex, samplertex, coord, lod) tex.SampleLevel (sampler##samplertex, coord, lod)
		#define UNITY_DECLARE_TEX2DARRAY(tex) TEXTURE2D_ARRAY(tex); SAMPLER(sampler##tex)
		#define UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(tex) Texture2DArray tex
		#define UNITY_SAMPLE_TEX2DARRAY(tex,coord) SAMPLE_TEXTURE2D_ARRAY(tex, sampler##tex, coord.xy, coord.z)
		#define UNITY_SAMPLE_TEX2DARRAY_SAMPLER_LOD(tex,samplertex,coord,lod) tex.SampleLevel (sampler##samplertex,coord,lod)
		#ifdef UNITY_COLORSPACE_GAMMA
		#define unity_ColorSpaceGrey half4(0.5h, 0.5h, 0.5h, 0.5h)
		#define unity_ColorSpaceDouble half4(2.0h, 2.0h, 2.0h, 2.0h)
		#define unity_ColorSpaceDielectricSpec half4(0.220916301, 0.220916301, 0.220916301, 1.0 - 0.220916301)
		#define unity_ColorSpaceLuminance half4(0.22, 0.707, 0.071, 0.0) // Legacy: alpha is set to 0.0 to specify gamma mode
		#else // Linear values
		#define unity_ColorSpaceGrey half4(0.214041144h, 0.214041144h, 0.214041144h, 0.5h)
		#define unity_ColorSpaceDouble half4(4.59479380h, 4.59479380h, 4.59479380h, 2.0h)
		#define unity_ColorSpaceDielectricSpec half4(0.04, 0.04, 0.04, 1.0 - 0.04) // standard dielectric reflectivity coef at incident angle (= 4%)
		#define unity_ColorSpaceLuminance half4(0.0396819152, 0.458021790, 0.00609653955, 1.0) // Legacy: alpha is set to 1.0 to specify linear mode
		#endif
		real3 DecodeLightmap(real4 encodedIlluminance)
		{
			return DecodeLightmap(encodedIlluminance, real4(LIGHTMAP_HDR_MULTIPLIER, LIGHTMAP_HDR_EXPONENT, 0.0, 0.0));
		}
		real3 DecodeRealtimeLightmap(real4 encodedIlluminance)
		{
			return encodedIlluminance.rgb;
		}
		real3 DecodeDirectionalLightmap(real3 color, real4 dirTex, real3 normalWS)
		{
			real halfLambert = dot(normalWS, dirTex.xyz - 0.5) + 0.5;
			return color * halfLambert / max(1e-4, dirTex.w);
		}
		#if UNITY_VERSION < 202100
		#if defined(UNITY_PLATFORM_META_QUEST) && META_QUEST_LIGHTUNROLL
		#define UNROLL_ONELIGHT [unroll(1)]
		#else
		#define UNROLL_ONELIGHT
		#endif
		#define LIGHT_LOOP_BEGIN(lightCount) \
		UNROLL_ONELIGHT \
		for (uint lightIndex = 0u; lightIndex < lightCount; ++lightIndex) {
		#define LIGHT_LOOP_END }
		#endif
		#endif
		#if POI_PIPE == POI_BIRP
		#define POI_SHADOW_COORDS(idx) UNITY_SHADOW_COORDS(idx)
		#define POI_TRANSFER_SHADOW(a, coord) UNITY_TRANSFER_SHADOW(a, coord)
		#define POI_TRANSFER_SHADOW_CASTER_NOPOS(o, opos) TRANSFER_SHADOW_CASTER_NOPOS(o, opos)
		#define POI_SAMPLE_TEXCUBE_LOD(tex,sample,coord,lod) tex.SampleLevel(sample,coord,lod)
		#define POI_SAMPLE_TEX2DARRAY_SAMPLERGRAD(tex, samplertex, coord, dx, dy) tex.SampleGrad(sampler##samplertex, coord, dx, dy)
		#elif POI_PIPE == POI_URP
		#define POI_SHADOW_COORDS(idx) float4 shadowCoord : TEXCOORD##idx;
		#define POI_TRANSFER_SHADOW(a, coord) a.shadowCoord = TransformWorldToShadowCoord(a.worldPos.rgb);
		#define POI_TRANSFER_SHADOW_CASTER_NOPOS(o, opos) opos = GetShadowPositionHClip(o.worldPos.rgb, o.normal.rgb);
		#define POI_SAMPLE_TEXCUBE_LOD(tex,sample,coord,lod) SAMPLE_TEXTURECUBE_LOD(tex,sample,coord,lod)
		#define POI_SAMPLE_TEX2DARRAY_SAMPLERGRAD(tex, samplertex, coord, dx, dy) SAMPLE_TEXTURE2D_ARRAY_GRAD(tex, sampler##samplertex, coord.xy, floor(coord.z), dx, dy);
		#endif
		#if POI_PIPE == POI_URP
		static half4 unity_4LightAtten0 = 0;
		#endif
		#if POI_PIPE == POI_BIRP
		#define POI_VERTEXLIGHT_ON
		#endif
		#define POI2D_SAMPLE_TEX2D_SAMPLERGRAD(tex, samplertex, coord, dx, dy) tex.SampleGrad(sampler##samplertex, coord, dx, dy)
		#define POI2D_SAMPLE_TEX2D_SAMPLERGRADD(tex, samp, uv, pan, dx, dy) tex.SampleGrad(samp, POI_PAN_UV(uv, pan), dx, dy)
		#define POI_PAN_UV(uv, pan) (uv + POI_TIME.x * pan)
		#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, POI_PAN_UV(uv, pan)))
		#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, dx, dy) (POI2D_SAMPLE_TEX2D_SAMPLERGRAD(tex, texSampler, POI_PAN_UV(uv, pan), dx, dy))
		#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
		#define POI_SAMPLE_1D_X(tex, samp, uv) tex.Sample(samp, float2(uv, 0.5))
		#define POI2D_SAMPLER_GRAD(tex, texSampler, uv, dx, dy) (POI2D_SAMPLE_TEX2D_SAMPLERGRAD(tex, texSampler, uv, dx, dy))
		#define POI2D_SAMPLER_GRADD(tex, texSampler, uv, dx, dy) tex.SampleGrad(texSampler, uv, dx, dy)
		#define POI2D_PAN(tex, uv, pan) (tex2D(tex, POI_PAN_UV(uv, pan)))
		#define POI2D(tex, uv) (tex2D(tex, uv))
		#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
		#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, POI_PAN_UV(uv, pan)))
		#define POI_SAMPLE_CUBE_LOD(tex, sampler, coord, lod) tex.SampleLevel(sampler, coord, lod)
		#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
		#ifndef UNITY_DECLARE_SCREENSPACE_TEXTURE
		#define UNITY_DECLARE_SCREENSPACE_TEXTURE UNITY_DECLARE_TEX2DARRAY
		#endif
		#define POI_SAMPLE_SCREEN(tex, samp, uv)          tex.Sample(samp, float3(uv, unity_StereoEyeIndex))
		#else
		#ifndef UNITY_DECLARE_SCREENSPACE_TEXTURE
		#define UNITY_DECLARE_SCREENSPACE_TEXTURE(tex) sampler2D tex;
		#endif
		#define POI_SAMPLE_SCREEN(tex, samp, uv)          tex.Sample(samp, uv)
		#endif
		#define POI_SAFE_RGB0 half4(mainTexture.rgb * .0001h, 0.0h)
		#define POI_SAFE_RGB1 half4(mainTexture.rgb * .0001h, 1.0h)
		#define POI_SAFE_RGBA mainTexture
		#if POI_PIPE == POI_URP || defined(UNITY_COMPILER_HLSL) || defined(SHADER_API_PSSL) || defined(UNITY_COMPILER_HLSLCC)
		#define PoiInitStruct(type,name) name = (type)0;
		#else
		#define PoiInitStruct(type,name)
		#endif
		#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
		#define POI_NAN (asfloat(-1))
		#define POI_MODE_OPAQUE 0
		#define POI_MODE_CUTOUT 1
		#define POI_MODE_FADE 2
		#define POI_MODE_TRANSPARENT 3
		#define POI_MODE_ADDITIVE 4
		#define POI_MODE_SOFTADDITIVE 5
		#define POI_MODE_MULTIPLICATIVE 6
		#define POI_MODE_2XMULTIPLICATIVE 7
		#define POI_MODE_TRANSCLIPPING 9
		#if defined(SHADER_API_MOBILE) && defined(STEREO_MULTIVIEW_ON) && (defined(SHADER_API_GLES3) || defined(SHADER_API_VULKAN))
		#define POI_DEVICE_QUEST
		#endif
		#if defined(POI_DEVICE_QUEST)
		#define POI_INITIALIZE_VERTEX_OUTPUT_STEREO(output)
		#else
		#define POI_INITIALIZE_VERTEX_OUTPUT_STEREO(output) UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output)
		#endif
		#if defined(POI_DEVICE_QUEST)
		#define poi_maxvertexcount(x) maxvertexcount(6)
		#define poi_instance(x) instance(1)
		#else
		#define poi_maxvertexcount(x) maxvertexcount(x)
		#define poi_instance(x) instance(x)
		#endif
		#if !defined(POI_DEVICE_QUEST)
		#define POI_MAX_VISIBLE_LIGHTS 16
		#else
		#define POI_MAX_VISIBLE_LIGHTS 4
		#endif
		#define POI_DIRECTIONAL 1
		#define POI_POINT_SPOT 2
		#ifndef UNITY_SPECCUBE_LOD_STEPS
		#define UNITY_SPECCUBE_LOD_STEPS (6)
		#endif
		#ifndef UNITY_LIGHTING_COMMON_INCLUDED
		#define UNITY_LIGHTING_COMMON_INCLUDED
		half4 _LightColor0;
		half4 _SpecColor;
		struct UnityLight
		{
			half3 color;
			half3 dir;
			half ndotl;
		};
		struct UnityIndirect
		{
			half3 diffuse;
			half3 specular;
		};
		struct UnityGI
		{
			UnityLight light;
			UnityIndirect indirect;
		};
		struct UnityGIInput
		{
			UnityLight light;
			float3 worldPos;
			half3 worldViewDir;
			half atten;
			half3 ambient;
			#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION) || defined(UNITY_ENABLE_REFLECTION_BUFFERS)
			float4 boxMin[2];
			#endif
			#ifdef UNITY_SPECCUBE_BOX_PROJECTION
			float4 boxMax[2];
			float4 probePosition[2];
			#endif
			float4 probeHDR[2];
		};
		#endif
		struct Unity_GlossyEnvironmentData
		{
			half roughness;
			half3 reflUVW;
		};
		struct PoiMesh
		{
			half3 normals[2];
			half3 objNormal;
			half3 tangentSpaceNormal;
			half3 bentNormal;
			half hasBentNormal;
			half3 binormal[2];
			half3 tangent[2];
			float3 worldPos;
			float3 localPos;
			float3 objectPosition;
			float objectScale;
			half isFrontFace;
			half4 vertexColor;
			uint outlineLayer;
			float4 lightmapUV;
			float2 uv[11];
			float2 parallaxUV;
			float2 dx;
			float2 dy;
			uint isRightHand;
		};
		struct PoiCam
		{
			half3 eyeViewDir;
			half3 viewDir;
			half3 forwardDir;
			float3 worldPos;
			float distanceToVert;
			float4 clipPos;
			float4 screenSpacePosition;
			half3 reflectionDir;
			half3 vertexReflectionDir;
			half3 tangentViewDir;
			float4 posScreenSpace;
			float2 posScreenPixels;
			float2 screenUV;
			half vDotN;
			half vDotNCentered;
			float4 worldDirection;
		};
		struct PoiMods
		{
			half4 Mask;
			float audioLink[5];
			float audioLinkAvailable;
			float audioLinkVersion;
			float4 audioLinkTexture;
			half2 detailMask;
			half2 backFaceDetailIntensity;
			half globalEmission;
			half4 globalColorTheme[12];
			half globalMask[16];
			float ALTime[8];
		};
		#if POI_PIPE == POI_BIRP
		struct Light
		{
			half3   direction;
			half3   color;
			half    distanceAttenuation;
			half    shadowAttenuation;
		};
		struct BRDFData
		{
			half3 albedo;
			half3 diffuse;
			half3 specular;
			half reflectivity;
			half perceptualRoughness;
			half roughness;
			half roughness2;
			half grazingTerm;
			half normalizationTerm;
			half roughness2MinusOne;
		};
		#endif
		struct PoiLight
		{
			half3 direction;
			half nDotVCentered;
			float attenDistance;
			half attenShadows;
			half attenStrength;
			half attenShadowsStrength; // = attenShadows * attenStrength
			half attenuation;
			half additiveShadow;
			half3 lightCookie;
			half3 directColor;
			half3 indirectColor;
			half occlusion;
			half toonShadowMask;
			half detailShadow;
			half3 halfDir;
			half lightMap;
			half lightMapNoAttenuation;
			half3 rampedLightMap;
			half vertexNDotL;
			half nDotL;
			half nDotV;
			half vertexNDotV;
			half nDotH;
			half vertexNDotH;
			half lDotv;
			half lDotH;
			half nDotVSaturated;
			half nDotLSaturated;
			half nDotLNormalized;
			half3 finalLighting;
			half3 finalLightAdd;
			half directLuminance;
			half indirectLuminance;
			half finalLuminance;
			half lightingMinLightBrightness;
			half lightingCapEnabled;
			half lightingMonochromatic;
			int lightType;
			int isAdditive;
			Light unityLight;
			#if POI_PIPE == POI_URP
			BRDFData brdfData;
			BRDFData brdfDataClearCoat;
			AmbientOcclusionFactor aoFactor;
			#endif
			#if defined(VERTEXLIGHT_ON)
			half4 vDotNL;
			half4 vertexVDotNL;
			half3 vColor[4];
			half4 vCorrectedDotNL;
			half4 vAttenuation;
			half4 vSaturatedDotNL;
			float3 vPosition[4];
			half3 vDirection[4];
			half3 vFinalLighting;
			half3 vHalfDir[4];
			half4 vDotNH;
			half4 vertexVDotNH;
			half4 vDotLH;
			#endif
		};
		#if POI_PIPE == POI_URP
		struct PoiLightOut
		{
			half3 totalLighting;
			half3 totalLightAdd;
			half totalLightMap;
			half3 totalRampedLightMap;
		};
		#endif
		struct PoiShadingParams
		{
			half4 debugColor;
			uint lightIndex;
			uint exitCode;
		};
		struct PoiFragData
		{
			half smoothness;
			half smoothness2;
			half metallic;
			half specularMask;
			half reflectionMask;
			half3 baseColor;
			half3 finalColor;
			half alpha;
			half3 emission;
			half toggleVertexLights;
		};
		static half4 PoiSHAr = 0;
		static half4 PoiSHAg = 0;
		static half4 PoiSHAb = 0;
		static half4 PoiSHBr = 0;
		static half4 PoiSHBg = 0;
		static half4 PoiSHBb = 0;
		static half4 PoiSHC  = 0;
		float4 poiTransformClipSpacetoScreenSpaceFrag(float4 clipPos)
		{
			float4 positionSS = float4(clipPos.xyz * clipPos.w, clipPos.w);
			positionSS.xy = positionSS.xy / _ScreenParams.xy;
			return positionSS;
		}
		half3 PoiSHEval_L0L1(half4 normal)
		{
			half3 x;
			x.r = dot(PoiSHAr, normal);
			x.g = dot(PoiSHAg, normal);
			x.b = dot(PoiSHAb, normal);
			return x;
		}
		half3 PoiSHEval_L2(half4 normal)
		{
			half3 x1, x2;
			half4 vB = normal.xyzz * normal.yzzx;
			x1.r = dot(PoiSHBr, vB);
			x1.g = dot(PoiSHBg, vB);
			x1.b = dot(PoiSHBb, vB);
			half  vC = normal.x*normal.x - normal.y*normal.y;
			x2    = PoiSHC.rgb * vC;
			return x1 + x2;
		}
		half3 PoiShadeSH9 (half4 normal)
		{
			half3 res = PoiSHEval_L0L1(normal);
			res += PoiSHEval_L2(normal);
			#ifdef UNITY_COLORSPACE_GAMMA
			res = LinearToGammaSpace(res);
			#endif
			return res;
		}
		struct MochieBRDFData
		{
			half isInitialized;
			half metallic;
			half smoothness;
			half smoothness2;
			half specularMask;
			half reflectionMask;
			half roughness;
			half brdfRoughness;
			half brdfRoughness2;
			float percepRough;
			float percepRough2;
			float omr;
			float3 specCol;
			float2 adjustedAnisotropy;
			float3 pbrNSelect;
			float3 pbrTSelect;
			float3 pbrBSelect;
		};
		inline half Pow5(half x)
		{
			return x * x * x * x * x;
		}
		inline half3 FresnelLerp(half3 F0, half3 F90, half cosA)
		{
			half t = Pow5((1 - cosA));   // ala Schlick interpoliation
			return lerp(F0, F90, t);
		}
		inline half3 FresnelTerm(half3 F0, half cosA)
		{
			half t = Pow5((1 - cosA));   // ala Schlick interpoliation
			return F0 + (1 - F0) * t;
		}
		half perceptualRoughnessToMipmapLevel(half perceptualRoughness)
		{
			return perceptualRoughness * UNITY_SPECCUBE_LOD_STEPS;
		}
		half3 UnpackScaleNormalDXT5nm(half4 packednormal, half bumpScale)
		{
			half3 normal;
			normal.xy = (packednormal.wy * 2 - 1);
			#if (SHADER_TARGET >= 30)
			normal.xy *= bumpScale;
			#endif
			normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
			return normal;
		}
		#ifdef BUILTIN_TARGET_API
		half3 LerpWhiteTo(half3 b, half t)
		{
			half oneMinusT = 1 - t;
			return half3(oneMinusT, oneMinusT, oneMinusT) + b * t;
		}
		#endif
		inline float GGXTerm(float NdotH, float roughness)
		{
			float a2 = roughness * roughness;
			float d = (NdotH * a2 - NdotH) * NdotH + 1.0f; // 2 mad
			return UNITY_INV_PI * a2 / (d * d + 1e-7f); // This function is not intended to be running on Mobile,
		}
		Unity_GlossyEnvironmentData UnityGlossyEnvironmentSetup(half Smoothness, half3 worldViewDir, half3 Normal, half3 fresnel0)
		{
			Unity_GlossyEnvironmentData g;
			g.roughness /* perceptualRoughness */ = 1 - Smoothness;
			g.reflUVW = reflect(-worldViewDir, Normal);
			return g;
		}
		half3 UnpackScaleNormalRGorAG(half4 packednormal, half bumpScale)
		{
			#if defined(UNITY_NO_DXT5nm)
			half3 normal = packednormal.xyz * 2 - 1;
			#if (SHADER_TARGET >= 30)
			normal.xy *= bumpScale;
			#endif
			return normal;
			#elif defined(UNITY_ASTC_NORMALMAP_ENCODING)
			half3 normal;
			normal.xy = (packednormal.wy * 2 - 1);
			normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
			normal.xy *= bumpScale;
			return normal;
			#else
			packednormal.x *= packednormal.w;
			half3 normal;
			normal.xy = (packednormal.xy * 2 - 1);
			#if (SHADER_TARGET >= 30)
			normal.xy *= bumpScale;
			#endif
			normal.z = sqrt(1.0 - saturate(dot(normal.xy, normal.xy)));
			return normal;
			#endif
		}
		half3 UnpackScaleNormal(half4 packednormal, half bumpScale)
		{
			return UnpackScaleNormalRGorAG(packednormal, bumpScale);
		}
		half3 BlendNormals(half3 n1, half3 n2)
		{
			return normalize(half3(n1.xy + n2.xy, n1.z * n2.z));
		}
		inline float2 Pow4(float2 x)
		{
			return x * x * x * x;
		}
		inline float3 Unity_SafeNormalize(float3 inVec)
		{
			float dp3 = max(0.001f, dot(inVec, inVec));
			return inVec * rsqrt(dp3);
		}
		inline float3 BoxProjectedCubemapDirection(float3 worldRefl, float3 worldPos, float4 cubemapCenter, float4 boxMin, float4 boxMax)
		{
			UNITY_BRANCH
			if (cubemapCenter.w > 0.0)
			{
				float3 nrdir = normalize(worldRefl);
				#if 1
				float3 rbmax = (boxMax.xyz - worldPos) / nrdir;
				float3 rbmin = (boxMin.xyz - worldPos) / nrdir;
				float3 rbminmax = (nrdir > 0.0f) ? rbmax : rbmin;
				#else // Optimized version
				float3 rbmax = (boxMax.xyz - worldPos);
				float3 rbmin = (boxMin.xyz - worldPos);
				float3 select = step(float3(0, 0, 0), nrdir);
				float3 rbminmax = lerp(rbmax, rbmin, select);
				rbminmax /= nrdir;
				#endif
				float fa = min(min(rbminmax.x, rbminmax.y), rbminmax.z);
				worldPos -= cubemapCenter.xyz;
				worldRefl = worldPos + nrdir * fa;
			}
			return worldRefl;
		}
		#if POI_PIPE == POI_BIRP
		half3 Unity_GlossyEnvironment(UNITY_ARGS_TEXCUBE(tex), half4 hdr, Unity_GlossyEnvironmentData glossIn)
		{
			half perceptualRoughness = glossIn.roughness /* perceptualRoughness */ ;
			#if 0
			float m = PerceptualRoughnessToRoughness(perceptualRoughness); // m is the real roughness parameter
			const float fEps = 1.192092896e-07F;        // smallest such that 1.0+FLT_EPSILON != 1.0  (+1e-4h is NOT good here. is visibly very wrong)
			float n = (2.0 / max(fEps, m * m)) - 2.0;        // remap to spec power. See eq. 21 in --> https://dl.dropboxusercontent.com/u/55891920/papers/mm_brdf.pdf
			n /= 4;                                     // remap from n_dot_h formulatino to n_dot_r. See section "Pre-convolved Cube Maps vs Path Tracers" --> https://s3.amazonaws.com/docs.knaldtech.com/knald/1.0.0/lys_power_drops.html
			perceptualRoughness = pow(2 / (n + 2), 0.25);      // remap back to square root of real roughness (0.25 include both the sqrt root of the conversion and sqrt for going from roughness to perceptualRoughness)
			#else
			perceptualRoughness = perceptualRoughness * (1.7 - 0.7 * perceptualRoughness);
			#endif
			half mip = perceptualRoughnessToMipmapLevel(perceptualRoughness);
			half3 R = glossIn.reflUVW;
			half4 rgbm = UNITY_SAMPLE_TEXCUBE_LOD(tex, R, mip);
			return DecodeHDR(rgbm, hdr);
		}
		inline half3 UnityGI_IndirectSpecular(UnityGIInput data, half occlusion, Unity_GlossyEnvironmentData glossIn)
		{
			half3 specular;
			#ifdef UNITY_SPECCUBE_BOX_PROJECTION
			half3 originalReflUVW = glossIn.reflUVW;
			glossIn.reflUVW = BoxProjectedCubemapDirection(originalReflUVW, data.worldPos, data.probePosition[0], data.boxMin[0], data.boxMax[0]);
			#endif
			half3 env0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), data.probeHDR[0], glossIn);
			#ifdef UNITY_SPECCUBE_BLENDING
			const half kBlendFactor = 0.99999h;
			half blendLerp = data.boxMin[0].w;
			UNITY_BRANCH
			if (blendLerp < kBlendFactor)
			{
				#ifdef UNITY_SPECCUBE_BOX_PROJECTION
				glossIn.reflUVW = BoxProjectedCubemapDirection(originalReflUVW, data.worldPos, data.probePosition[1], data.boxMin[1], data.boxMax[1]);
				#endif
				half3 env1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), data.probeHDR[1], glossIn);
				specular = lerp(env1, env0, blendLerp);
			}
			else
			{
				specular = env0;
			}
			#else
			specular = env0;
			#endif
			return specular * occlusion;
		}
		inline half3 UnityGI_IndirectSpecular(UnityGIInput data, half occlusion, half3 normalWorld, Unity_GlossyEnvironmentData glossIn)
		{
			return UnityGI_IndirectSpecular(data, occlusion, glossIn);
		}
		#endif
		#if POI_PIPE == POI_URP
		half LinearRgbToLuminance(half3 linearRgb)
		{
			return dot(linearRgb, half3(0.2126729f,  0.7151522f, 0.0721750f));
		}
		#endif
		#ifndef glsl_mod
		#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
		#endif
		#ifndef mod2pi
		#define mod2pi(x) (frac((x) / UNITY_TWO_PI) * UNITY_TWO_PI)
		#endif
		uniform float random_uniform_float_only_used_to_stop_compiler_warnings = 0.0f;
		#if POI_PIPE == POI_URP
		inline float Linear01Depth( float z )
		{
			return 1.0 / (_ZBufferParams.x * z + _ZBufferParams.y);
		}
		inline half3 LinearToGammaSpace (half3 linRGB)
		{
			linRGB = max(linRGB, half3(0.h, 0.h, 0.h));
			return max(1.055h * pow(linRGB, 0.416666667h) - 0.055h, 0.h);
		}
		inline half3 GammaToLinearSpace (half3 sRGB)
		{
			return sRGB * (sRGB * (sRGB * 0.305306011h + 0.682171111h) + 0.012522878h);
		}
		half4 PoiCalculateShadowMask(float2 shadowCoords)
		{
			#if defined(SHADOWS_SHADOWMASK) && defined(LIGHTMAP_ON)
			half4 shadowMask = SAMPLE_SHADOWMASK(shadowCoords); // Shadowmask was sampled from lightmap
			#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
			half4 shadowMask = SAMPLE_SHADOWMASK(shadowCoords); // Shadowmask (probe occlusion) was sampled from APV
			#elif !defined (LIGHTMAP_ON)
			half4 shadowMask = unity_ProbesOcclusion; // Sample shadowmask (probe occlusion) from legacy probes
			#else
			half4 shadowMask = half4(1, 1, 1, 1); // Fallback shadowmask, fully unoccluded
			#endif
			return shadowMask;
		}
		half3 SHEvalLinearL2 (half4 normal)
		{
			half3 x1, x2;
			half4 vB = normal.xyzz * normal.yzzx;
			x1.r = dot(PoiSHBr,vB);
			x1.g = dot(PoiSHBg,vB);
			x1.b = dot(PoiSHBb,vB);
			half vC = normal.x*normal.x - normal.y*normal.y;
			x2 = PoiSHC.rgb * vC;
			return x1 + x2;
		}
		half3 PoiGlossyEnvironmentReflection(half3 reflectVector, float3 positionWS, half perceptualRoughness, half occlusion, float2 normalizedScreenSpaceUV)
		{
			#if UNITY_VERSION >= 202200
			return GlossyEnvironmentReflection(reflectVector, positionWS, perceptualRoughness, occlusion, normalizedScreenSpaceUV);
			#elif UNITY_VERSION >= 202100
			return GlossyEnvironmentReflection(reflectVector, positionWS, perceptualRoughness, occlusion);
			#else
			return GlossyEnvironmentReflection(reflectVector, perceptualRoughness, occlusion);
			#endif
		}
		half3 PoiGlobalIllumination(BRDFData brdfData, BRDFData brdfDataClearCoat, half clearCoatMask,
		half3 bakedGI, half occlusion, float3 positionWS,
		half3 normalWS, half3 viewDirectionWS, float2 normalizedScreenSpaceUV)
		{
			#if UNITY_VERSION >= 202200
			return GlobalIllumination(brdfData, brdfDataClearCoat, clearCoatMask, bakedGI, occlusion, positionWS, normalWS, viewDirectionWS, normalizedScreenSpaceUV);
			#elif UNITY_VERSION >= 202100
			return GlobalIllumination(brdfData, brdfDataClearCoat, clearCoatMask, bakedGI, occlusion, positionWS, normalWS, viewDirectionWS);
			#else
			return GlobalIllumination(brdfData, brdfDataClearCoat, clearCoatMask, bakedGI, occlusion, normalWS, viewDirectionWS);
			#endif
		}
		Light PoiGetMainLight(float4 shadowCoord, float3 positionWS, half4 shadowMask)
		{
			Light light = GetMainLight();
			light.shadowAttenuation = MainLightShadow(shadowCoord, positionWS, shadowMask, _MainLightOcclusionProbes);
			return light;
		}
		Light PoiGetMainLight(float4 shadowCoord, float3 positionWS, half4 shadowMask, AmbientOcclusionFactor aoFactor)
		{
			Light light = PoiGetMainLight(shadowCoord, positionWS, shadowMask);
			#if defined(_SCREEN_SPACE_OCCLUSION) && !defined(_SURFACE_TYPE_TRANSPARENT)
			if (IsLightingFeatureEnabled(DEBUGLIGHTINGFEATUREFLAGS_AMBIENT_OCCLUSION))
			{
				light.color *= aoFactor.directAmbientOcclusion;
			}
			#endif
			return light;
		}
		Light PoiGetAdditionalLight(uint i, float3 positionWS, half4 shadowMask)
		{
			#if USE_CLUSTER_LIGHT_LOOP
			int lightIndex = i;
			#else
			int lightIndex = GetPerObjectLightIndex(i);
			#endif
			Light light = GetAdditionalPerObjectLight(lightIndex, positionWS);
			#if USE_STRUCTURED_BUFFER_FOR_LIGHT_DATA
			half4 occlusionProbeChannels = _AdditionalLightsBuffer[lightIndex].occlusionProbeChannels;
			#else
			half4 occlusionProbeChannels = _AdditionalLightsOcclusionProbes[lightIndex];
			#endif
			light.shadowAttenuation = AdditionalLightShadow(lightIndex, positionWS, light.direction, shadowMask, occlusionProbeChannels);
			return light;
		}
		Light PoiGetAdditionalLight(uint i, InputData inputData, half4 shadowMask, AmbientOcclusionFactor aoFactor)
		{
			Light light = PoiGetAdditionalLight(i, inputData.positionWS, shadowMask);
			#if defined(_SCREEN_SPACE_OCCLUSION) && !defined(_SURFACE_TYPE_TRANSPARENT)
			if (IsLightingFeatureEnabled(DEBUGLIGHTINGFEATUREFLAGS_AMBIENT_OCCLUSION))
			{
				light.color *= aoFactor.directAmbientOcclusion;
			}
			#endif
			return light;
		}
		#if defined(SLZ_LightingExtend)
		half3 LightingPhysicallyBased(BRDFData brdfData, BRDFData brdfDataClearCoat, half3 lightColor, half3 lightDirectionWS, half lightAttenuation, half3 normalWS, half3 viewDirectionWS, half clearCoatMask, bool specularHighlightsOff)
		{
			Light light;
			light.color = half4(lightColor, 1);
			light.direction = lightDirectionWS;
			light.distanceAttenuation = lightAttenuation;
			light.shadowAttenuation = 1;
			return LightingPhysicallyBased(brdfData, brdfDataClearCoat, light, normalWS, viewDirectionWS, clearCoatMask, specularHighlightsOff);
		}
		#endif
		half3 SampleAPV(float3 positionWS, float3 normalWS, float3 viewDirWS)
		{
			#if defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2)
			half3 vertexValue = SampleProbeSHVertex(
			positionWS,
			normalWS,
			viewDirWS
			);
			return vertexValue;
			#else
			return 0;
			#endif
		}
		half CalculateLuminance(half3 color);
		half3 EstimateAPVDominantDirection(float3 positionWS, half3 viewDirWS)
		{
			const half3 n0 = half3( 1.0h,  1.0h,  1.0h);
			const half3 n1 = half3(-1.0h, -1.0h,  1.0h);
			const half3 n2 = half3(-1.0h,  1.0h, -1.0h);
			const half3 n3 = half3( 1.0h, -1.0h, -1.0h);
			half l0 = CalculateLuminance(SampleAPV(positionWS, n0, viewDirWS));
			half l1 = CalculateLuminance(SampleAPV(positionWS, n1, viewDirWS));
			half l2 = CalculateLuminance(SampleAPV(positionWS, n2, viewDirWS));
			half l3 = CalculateLuminance(SampleAPV(positionWS, n3, viewDirWS));
			return half3
			(
			n0 * l0 +
			n1 * l1 +
			n2 * l2 +
			n3 * l3
			);
		}
		#endif
		half3 PoiUnpackNormalScale(half4 packedNormal, half bumpScale)
		{
			#if POI_PIPE == POI_BIRP
			return UnpackScaleNormal(packedNormal, bumpScale);
			#elif POI_PIPE == POI_URP
			return UnpackNormalScale(packedNormal, bumpScale);
			#endif
		}
		half3 PoiObjectToWorldNormal(half3 normal, bool doNormalize = true)
		{
			#if POI_PIPE == POI_BIRP
			return UnityObjectToWorldNormal(normal);
			#elif POI_PIPE == POI_URP
			return TransformObjectToWorldNormal(normal, doNormalize);
			#endif
		}
		float4 PoiObjectToClipPos(in float3 pos)
		{
			#if POI_PIPE == POI_BIRP
			return UnityObjectToClipPos(pos);
			#elif POI_PIPE == POI_URP
			return TransformObjectToHClip(pos);
			#endif
		}
		float4 PoiWorldToClipPos(in float3 pos)
		{
			#if POI_PIPE == POI_BIRP
			return UnityWorldToClipPos(pos);
			#elif POI_PIPE == POI_URP
			return TransformWorldToHClip(pos);
			#endif
		}
		float4 PoiComputeScreenPos(in float4 pos)
		{
			#if POI_PIPE == POI_BIRP
			return ComputeGrabScreenPos(pos);
			#elif POI_PIPE == POI_URP
			return ComputeScreenPos(pos);
			#endif
		}
		half3 PoiDecodeHDR(half4 data, half4 decodeInstructions)
		{
			#if POI_PIPE == POI_BIRP
			return DecodeHDR(data, decodeInstructions);
			#elif POI_PIPE == POI_URP
			return DecodeHDREnvironment(data, decodeInstructions);
			#endif
		}
		float3 PoiWorldSpaceViewDir(float3 worldPos)
		{
			#if POI_PIPE == POI_BIRP
			return UnityWorldSpaceViewDir(worldPos);
			#elif POI_PIPE == POI_URP
			return GetWorldSpaceViewDir(worldPos);
			#endif
		}
		float3 PoiObjSpaceViewDir(float4 v)
		{
			#if POI_PIPE == POI_BIRP
			return ObjSpaceViewDir(v);
			#elif POI_PIPE == POI_URP
			return mul(unity_WorldToObject, float4(_WorldSpaceCameraPos, 1.0)).xyz - v.xyz;
			#endif
		}
		float2 poiUV(float2 uv, float4 tex_st)
		{
			return uv * tex_st.xy + tex_st.zw;
		}
		half CalculateLuminance(half3 color)
		{
			return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
		}
		half AverageLuminance(half3 color)
		{
			return (color.r + color.g + color.b) / 3.0;
		}
		half3 PoiMinBrightness(half3 color, half minBrightness)
		{
			half linearMinBrightness = minBrightness;
			half noiseFloor = max(linearMinBrightness * 0.01h, 0.005h);
			half lum = CalculateLuminance(color);
			half3 scaled = color * (max(lum, linearMinBrightness) / max(lum, 1e-4h));
			return lerp(max(color, linearMinBrightness.xxx), scaled, smoothstep(noiseFloor * 0.5, noiseFloor, lum));
		}
		void PoiApplyMinBrightnessToSH(half minBrightness)
		{
			half linearMinBrightness = minBrightness;
			half3 dc = max(half3(PoiSHAr.w, PoiSHAg.w, PoiSHAb.w)
			+ half3(PoiSHBr.z, PoiSHBg.z, PoiSHBb.z) / 3.0h, 0.0h);
			half3 l1mag = half3(length(PoiSHAr.xyz), length(PoiSHAg.xyz), length(PoiSHAb.xyz));
			half floorLum = CalculateLuminance(max(dc - l1mag, 0.0h));
			half deficit = max(linearMinBrightness - floorLum, 0.0h);
			half dcLum = CalculateLuminance(dc);
			half3 tint = dcLum > 1e-4h ? dc / dcLum : 1.0h;
			PoiSHAr.w += deficit * tint.r;
			PoiSHAg.w += deficit * tint.g;
			PoiSHAb.w += deficit * tint.b;
		}
		float dotToDegrees(float dot)
		{
			dot = clamp(dot, -1.0, 1.0);
			return degrees(acos(dot));
		}
		float dotToDegrees(float3 a, float3 b)
		{
			return dotToDegrees(dot(normalize(a), normalize(b)));
		}
		float poiFastAtan(float x)
		{
			return x * (abs(x) * (1.5707963 * abs(x) - 0.00507668) + 0.420691) /
			(abs(x) * (abs(x) * (0.633387806 + abs(x)) + 0.671041944) + 0.215192627);
		}
		float _VRChatCameraMode;
		float _VRChatMirrorMode;
		uint _VRChatTimeNetworkMs;
		uint _VRChatTimeUTCUnixSeconds;
		float _PoiTimeSource;
		static float4 POI_TIME = (_PoiTimeSource == 1 && _VRChatTimeNetworkMs != 0) ? (((_VRChatTimeNetworkMs << 6) >> 6) * float4(0.00005, 0.001, 0.002, 0.003))
		: _Time;
		float VRCCameraMode()
		{
			return _VRChatCameraMode;
		}
		float VRCMirrorMode()
		{
			return _VRChatMirrorMode;
		}
		bool IsInMirror()
		{
			return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
		}
		bool PoiIsMirrorCamera()
		{
			return IsInMirror() || VRCMirrorMode() > 0;
		}
		bool IsOrthographicCamera()
		{
			return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
		}
		float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
		{
			float R0 = max(0, L0);
			float3 R1 = 0.5f * L1;
			float lenR1 = length(R1);
			float q = dot(normalize(R1), n) * 0.5 + 0.5;
			q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
			float p = 1.0f + 2.0f * lenR1 / R0;
			float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
			return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
		}
		half3 BetterSH9(half4 normal)
		{
			half3 indirect;
			half3 L0 = half3(PoiSHAr.w, PoiSHAg.w, PoiSHAb.w) + half3(PoiSHBr.z, PoiSHBg.z, PoiSHBb.z) / 3.0h;
			indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, PoiSHAr.xyz, normal.xyz);
			indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, PoiSHAg.xyz, normal.xyz);
			indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, PoiSHAb.xyz, normal.xyz);
			indirect = max(0, indirect);
			indirect += SHEvalLinearL2(normal);
			return indirect;
		}
		half3 BetterSH9(half3 normal)
		{
			return BetterSH9(half4(normal, 1.0h));
		}
		float3 getCameraForward()
		{
			float3 forward = float3(0, 0, 1);
			if (PoiIsMirrorCamera())
			{
				float3 mirrorForwardPoint = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 mirrorCameraPosition = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				forward = normalize(mirrorCameraPosition - mirrorForwardPoint);
			}
			else
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1)).xyz;
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				forward = normalize(p2 - p1);
			}
			return forward;
		}
		half3 GetSHLength()
		{
			half3 x, x1;
			x.r = length(PoiSHAr);
			x.g = length(PoiSHAg);
			x.b = length(PoiSHAb);
			x1.r = length(PoiSHBr);
			x1.g = length(PoiSHBg);
			x1.b = length(PoiSHBb);
			return x + x1;
		}
		float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
		{
			#if UNITY_SPECCUBE_BOX_PROJECTION
			if (cubemapPosition.w > 0)
			{
				float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
				float scalar = min(min(factors.x, factors.y), factors.z);
				direction = direction * scalar + (position - cubemapPosition.xyz);
			}
			#endif
			return direction;
		}
		float poiMax(float2 i)
		{
			return max(i.x, i.y);
		}
		float poiMax(float3 i)
		{
			return max(max(i.x, i.y), i.z);
		}
		float poiMax(float4 i)
		{
			return max(max(max(i.x, i.y), i.z), i.w);
		}
		half3 calculateNormal(in half3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in SamplerState mainSampler, in float4 normal_ST, in float2 normalPan, in float normalUV, in half normalIntensity)
		{
			half3 normal = PoiUnpackNormalScale(normalTexture.Sample(mainSampler, POI_PAN_UV(poiUV(poiMesh.uv[normalUV], normal_ST), normalPan)), normalIntensity);
			return normalize(
			normal.x * poiMesh.tangent[0] +
			normal.y * poiMesh.binormal[0] +
			normal.z * baseNormal
			);
		}
		float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
		{
			return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
		}
		float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
		{
			return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
		}
		float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
		{
			return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
		}
		float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
		{
			return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
		}
		float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
		{
			return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
		}
		float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
		{
			return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
		}
		float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
		{
			return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
		}
		float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
		{
			return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
		}
		float2 calcParallax(in float height, in PoiCam poiCam)
		{
			return ((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
		}
		half4 poiBlend(const half sourceFactor, const half4 sourceColor, const half destinationFactor, const half4 destinationColor, const half4 blendFactor)
		{
			half4 sA = 1.0h - blendFactor;
			const half4 blendData[11] = {
				half4(0.0h, 0.0h, 0.0h, 0.0h),
				half4(1.0h, 1.0h, 1.0h, 1.0h),
				destinationColor,
				sourceColor,
				half4(1.0h, 1.0h, 1.0h, 1.0h) - destinationColor,
				sA,
				half4(1.0h, 1.0h, 1.0h, 1.0h) - sourceColor,
				sA,
				float4(1.0, 1.0, 1.0, 1.0) - sA,
				saturate(sourceColor.aaaa),
				1 - sA,
			};
			return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
		}
		half blendColorBurn(half base, half blend)
		{
			return (blend == 0.0) ? blend : max((1.0 - ((1.0 - base) * rcp(random_uniform_float_only_used_to_stop_compiler_warnings + blend))), 0.0);
		}
		half3 blendColorBurn(half3 base, half3 blend)
		{
			return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
		}
		half blendColorDodge(half base, half blend)
		{
			return (blend == 1.0) ? blend : min(base / (1.0 - blend), 1.0);
		}
		half3 blendColorDodge(half3 base, half3 blend)
		{
			return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
		}
		half blendDarken(half base, half blend)
		{
			return min(blend, base);
		}
		half3 blendDarken(half3 base, half3 blend)
		{
			return half3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
		}
		half blendOverlay(half base, half blend)
		{
			return base < 0.5 ? (2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
		}
		half3 blendOverlay(half3 base, half3 blend)
		{
			return half3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
		}
		half blendLighten(half base, half blend)
		{
			return max(blend, base);
		}
		half3 blendLighten(half3 base, half3 blend)
		{
			return half3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
		}
		half blendLinearDodge(half base, half blend)
		{
			return min(base + blend, 1.0);
		}
		half3 blendLinearDodge(half3 base, half3 blend)
		{
			return base + blend;
		}
		half blendMultiply(half base, half blend)
		{
			return base * blend;
		}
		half3 blendMultiply(half3 base, half3 blend)
		{
			return base * blend;
		}
		half blendNormal(half base, half blend)
		{
			return blend;
		}
		half3 blendNormal(half3 base, half3 blend)
		{
			return blend;
		}
		half blendScreen(half base, half blend)
		{
			return 1.0 - ((1.0 - base) * (1.0 - blend));
		}
		half3 blendScreen(half3 base, half3 blend)
		{
			return half3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
		}
		half blendSubtract(half base, half blend)
		{
			return max(base - blend, 0.0);
		}
		half3 blendSubtract(half3 base, half3 blend)
		{
			return max(base - blend, 0.0);
		}
		half blendMixed(half base, half blend)
		{
			return base + base * blend;
		}
		half3 blendMixed(half3 base, half3 blend)
		{
			return base + base * blend;
		}
		half3 customBlend(half3 base, half3 blend, half blendType, half alpha = 1)
		{
			half3 r0 = lerp(base, blend, alpha);                        // Normal (0)
			half3 r1 = lerp(base, blendDarken(base, blend), alpha);     // Darken (1)
			half3 r2 = base * lerp(1.0h, blend, alpha);                 // Multiply (2)
			half3 r5 = lerp(base, blendLighten(base, blend), alpha);    // Lighten (5)
			half3 r6 = lerp(base, blendScreen(base, blend), alpha);     // Screen (6)
			half3 r7 = blendSubtract(base, blend * alpha);              // Subtract (7)
			half3 r8 = lerp(base, blendLinearDodge(base, blend), alpha);// Linear Dodge (8)
			half3 r9 = lerp(base, blendOverlay(base, blend), alpha);    // Overlay (9)
			half3 r20 = lerp(base, blendMixed(base, blend), alpha);     // Mixed (20)
			half t = blendType;
			half w0 = saturate(1.0h - abs(t - 0.0h));
			half w1 = saturate(1.0h - abs(t - 1.0h));
			half w2 = saturate(1.0h - abs(t - 2.0h));
			half w5 = saturate(1.0h - abs(t - 5.0h));
			half w6 = saturate(1.0h - abs(t - 6.0h));
			half w7 = saturate(1.0h - abs(t - 7.0h));
			half w8 = saturate(1.0h - abs(t - 8.0h));
			half w9 = saturate(1.0h - abs(t - 9.0h));
			half w20 = saturate(1.0h - abs(t - 20.0h));
			return r0*w0 + r1*w1 + r2*w2 + r5*w5 + r6*w6 + r7*w7 + r8*w8 + r9*w9 + r20*w20;
		}
		half customBlend(half base, half blend, half blendType, half alpha = 1)
		{
			half r0 = lerp(base, blend, alpha);                        // Normal (0)
			half r2 = base * lerp(1.0h, blend, alpha);                // Multiply (2)
			half r5 = lerp(base, blendLighten(base, blend), alpha);   // Lighten (5)
			half r6 = lerp(base, blendScreen(base, blend), alpha);    // Screen (6)
			half r7 = blendSubtract(base, blend * alpha);             // Subtract (7)
			half r8 = lerp(base, blendLinearDodge(base, blend), alpha);// Linear Dodge (8)
			half r9 = lerp(base, blendOverlay(base, blend), alpha);   // Overlay (9)
			half r20 = lerp(base, blendMixed(base, blend), alpha);    // Mixed (20)
			half t = blendType;
			half w0 = saturate(1.0h - abs(t - 0.0h));
			half w2 = saturate(1.0h - abs(t - 2.0h));
			half w5 = saturate(1.0h - abs(t - 5.0h));
			half w6 = saturate(1.0h - abs(t - 6.0h));
			half w7 = saturate(1.0h - abs(t - 7.0h));
			half w8 = saturate(1.0h - abs(t - 8.0h));
			half w9 = saturate(1.0h - abs(t - 9.0h));
			half w20 = saturate(1.0h - abs(t - 20.0h));
			return r0*w0 + r2*w2 + r5*w5 + r6*w6 + r7*w7 + r8*w8 + r9*w9 + r20*w20;
		}
		#define REPLACE 0
		#define SUBSTRACT 1
		#define MULTIPLY 2
		#define DIVIDE 3
		#define MIN 4
		#define MAX 5
		#define AVERAGE 6
		#define ADD 7
		half maskBlend(half baseMask, half blendMask, half blendType)
		{
			half replace = blendMask;
			half subtract = baseMask - blendMask;
			half multiply = baseMask * blendMask;
			half divide = baseMask / max(blendMask, 0.0001h);
			half minVal = min(baseMask, blendMask);
			half maxVal = max(baseMask, blendMask);
			half average = (baseMask + blendMask) * 0.5h;
			half add = baseMask + blendMask;
			half t = blendType + 0.5h;
			half w0 = step(t, 1.0h);
			half w1 = step(1.0h, t) * step(t, 2.0h);
			half w2 = step(2.0h, t) * step(t, 3.0h);
			half w3 = step(3.0h, t) * step(t, 4.0h);
			half w4 = step(4.0h, t) * step(t, 5.0h);
			half w5 = step(5.0h, t) * step(t, 6.0h);
			half w6 = step(6.0h, t) * step(t, 7.0h);
			half w7 = step(7.0h, t);
			half output = replace * w0 + subtract * w1 + multiply * w2 + divide * w3 + minVal * w4 + maxVal * w5 + average * w6 + add * w7;
			return saturate(output);
		}
		half globalMaskBlend(half baseMask, half globalMaskIndex, half blendType, PoiMods poiMods)
		{
			if (globalMaskIndex == 0)
			{
				return baseMask;
			}
			else
			{
				return maskBlend(baseMask, poiMods.globalMask[globalMaskIndex - 1], blendType);
			}
		}
		half poiSampleMask(half4 sampledTexture, half4 channelStrengths, half blendMode, half invert, half2 remapMinMax, half gamma, half strength, half offset)
		{
			half mask = sampledTexture.r * channelStrengths.x;
			mask = lerp(mask, maskBlend(mask, sampledTexture.g, blendMode), channelStrengths.y);
			mask = lerp(mask, maskBlend(mask, sampledTexture.b, blendMode), channelStrengths.z);
			mask = lerp(mask, maskBlend(mask, sampledTexture.a, blendMode), channelStrengths.w);
			mask = saturate((mask - remapMinMax.x) / max(remapMinMax.y - remapMinMax.x, 0.0001));
			mask = pow(mask, gamma);
			mask = saturate(mask * strength + offset);
			mask = lerp(mask, 1.0 - mask, invert);
			return mask;
		}
		half poiSampleMask(half4 sampledTexture, half channel, half invert)
		{
			half4 channelStrengths = half4(
			channel < 0.5 ? 1 : 0,
			channel >= 0.5 && channel < 1.5 ? 1 : 0,
			channel >= 1.5 && channel < 2.5 ? 1 : 0,
			channel >= 2.5 ? 1 : 0
			);
			return poiSampleMask(sampledTexture, channelStrengths, 0.0h, invert, half2(0.0h, 1.0h), 1.0h, 1.0h, 0.0h);
		}
		half poiSampleMask(half4 sampledTexture, half channel, half invert, half strength, half offset)
		{
			half4 channelStrengths = half4(
			channel < 0.5 ? 1 : 0,
			channel >= 0.5 && channel < 1.5 ? 1 : 0,
			channel >= 1.5 && channel < 2.5 ? 1 : 0,
			channel >= 2.5 ? 1 : 0
			);
			return poiSampleMask(sampledTexture, channelStrengths, 0.0h, invert, half2(0.0h, 1.0h), 1.0h, strength, offset);
		}
		inline float poiRand(float2 co)
		{
			float3 p3 = frac(float3(co.xyx) * 0.1031);
			p3 += dot(p3, p3.yzx + 33.33);
			return frac((p3.x + p3.y) * p3.z);
		}
		inline float4 poiRand4(float2 seed)
		{
			float3 p3 = frac(float3(seed.xyx) * 0.1031);
			p3 += dot(p3, p3.yzx + 33.33);
			float2 a = frac((p3.xx + p3.yz) * p3.zy);
			float2 s2 = seed + 37.0;
			float3 q3 = frac(float3(s2.xyx) * 0.1031);
			q3 += dot(q3, q3.yzx + 33.33);
			float2 b = frac((q3.xx + q3.yz) * q3.zy);
			return float4(a, b);
		}
		inline float2 poiRand2(float seed)
		{
			float2 x = float2(seed, seed * 1.3);
			float3 p3 = frac(float3(x.xyx) * 0.1031);
			p3 += dot(p3, p3.yzx + 33.33);
			return frac((p3.xx + p3.yz) * p3.zy);
		}
		inline float2 poiRand2(float2 seed)
		{
			float3 p3 = frac(float3(seed.xyx) * 0.1031);
			p3 += dot(p3, p3.yzx + 33.33);
			return frac((p3.xx + p3.yz) * p3.zy);
		}
		inline float poiRand3(float seed)
		{
			float p = frac(seed * 0.1031);
			p *= p + 33.33;
			p *= p + p;
			return frac(p);
		}
		inline float3 poiRand3(float2 seed)
		{
			float3 p3 = frac(float3(seed.xyx) * 0.1031);
			p3 += dot(p3, p3.yzx + 33.33);
			return frac((p3.xxy + p3.yzz) * p3.zyx);
		}
		inline float3 poiRand3(float3 seed)
		{
			float3 p3 = frac(seed * 0.1031);
			p3 += dot(p3, p3.zyx + 31.32);
			return frac((p3.xxy + p3.yzz) * p3.zyx);
		}
		inline float3 poiRand3Range(float2 Seed, float Range)
		{
			float3 r = poiRand3(Seed);
			return (r * 2.0 - 1.0) * Range;
		}
		float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed, float timeOffset)
		{
			float3 rando = (float3(
			frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
			frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
			frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
			) * 2 - 1);
			float speed = 1 + wiggleSpeed;
			return float3(sin(((POI_TIME.x + timeOffset) + rando.x * UNITY_PI) * speed), sin(((POI_TIME.x + timeOffset) + rando.y * UNITY_PI) * speed), sin(((POI_TIME.x + timeOffset) + rando.z * UNITY_PI) * speed)) * Range;
		}
		static const half3 HCYwts = half3(0.299h, 0.587h, 0.114h);
		static const float HCLgamma = 3;
		static const float HCLy0 = 100;
		static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
		static const half3 wref = half3(1.0h, 1.0h, 1.0h);
		#define TAU 6.28318531
		half3 HUEtoRGB(in half H)
		{
			half R = abs(H * 6.0h - 3.0h) - 1.0h;
			half G = 2.0h - abs(H * 6.0h - 2.0h);
			half B = 2.0h - abs(H * 6.0h - 4.0h);
			return saturate(half3(R, G, B));
		}
		half3 RGBtoHCV(in half3 RGB)
		{
			half4 P = (RGB.g < RGB.b) ? half4(RGB.bg, -1.0h, 2.0h / 3.0h) : half4(RGB.gb, 0.0h, -1.0h / 3.0h);
			half4 Q = (RGB.r < P.x) ? half4(P.xyw, RGB.r) : half4(RGB.r, P.yzx);
			half C = Q.x - min(Q.w, Q.y);
			half H = abs((Q.w - Q.y) / (6.0h * C + EPSILON) + Q.z);
			return half3(H, C, Q.x);
		}
		half3 RGBtoHSV(half3 c)
		{
			half4 K = half4(0.0h, -1.0h / 3.0h, 2.0h / 3.0h, -1.0h);
			half4 p = lerp(half4(c.bg, K.wz), half4(c.gb, K.xy), step(c.b, c.g));
			half4 q = lerp(half4(p.xyw, c.r), half4(c.r, p.yzx), step(p.x, c.r));
			half d = q.x - min(q.w, q.y);
			const half e = 1.0e-4h;
			return half3(abs(q.z + (q.w - q.y) / (6.0h * d + e)), d / (q.x + e), q.x);
		}
		half3 HSVtoRGB(half3 c)
		{
			half4 K = half4(1.0h, 2.0h / 3.0h, 1.0h / 3.0h, 3.0h);
			half3 p = abs(frac(c.xxx + K.xyz) * 6.0h - K.www);
			return c.z * lerp(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
		}
		void DecomposeHDRColor(in half3 linearColorHDR, out half3 baseLinearColor, out half exposure)
		{
			half maxColorComponent = max(linearColorHDR.r, max(linearColorHDR.g, linearColorHDR.b));
			bool isSDR = maxColorComponent <= 1.0;
			half scaleFactor = isSDR ? 1.0h : (1.0h / maxColorComponent);
			exposure = isSDR ? 0.0 : log(maxColorComponent) * 1.44269504089; // ln(2)
			baseLinearColor = scaleFactor * linearColorHDR;
		}
		half3 ApplyHDRExposure(half3 linearColor, half exposure)
		{
			return linearColor * pow(2, exposure);
		}
		half3 ModifyViaHSV(half3 color, half h, half s, half v)
		{
			half3 colorHSV = RGBtoHSV(color);
			colorHSV.x = frac(colorHSV.x + h);
			colorHSV.y = saturate(colorHSV.y + s);
			colorHSV.z = saturate(colorHSV.z + v);
			return HSVtoRGB(colorHSV);
		}
		half3 ModifyViaHSV(half3 color, half3 HSVMod)
		{
			return ModifyViaHSV(color, HSVMod.x, HSVMod.y, HSVMod.z);
		}
		half4x4 brightnessMatrix(half brightness)
		{
			return half4x4(
			1, 0, 0, 0,
			0, 1, 0, 0,
			0, 0, 1, 0,
			brightness, brightness, brightness, 1
			);
		}
		half4x4 contrastMatrix(half contrast)
		{
			half t = (1.0h - contrast) / 2.0h;
			return half4x4(
			contrast, 0, 0, 0,
			0, contrast, 0, 0,
			0, 0, contrast, 0,
			t, t, t, 1
			);
		}
		half4x4 saturationMatrix(half saturation)
		{
			half3 luminance = half3(0.3086h, 0.6094h, 0.0820h);
			half oneMinusSat = 1.0h - saturation;
			half3 red = luminance.x * oneMinusSat;
			red += half3(saturation, 0.0h, 0.0h);
			half3 green = luminance.y * oneMinusSat;
			green += half3(0.0h, saturation, 0.0h);
			half3 blue = luminance.z * oneMinusSat;
			blue += half3(0.0h, 0.0h, saturation);
			return half4x4(
			red, 0,
			green, 0,
			blue, 0,
			0, 0, 0, 1
			);
		}
		half4 PoiColorBCS(half4 color, half brightness, half contrast, half saturation)
		{
			return mul(color, mul(brightnessMatrix(brightness), mul(contrastMatrix(contrast), saturationMatrix(saturation))));
		}
		half3 PoiColorBCS(half3 color, half brightness, half contrast, half saturation)
		{
			return mul(half4(color, 1.0h), mul(brightnessMatrix(brightness), mul(contrastMatrix(contrast), saturationMatrix(saturation)))).rgb;
		}
		float3 linear_srgb_to_oklab(float3 c)
		{
			float l = 0.4122214708 * c.x + 0.5363325363 * c.y + 0.0514459929 * c.z;
			float m = 0.2119034982 * c.x + 0.6806995451 * c.y + 0.1073969566 * c.z;
			float s = 0.0883024619 * c.x + 0.2817188376 * c.y + 0.6299787005 * c.z;
			float l_ = pow(l, 1.0 / 3.0);
			float m_ = pow(m, 1.0 / 3.0);
			float s_ = pow(s, 1.0 / 3.0);
			return float3(
			0.2104542553 * l_ + 0.7936177850 * m_ - 0.0040720468 * s_,
			1.9779984951 * l_ - 2.4285922050 * m_ + 0.4505937099 * s_,
			0.0259040371 * l_ + 0.7827717662 * m_ - 0.8086757660 * s_
			);
		}
		float3 oklab_to_linear_srgb(float3 c)
		{
			float l_ = c.x + 0.3963377774 * c.y + 0.2158037573 * c.z;
			float m_ = c.x - 0.1055613458 * c.y - 0.0638541728 * c.z;
			float s_ = c.x - 0.0894841775 * c.y - 1.2914855480 * c.z;
			float l = l_ * l_ * l_;
			float m = m_ * m_ * m_;
			float s = s_ * s_ * s_;
			return float3(
			+ 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
			- 1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
			- 0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s
			);
		}
		half3 PoiApplyChromatize(half3 linearColor, half chromatize)
		{
			float minRgb = min(linearColor.r, min(linearColor.g, linearColor.b));
			float maxRgb = max(linearColor.r, max(linearColor.g, linearColor.b));
			float rangeRgb = maxRgb - minRgb;
			float3 saturatedRef = (rangeRgb > 0.0001) ? (linearColor - minRgb) / rangeRgb : float3(1, 0, 0);
			float3 saturatedOklab = linear_srgb_to_oklab(saturatedRef);
			float maxChroma = length(saturatedOklab.yz);
			float3 oklab = linear_srgb_to_oklab(linearColor);
			float chroma = length(oklab.yz);
			float hue = atan2(oklab.z, oklab.y);
			chroma = min(chroma * (1.0 + chromatize), maxChroma);
			oklab.y = chroma * cos(hue);
			oklab.z = chroma * sin(hue);
			return oklab_to_linear_srgb(oklab);
		}
		half3 hueShiftOKLab(half3 color, half shift, half selectOrShift)
		{
			float3 oklab = linear_srgb_to_oklab(color);
			float chroma = length(oklab.yz);
			oklab.y = selectOrShift > 0.5 ? oklab.y : chroma;
			oklab.z = selectOrShift > 0.5 ? oklab.z : 0;
			float s, c;
			sincos(shift * UNITY_TWO_PI, s, c);
			oklab.yz = float2(c * oklab.y - s * oklab.z, s * oklab.y + c * oklab.z);
			return oklab_to_linear_srgb(oklab);
		}
		half3 hueShiftHSV(half3 color, half hueOffset, half selectOrShift)
		{
			half3 hsvCol = RGBtoHSV(color);
			hsvCol.x = hsvCol.x * selectOrShift + hueOffset;
			return HSVtoRGB(hsvCol);
		}
		half3 hueShift(half3 color, half shift, half ColorSpace, half selectOrShift = 0.0h)
		{
			half3 oklab = hueShiftOKLab(color, shift, selectOrShift);
			half3 hsv = hueShiftHSV(color, shift, selectOrShift);
			half w = saturate(ColorSpace);
			return lerp(oklab, hsv, w);
		}
		half4 hueShift(half4 color, half shift, half ColorSpace, half selectOrShift = 0.0h)
		{
			return half4(hueShift(color.rgb, shift, ColorSpace, selectOrShift), color.a);
		}
		float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
		{
			float angleX = radians(x);
			float c = cos(angleX);
			float s = sin(angleX);
			float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
			0, c, -s, 0,
			0, s, c, 0,
			0, 0, 0, 1);
			float angleY = radians(y);
			c = cos(angleY);
			s = sin(angleY);
			float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
			0, 1, 0, 0,
			- s, 0, c, 0,
			0, 0, 0, 1);
			float angleZ = radians(z);
			c = cos(angleZ);
			s = sin(angleZ);
			float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
			s, c, 0, 0,
			0, 0, 1, 0,
			0, 0, 0, 1);
			return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
		}
		float4x4 poiRotationMatrixFromAngles(float3 angles)
		{
			float angleX = radians(angles.x);
			float c = cos(angleX);
			float s = sin(angleX);
			float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
			0, c, -s, 0,
			0, s, c, 0,
			0, 0, 0, 1);
			float angleY = radians(angles.y);
			c = cos(angleY);
			s = sin(angleY);
			float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
			0, 1, 0, 0,
			- s, 0, c, 0,
			0, 0, 0, 1);
			float angleZ = radians(angles.z);
			c = cos(angleZ);
			s = sin(angleZ);
			float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
			s, c, 0, 0,
			0, 0, 1, 0,
			0, 0, 0, 1);
			return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
		}
		float3 _VRChatMirrorCameraPos;
		float3 _VRChatScreenCameraPos;
		float3 getCameraPosition(bool useCenterEye = true)
		{
			if (VRCMirrorMode() > 0 && useCenterEye)
			return _VRChatMirrorCameraPos;
			float3 camPosWS = _WorldSpaceCameraPos;
			#ifdef USING_STEREO_MATRICES
			float3 centerEyePos = unity_StereoWorldSpaceCameraPos[0] * .5 + unity_StereoWorldSpaceCameraPos[1] * .5;
			camPosWS = useCenterEye ? centerEyePos : unity_StereoWorldSpaceCameraPos[unity_StereoEyeIndex];
			#endif
			return camPosWS;
		}
		float2 calcPixelScreenUVs(half4 grabPos)
		{
			half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
			#if UNITY_SINGLE_PASS_STEREO
			uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
			#else
			uv.xy *= _ScreenParams.xy;
			#endif
			return uv;
		}
		float CalcMipLevel(float2 texture_coord)
		{
			float2 dx = ddx(texture_coord);
			float2 dy = ddy(texture_coord);
			float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
			return 0.5 * log2(delta_max_sqr);
		}
		float inverseLerp(float A, float B, float T)
		{
			return (T - A) / (B - A);
		}
		float inverseLerp2(float2 a, float2 b, float2 value)
		{
			float2 AB = b - a;
			float2 AV = value - a;
			return dot(AV, AB) / dot(AB, AB);
		}
		float inverseLerp3(float3 a, float3 b, float3 value)
		{
			float3 AB = b - a;
			float3 AV = value - a;
			return dot(AV, AB) / dot(AB, AB);
		}
		float inverseLerp4(float4 a, float4 b, float4 value)
		{
			float4 AB = b - a;
			float4 AV = value - a;
			return dot(AV, AB) / dot(AB, AB);
		}
		float4 QuaternionFromMatrix(
		float m00, float m01, float m02,
		float m10, float m11, float m12,
		float m20, float m21, float m22)
		{
			float4 q;
			float trace = m00 + m11 + m22;
			if (trace > 0)
			{
				float s = sqrt(trace + 1) * 2;
				q.w = 0.25 * s;
				q.x = (m21 - m12) / s;
				q.y = (m02 - m20) / s;
				q.z = (m10 - m01) / s;
			}
			else if (m00 > m11 && m00 > m22)
			{
				float s = sqrt(1 + m00 - m11 - m22) * 2;
				q.w = (m21 - m12) / s;
				q.x = 0.25 * s;
				q.y = (m01 + m10) / s;
				q.z = (m02 + m20) / s;
			}
			else if (m11 > m22)
			{
				float s = sqrt(1 + m11 - m00 - m22) * 2;
				q.w = (m02 - m20) / s;
				q.x = (m01 + m10) / s;
				q.y = 0.25 * s;
				q.z = (m12 + m21) / s;
			}
			else
			{
				float s = sqrt(1 + m22 - m00 - m11) * 2;
				q.w = (m10 - m01) / s;
				q.x = (m02 + m20) / s;
				q.y = (m12 + m21) / s;
				q.z = 0.25 * s;
			}
			return q;
		}
		float4 MulQuat(float4 a, float4 b)
		{
			return float4(
			a.w * b.x + a.x * b.w + a.y * b.z - a.z * b.y,
			a.w * b.y - a.x * b.z + a.y * b.w + a.z * b.x,
			a.w * b.z + a.x * b.y - a.y * b.x + a.z * b.w,
			a.w * b.w - a.x * b.x - a.y * b.y - a.z * b.z
			);
		}
		float4 QuaternionFromBasis(float3 sx, float3 sy, float3 sz)
		{
			return QuaternionFromMatrix(
			sx.x, sy.x, sz.x,
			sx.y, sy.y, sz.y,
			sx.z, sy.z, sz.z
			);
		}
		float4 BuildQuatFromForwardUp(float3 forward, float3 up)
		{
			float3 f = normalize(forward);
			float3 u = normalize(up);
			float3 x = normalize(cross(u, f));
			float3 y = cross(f, x);
			return QuaternionFromBasis(x, y, f);
		}
		float3 QuaternionToEuler(float4 q)
		{
			float3 euler;
			float sinr_cosp = 2 * (q.w * q.z + q.x * q.y);
			float cosr_cosp = 1 - 2 * (q.z * q.z + q.x * q.x);
			euler.z = atan2(sinr_cosp, cosr_cosp) * 57.2958;
			float sinp = 2 * (q.w * q.x - q.y * q.z);
			if (abs(sinp) >= 1)
			euler.x = (sinp >= 0 ? 1 : - 1) * 90;
			else
			euler.x = asin(sinp) * 57.2958;
			float siny_cosp = 2 * (q.w * q.y + q.z * q.x);
			float cosy_cosp = 1 - 2 * (q.x * q.x + q.y * q.y);
			euler.y = atan2(siny_cosp, cosy_cosp) * 57.2958;
			return euler;
		}
		float4 EulerToQuaternion(float3 euler)
		{
			float3 eulerRad = euler * 0.0174533;
			float cx = cos(eulerRad.x * 0.5);
			float sx = sin(eulerRad.x * 0.5);
			float cy = cos(eulerRad.y * 0.5);
			float sy = sin(eulerRad.y * 0.5);
			float cz = cos(eulerRad.z * 0.5);
			float sz = sin(eulerRad.z * 0.5);
			float4 q;
			q.w = cx * cy * cz + sx * sy * sz;
			q.x = sx * cy * cz - cx * sy * sz;
			q.y = cx * sy * cz + sx * cy * sz;
			q.z = cx * cy * sz - sx * sy * cz;
			return q;
		}
		float4 quaternion_conjugate(float4 v)
		{
			return float4(
			v.x, -v.yzw
			);
		}
		float4 quaternion_mul(float4 v1, float4 v2)
		{
			float4 result1 = (v1.x * v2 + v1 * v2.x);
			float4 result2 = float4(
			- dot(v1.yzw, v2.yzw),
			cross(v1.yzw, v2.yzw)
			);
			return float4(result1 + result2);
		}
		float4 get_quaternion_from_angle(float3 axis, float angle)
		{
			float sn = sin(angle * 0.5);
			float cs = cos(angle * 0.5);
			return float4(axis * sn, cs);
		}
		float4 quaternion_from_vector(float3 inVec)
		{
			return float4(0.0, inVec);
		}
		float degree_to_radius(float degree)
		{
			return (
			degree / 180.0 * UNITY_PI
			);
		}
		float3 rotate_with_quaternion(float3 inVec, float3 rotation)
		{
			float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
			float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
			float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
			#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
			float4 quaternion = normalize(MUL3(qx, qy, qz));
			float4 conjugate = quaternion_conjugate(quaternion);
			float4 inVecQ = quaternion_from_vector(inVec);
			float3 rotated = (
			MUL3(quaternion, inVecQ, conjugate)
			).yzw;
			return rotated;
		}
		float3 RotateByQuaternion(float4 q, float3 v)
		{
			float3 u = q.xyz;
			float s = q.w;
			return 2.0 * dot(u, v) * u
			+ (s * s - dot(u, u)) * v
			+ 2.0 * s * cross(u, v);
		}
		float4 SlerpQuaternion(float4 qa, float4 qb, float t)
		{
			float cosHalfTheta = dot(qa, qb);
			if (cosHalfTheta < 0.0)
			{
				qb = -qb;
				cosHalfTheta = -cosHalfTheta;
			}
			if (cosHalfTheta > 0.9995)
			{
				float4 qr = normalize(qa * (1 - t) + qb * t);
				return qr;
			}
			float halfTheta = acos(cosHalfTheta);
			float sinHalfTheta = sqrt(1.0 - cosHalfTheta * cosHalfTheta);
			float a = sin((1 - t) * halfTheta) / sinHalfTheta;
			float b = sin(t * halfTheta) / sinHalfTheta;
			return qa * a + qb * b;
		}
		float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
		{
			input.rgb *= (scale.xyz * scale.w);
			input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
			return input;
		}
		float2 RotateUV(float2 _uv, float _radian, float2 _piv, float _time)
		{
			float RotateUV_ang = _radian;
			float RotateUV_cos = cos(_time * RotateUV_ang);
			float RotateUV_sin = sin(_time * RotateUV_ang);
			return (mul(_uv - _piv, float2x2(RotateUV_cos, -RotateUV_sin, RotateUV_sin, RotateUV_cos)) + _piv);
		}
		float3 RotateAroundAxis(float3 original, float3 axis, float radian)
		{
			float s = sin(radian);
			float c = cos(radian);
			float one_minus_c = 1.0 - c;
			axis = normalize(axis);
			float3x3 rot_mat = {
				one_minus_c * axis.x * axis.x + c, one_minus_c * axis.x * axis.y - axis.z * s, one_minus_c * axis.z * axis.x + axis.y * s,
				one_minus_c * axis.x * axis.y + axis.z * s, one_minus_c * axis.y * axis.y + c, one_minus_c * axis.y * axis.z - axis.x * s,
				one_minus_c * axis.z * axis.x - axis.y * s, one_minus_c * axis.y * axis.z + axis.x * s, one_minus_c * axis.z * axis.z + c
			};
			return mul(rot_mat, original);
		}
		half3 lilToneCorrection(half3 c, half4 hsvg)
		{
			c = pow(abs(c), hsvg.w);
			half4 p = (c.b > c.g) ? half4(c.bg, -1.0h, 2.0h / 3.0h) : half4(c.gb, 0.0h, -1.0h / 3.0h);
			half4 q = (p.x > c.r) ? half4(p.xyw, c.r) : half4(c.r, p.yzx);
			half d = q.x - min(q.w, q.y);
			const half e = 1.0e-4h;
			half3 hsv = half3(abs(q.z + (q.w - q.y) / (6.0h * d + e)), d / (q.x + e), q.x);
			hsv = half3(hsv.x + hsvg.x, saturate(hsv.y * hsvg.y), saturate(hsv.z * hsvg.z));
			return hsv.z - hsv.z * hsv.y + hsv.z * hsv.y * saturate(abs(frac(hsv.x + half3(1.0h, 2.0h / 3.0h, 1.0h / 3.0h)) * 6.0h - 3.0h) - 1.0h);
		}
		half3 lilBlendColor(half3 dstCol, half3 srcCol, half3 srcA, int blendMode)
		{
			half3 ad = dstCol + srcCol;
			half3 mu = dstCol * srcCol;
			half3 outCol = half3(0.0h, 0.0h, 0.0h);
			if (blendMode == 0) outCol = srcCol; // Normal
			if (blendMode == 1) outCol = ad; // Add
			if (blendMode == 2) outCol = max(ad - mu, dstCol); // Screen
			if (blendMode == 3) outCol = mu; // Multiply
			return lerp(dstCol, outCol, srcA);
		}
		float lilIsIn0to1(float f)
		{
			float value = 0.5 - abs(f - 0.5);
			return saturate(value / clamp(fwidth(value), 0.0001, 1.0));
		}
		float lilIsIn0to1(float f, float nv)
		{
			float value = 0.5 - abs(f - 0.5);
			return saturate(value / clamp(fwidth(value), 0.0001, nv));
		}
		float poiEdgeLinearNoSaturate(float value, float border)
		{
			return (value - border) / clamp(fwidth(value), 0.0001, 1.0);
		}
		float3 poiEdgeLinearNoSaturate(float value, float3 border)
		{
			return float3(
			(value - border.x) / clamp(fwidth(value), 0.0001, 1.0),
			(value - border.y) / clamp(fwidth(value), 0.0001, 1.0),
			(value - border.z) / clamp(fwidth(value), 0.0001, 1.0)
			);
		}
		float poiEdgeLinearNoSaturate(float value, float border, float blur)
		{
			float borderMin = saturate(border - blur * 0.5);
			float borderMax = saturate(border + blur * 0.5);
			return (value - borderMin) / max(saturate(borderMax - borderMin + fwidth(value)), .0001);
		}
		float poiEdgeLinearNoSaturate(float value, float border, float blur, float borderRange)
		{
			float borderMin = saturate(border - blur * 0.5 - borderRange);
			float borderMax = saturate(border + blur * 0.5);
			return (value - borderMin) / max(saturate(borderMax - borderMin + fwidth(value)), .0001);
		}
		float poiEdgeNonLinearNoSaturate(float value, float border)
		{
			float fwidthValue = fwidth(value);
			return smoothstep(border - fwidthValue, border + fwidthValue, value);
		}
		float poiEdgeNonLinearNoSaturate(float value, float border, float blur)
		{
			float fwidthValue = fwidth(value);
			float borderMin = saturate(border - blur * 0.5);
			float borderMax = saturate(border + blur * 0.5);
			return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
		}
		float poiEdgeNonLinearNoSaturate(float value, float border, float blur, float borderRange)
		{
			float fwidthValue = fwidth(value);
			float borderMin = saturate(border - blur * 0.5 - borderRange);
			float borderMax = saturate(border + blur * 0.5);
			return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
		}
		float poiEdgeNonLinear(float value, float border)
		{
			return saturate(poiEdgeNonLinearNoSaturate(value, border));
		}
		float poiEdgeNonLinear(float value, float border, float blur)
		{
			return saturate(poiEdgeNonLinearNoSaturate(value, border, blur));
		}
		float poiEdgeNonLinear(float value, float border, float blur, float borderRange)
		{
			return saturate(poiEdgeNonLinearNoSaturate(value, border, blur, borderRange));
		}
		float poiEdgeLinear(float value, float border)
		{
			return saturate(poiEdgeLinearNoSaturate(value, border));
		}
		float poiEdgeLinear(float value, float border, float blur)
		{
			return saturate(poiEdgeLinearNoSaturate(value, border, blur));
		}
		float poiEdgeLinear(float value, float border, float blur, float borderRange)
		{
			return saturate(poiEdgeLinearNoSaturate(value, border, blur, borderRange));
		}
		half3 OpenLitLinearToSRGB(half3 col)
		{
			return LinearToGammaSpace(col);
		}
		half3 OpenLitSRGBToLinear(half3 col)
		{
			return GammaToLinearSpace(col);
		}
		half OpenLitLuminance(half3 rgb)
		{
			#if defined(UNITY_COLORSPACE_GAMMA)
			return dot(rgb, half3(0.22h, 0.707h, 0.071h));
			#else
			return dot(rgb, half3(0.0396819152h, 0.458021790h, 0.00609653955h));
			#endif
		}
		half3 AdjustLitLuminance(half3 rgb, half targetLuminance)
		{
			half currentLuminance;
			#if defined(UNITY_COLORSPACE_GAMMA)
			currentLuminance = dot(rgb, float3(0.22, 0.707, 0.071));
			#else
			currentLuminance = dot(rgb, float3(0.0396819152, 0.458021790, 0.00609653955));
			#endif
			half luminanceRatio = targetLuminance / currentLuminance;
			return rgb * luminanceRatio;
		}
		half3 ClampLuminance(half3 rgb, half minLuminance, half maxLuminance)
		{
			half currentLuminance = dot(rgb, float3(0.299, 0.587, 0.114));
			float minRatio = (currentLuminance != 0) ? minLuminance / currentLuminance : 1.0;
			float maxRatio = (currentLuminance != 0) ? maxLuminance / currentLuminance : 1.0;
			half luminanceRatio = clamp(min(maxRatio, max(minRatio, 1.0)), 0.0, 1.0);
			return lerp(rgb, rgb * luminanceRatio, luminanceRatio < 1.0);
		}
		half3 MaxLuminance(half3 rgb, half maxLuminance)
		{
			half currentLuminance = dot(rgb, float3(0.299, 0.587, 0.114));
			half luminanceRatio = (currentLuminance != 0) ? maxLuminance / max(currentLuminance, 0.00001) : 1.0;
			return lerp(rgb, rgb * luminanceRatio, currentLuminance > maxLuminance);
		}
		half OpenLitGray(half3 rgb)
		{
			return dot(rgb, float3(1.0 / 3.0, 1.0 / 3.0, 1.0 / 3.0));
		}
		void OpenLitShadeSH9ToonDouble(half3 lightDirection, out half3 shMax, out half3 shMin)
		{
			#if !defined(LIGHTMAP_ON)
			half3 N = lightDirection * 0.666666;
			half4 vB = N.xyzz * N.yzzx;
			half3 res = half3(PoiSHAr.w, PoiSHAg.w, PoiSHAb.w);
			res.r += dot(PoiSHBr, vB);
			res.g += dot(PoiSHBg, vB);
			res.b += dot(PoiSHBb, vB);
			res += PoiSHC.rgb * (N.x * N.x - N.y * N.y);
			half3 l1;
			l1.r = dot(PoiSHAr.rgb, N);
			l1.g = dot(PoiSHAg.rgb, N);
			l1.b = dot(PoiSHAb.rgb, N);
			shMax = res + l1;
			shMin = res - l1;
			#if defined(UNITY_COLORSPACE_GAMMA)
			shMax = OpenLitLinearToSRGB(shMax);
			shMin = OpenLitLinearToSRGB(shMin);
			#endif
			#else
			shMax = 0.0;
			shMin = 0.0;
			#endif
		}
		half3 OpenLitComputeCustomLightDirection(half4 lightDirectionOverride)
		{
			half3 customDir = length(lightDirectionOverride.xyz) * normalize(mul((float3x3)unity_ObjectToWorld, lightDirectionOverride.xyz));
			return lightDirectionOverride.w ? customDir : lightDirectionOverride.xyz; // .w isn't doc'd anywhere and is always 0 unless end user changes it
		}
		half3 OpenLitLightingDirectionForSH9(half3 mainDir)
		{
			#if !defined(LIGHTMAP_ON)
			half3 sh9Dir = PoiSHAr.xyz * 0.333333 + PoiSHAg.xyz * 0.333333 + PoiSHAb.xyz * 0.333333;
			half3 sh9DirAbs = half3(sh9Dir.x, abs(sh9Dir.y), sh9Dir.z);
			#else
			half3 sh9Dir = 0;
			half3 sh9DirAbs = 0;
			#endif
			half3 lightDirectionForSH9 = sh9Dir + mainDir;
			lightDirectionForSH9 = dot(lightDirectionForSH9, lightDirectionForSH9) < 0.000001 ? 0 : normalize(lightDirectionForSH9);
			return lightDirectionForSH9;
		}
		half3 OpenLitLightingDirectionForSH9(Light light)
		{
			half3 mainDir = light.direction * OpenLitLuminance(light.color);
			return OpenLitLightingDirectionForSH9(mainDir);
		}
		half3 OpenLitLightingDirection(half4 lightDirectionOverride, half3 mainDir)
		{
			#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
			half3 sh9Dir = PoiSHAr.xyz * 0.333333 + PoiSHAg.xyz * 0.333333 + PoiSHAb.xyz * 0.333333;
			half3 sh9DirAbs = half3(sh9Dir.x, abs(sh9Dir.y), sh9Dir.z);
			#else
			half3 sh9Dir = 0;
			half3 sh9DirAbs = 0;
			#endif
			half3 customDir = OpenLitComputeCustomLightDirection(lightDirectionOverride);
			return normalize(sh9DirAbs + mainDir + customDir);
		}
		half3 OpenLitLightingDirection(half4 lightDirectionOverride, Light light)
		{
			half3 mainDir = light.direction.xyz * OpenLitLuminance(light.color);
			return OpenLitLightingDirection(lightDirectionOverride, mainDir);
		}
		half3 OpenLitLightingDirection(Light light)
		{
			half4 customDir = half4(0.001, 0.002, 0.001, 0.0);
			return OpenLitLightingDirection(customDir, light);
		}
		inline float4 CalculateFrustumCorrection()
		{
			float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
			float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
			return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
		}
		inline float CorrectedLinearEyeDepth(float z, float correctionFactor)
		{
			return 1.f / (z / UNITY_MATRIX_P._34 + correctionFactor);
		}
		inline float GetFOVScale()
		{
			return abs(UNITY_MATRIX_P._m11) * 0.5;
		}
		inline float GetAspectRatio()
		{
			return _ScreenParams.y / _ScreenParams.x;
		}
		inline float WorldToScreenScale(float worldRadius, float distance)
		{
			return (worldRadius / max(distance, 0.001)) * GetFOVScale();
		}
		inline float2 GetScreenAspectCorrection()
		{
			return float2(_ScreenParams.y / _ScreenParams.x, 1.0);
		}
		float evalRamp4(float time, float4 ramp)
		{
			return lerp(ramp.x, ramp.y, smoothstep(ramp.z, ramp.w, time));
		}
		float2 sharpSample(float4 texelSize, float2 p)
		{
			p = p * texelSize.zw;
			float2 c = max(0.0, fwidth(p));
			p = floor(p) + saturate(frac(p) / c);
			p = (p - 0.5) * texelSize.xy;
			return p;
		}
		float2 poiSnapUVToGrid(float2 uv, float2 resolution)
		{
			return (floor(uv * resolution) + 0.5) / resolution;
		}
		void poiSnapUVGradients(float2 continuousUV, float2 cellSize, out float2 dx, out float2 dy)
		{
			dx = max(abs(ddx(continuousUV)), float2(cellSize.x, 0));
			dy = max(abs(ddy(continuousUV)), float2(0, cellSize.y));
		}
		float2 poiSnapUVToForeignGrid(float2 sampleUV, float2 gridUV, float2 resolution, out float2 cellFootprint)
		{
			float2 dGdx = ddx(gridUV);
			float2 dGdy = ddy(gridUV);
			float2 dSdx = ddx(sampleUV);
			float2 dSdy = ddy(sampleUV);
			float det = dGdx.x * dGdy.y - dGdy.x * dGdx.y;
			if (abs(det) < 1e-12)
			{
				cellFootprint = rcp(resolution);
				return poiSnapUVToGrid(sampleUV, resolution);
			}
			float2 toCellCenter = poiSnapUVToGrid(gridUV, resolution) - gridUV;
			float rcpDet = rcp(det);
			float2 dSdu = (dGdy.y * dSdx - dGdx.y * dSdy) * rcpDet;
			float2 dSdv = (dGdx.x * dSdy - dGdy.x * dSdx) * rcpDet;
			cellFootprint = abs(dSdu) / resolution.x + abs(dSdv) / resolution.y;
			return sampleUV + toCellCenter.x * dSdu + toCellCenter.y * dSdv;
		}
		void applyToGlobalMask(inout PoiMods poiMods, int index, int blendType, half val)
		{
			half v0 = saturate(maskBlend(poiMods.globalMask[0], val, blendType));
			half v1 = saturate(maskBlend(poiMods.globalMask[1], val, blendType));
			half v2 = saturate(maskBlend(poiMods.globalMask[2], val, blendType));
			half v3 = saturate(maskBlend(poiMods.globalMask[3], val, blendType));
			half v4 = saturate(maskBlend(poiMods.globalMask[4], val, blendType));
			half v5 = saturate(maskBlend(poiMods.globalMask[5], val, blendType));
			half v6 = saturate(maskBlend(poiMods.globalMask[6], val, blendType));
			half v7 = saturate(maskBlend(poiMods.globalMask[7], val, blendType));
			half v8 = saturate(maskBlend(poiMods.globalMask[8], val, blendType));
			half v9 = saturate(maskBlend(poiMods.globalMask[9], val, blendType));
			half v10 = saturate(maskBlend(poiMods.globalMask[10], val, blendType));
			half v11 = saturate(maskBlend(poiMods.globalMask[11], val, blendType));
			half v12 = saturate(maskBlend(poiMods.globalMask[12], val, blendType));
			half v13 = saturate(maskBlend(poiMods.globalMask[13], val, blendType));
			half v14 = saturate(maskBlend(poiMods.globalMask[14], val, blendType));
			half v15 = saturate(maskBlend(poiMods.globalMask[15], val, blendType));
			half i = index;
			half w0 = saturate(1.0h - abs(i - 0.0h));
			half w1 = saturate(1.0h - abs(i - 1.0h));
			half w2 = saturate(1.0h - abs(i - 2.0h));
			half w3 = saturate(1.0h - abs(i - 3.0h));
			half w4 = saturate(1.0h - abs(i - 4.0h));
			half w5 = saturate(1.0h - abs(i - 5.0h));
			half w6 = saturate(1.0h - abs(i - 6.0h));
			half w7 = saturate(1.0h - abs(i - 7.0h));
			half w8 = saturate(1.0h - abs(i - 8.0h));
			half w9 = saturate(1.0h - abs(i - 9.0h));
			half w10 = saturate(1.0h - abs(i - 10.0h));
			half w11 = saturate(1.0h - abs(i - 11.0h));
			half w12 = saturate(1.0h - abs(i - 12.0h));
			half w13 = saturate(1.0h - abs(i - 13.0h));
			half w14 = saturate(1.0h - abs(i - 14.0h));
			half w15 = saturate(1.0h - abs(i - 15.0h));
			poiMods.globalMask[0] = lerp(poiMods.globalMask[0], v0, w0);
			poiMods.globalMask[1] = lerp(poiMods.globalMask[1], v1, w1);
			poiMods.globalMask[2] = lerp(poiMods.globalMask[2], v2, w2);
			poiMods.globalMask[3] = lerp(poiMods.globalMask[3], v3, w3);
			poiMods.globalMask[4] = lerp(poiMods.globalMask[4], v4, w4);
			poiMods.globalMask[5] = lerp(poiMods.globalMask[5], v5, w5);
			poiMods.globalMask[6] = lerp(poiMods.globalMask[6], v6, w6);
			poiMods.globalMask[7] = lerp(poiMods.globalMask[7], v7, w7);
			poiMods.globalMask[8] = lerp(poiMods.globalMask[8], v8, w8);
			poiMods.globalMask[9] = lerp(poiMods.globalMask[9], v9, w9);
			poiMods.globalMask[10] = lerp(poiMods.globalMask[10], v10, w10);
			poiMods.globalMask[11] = lerp(poiMods.globalMask[11], v11, w11);
			poiMods.globalMask[12] = lerp(poiMods.globalMask[12], v12, w12);
			poiMods.globalMask[13] = lerp(poiMods.globalMask[13], v13, w13);
			poiMods.globalMask[14] = lerp(poiMods.globalMask[14], v14, w14);
			poiMods.globalMask[15] = lerp(poiMods.globalMask[15], v15, w15);
		}
		void assignValueToVectorFromIndex(inout half4 vec, int index, half value)
		{
			float i = clamp(index, 0, 3);
			float w0 = saturate(1 - abs(i - 0));
			float w1 = saturate(1 - abs(i - 1));
			float w2 = saturate(1 - abs(i - 2));
			float w3 = saturate(1 - abs(i - 3));
			vec[0] = lerp(vec[0], value, w0);
			vec[1] = lerp(vec[1], value, w1);
			vec[2] = lerp(vec[2], value, w2);
			vec[3] = lerp(vec[3], value, w3);
		}
		float3 mod289(float3 x)
		{
			return x - floor(x * (1.0 / 289.0)) * 289.0;
		}
		float2 mod289(float2 x)
		{
			return x - floor(x * (1.0 / 289.0)) * 289.0;
		}
		float3 permute(float3 x)
		{
			return mod289(((x * 34.0) + 1.0) * x);
		}
		float snoise(float2 v)
		{
			const float4 C = float4(0.211324865405187, // (3.0 - sqrt(3.0)) / 6.0
			0.366025403784439, // 0.5 * (sqrt(3.0) - 1.0)
			- 0.577350269189626, // - 1.0 + 2.0 * C.x
			0.024390243902439); // 1.0 / 41.0
			float2 i = floor(v + dot(v, C.yy));
			float2 x0 = v - i + dot(i, C.xx);
			float2 i1;
			i1 = (x0.x > x0.y) ? float2(1.0, 0.0) : float2(0.0, 1.0);
			float4 x12 = x0.xyxy + C.xxzz;
			x12.xy -= i1;
			i = mod289(i); // Avoid truncation effects in permutation
			float3 p = permute(permute(i.y + float3(0.0, i1.y, 1.0))
			+ i.x + float3(0.0, i1.x, 1.0));
			float3 m = max(0.5 - float3(dot(x0, x0), dot(x12.xy, x12.xy), dot(x12.zw, x12.zw)), 0.0);
			m = m * m ;
			m = m * m ;
			float3 x = 2.0 * frac(p * C.www) - 1.0;
			float3 h = abs(x) - 0.5;
			float3 ox = floor(x + 0.5);
			float3 a0 = x - ox;
			m *= 1.79284291400159 - 0.85373472095314 * (a0 * a0 + h * h);
			float3 g;
			g.x = a0.x * x0.x + h.x * x0.y;
			g.yz = a0.yz * x12.xz + h.yz * x12.yw;
			return 130.0 * dot(m, g);
		}
		float PoiBayer2(float2 a) { a = floor(a); return frac(a.x * 0.5 + a.y * a.y * 0.75); }
		float PoiBayer8(float2 a) { return PoiBayer2(a * 0.25) * 0.0625 + PoiBayer2(a * 0.5) * 0.25 + PoiBayer2(a); }
		half poiInvertToggle(in half value, in half toggle)
		{
			return (toggle == 0 ? value : 1 - value);
		}
		half3 PoiBlendNormal(half3 dstNormal, half3 srcNormal)
		{
			return float3(dstNormal.xy + srcNormal.xy, dstNormal.z * srcNormal.z);
		}
		float3 lilTransformDirOStoWS(float3 directionOS, bool doNormalize)
		{
			if (doNormalize) return normalize(mul((float3x3)unity_ObjectToWorld, directionOS));
			else            return mul((float3x3)unity_ObjectToWorld, directionOS);
		}
		float2 poiGetWidthAndHeight(Texture2D tex)
		{
			uint width, height;
			tex.GetDimensions(width, height);
			return float2(width, height);
		}
		float2 poiGetWidthAndHeight(Texture2DArray tex)
		{
			uint width, height, element;
			tex.GetDimensions(width, height, element);
			return float2(width, height);
		}
		bool SceneHasReflections()
		{
			bool hasReflection = false;
			float width, height;
			unity_SpecCube0.GetDimensions(width, height);
			hasReflection = !(width * height < 2);
			#if CLUSTER_HAS_REFLECTION_PROBES
			urp_ReflProbes_Atlas.GetDimensions(width, height);
			hasReflection = hasReflection | !(width * height < 2);
			#endif
			return hasReflection;
		}
		void applyUnityFog(inout half3 col, float fogCoord, half ignoreFog)
		{
			if (ignoreFog > 0.5) return;
			float z = UNITY_Z_0_FAR_FROM_CLIPSPACE(fogCoord);
			half fogIntensity = 1.0;
			if (unity_FogParams.z != unity_FogParams.w)
			{
				fogIntensity = saturate(z * unity_FogParams.z + unity_FogParams.w);
			}
			else if (unity_FogParams.x != 0.0)
			{
				half fogFactor = unity_FogParams.x * z;
				fogIntensity = saturate(exp2(-fogFactor * fogFactor));
			}
			half3 appliedFogColor = unity_FogColor.rgb;
			#if defined(POI_PASS_ADD)
			appliedFogColor = half3(0.0h, 0.0h, 0.0h);
			#endif
			col.rgb = lerp(appliedFogColor, col.rgb, fogIntensity);
		}
		float poiSampleCurve4(float4 curve, float value)
		{
			float3 weights = saturate(value * 3.0 - float3(0.0, 1.0, 2.0));
			return saturate(curve.x + dot(weights, curve.yzw - curve.xyz));
		}
		ENDHLSL
		Pass
		{
			Name "ForwardLit"
			Tags { "LightMode" = "UniversalForward" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite [_ZWrite]
			Cull Off
			ZClip [_ZClip]
			ZTest [_ZTest]
			ColorMask RGBA
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend], [_SrcBlendAlpha] [_DstBlendAlpha]
			HLSLPROGRAM
 #define VIGNETTE_MASKED 
 #define _LIGHTINGMODE_FLAT 
 #define _STOCHASTICMODE_DELIOT_HEITZ 
 #define PROP_BUMPMAP 
 #define OPTIMIZER_ENABLED 
			#pragma target 5.0
			#define POI_WORLD
			#pragma vertex vert
			#pragma fragment frag
			#if POI_PIPE == POI_URP
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#if UNITY_VERSION >= 600000
			#pragma multi_compile _ _CLUSTER_LIGHT_LOOP
			#else
			#pragma multi_compile _ _FORWARD_PLUS
			#endif
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHTS
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _SHADOWS_SOFT
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma dynamic_branch _ FOG_LINEAR
			#pragma dynamic_branch _ FOG_EXP
			#pragma dynamic_branch _ FOG_EXP2
			#endif
			#if POI_PIPE == POI_BIRP
			#pragma dynamic_branch _ FOG_LINEAR
			#pragma dynamic_branch _ FOG_EXP
			#pragma dynamic_branch _ FOG_EXP2
			#pragma multi_compile_fwdbase
			#pragma multi_compile_fragment _ VERTEXLIGHT_ON
			#endif
			#if defined(POI_WORLD) && POI_PIPE == POI_URP
			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#endif
			#pragma multi_compile_instancing
			#define POI_PASS_BASE
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonMaterial.hlsl"
			#if UNITY_VERSION >= 202100
			#if UNITY_VERSION < 202300
			#ifndef __AMBIENTPROBE_HLSL__
			half3 EvaluateAmbientProbe(half3 normalWS)
			{
				return half3(0.0h, 0.0h, 0.0h);
			}
			#endif
			#endif
			#include "Packages/com.unity.render-pipelines.core/Runtime/Lighting/ProbeVolume/ProbeVolume.hlsl"
			#endif
			#if UNITY_VERSION >= 202300
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#endif
			CBUFFER_START(UnityPerMaterial)
			float _GrabMode;
			float _Mode;
			#ifndef _STOCHASTICMODE_NONE
			#ifdef _STOCHASTICMODE_DELIOT_HEITZ
			float _StochasticDeliotHeitzDensity;
			#endif
			#endif
			float4 _LightingAOMaps_ST;
			float2 _LightingAOMapsPan;
			float _LightingAOMapsUV;
			float _LightDataAOStrengthR;
			float _LightDataAOStrengthG;
			float _LightDataAOStrengthB;
			float _LightDataAOStrengthA;
			half _LightDataAOGlobalMaskR;
			float _LightDataAOGlobalMaskBlendTypeR;
			float4 _LightingDetailShadowMaps_ST;
			float2 _LightingDetailShadowMapsPan;
			float _LightingDetailShadowMapsUV;
			half _LightingDetailShadowStrengthR;
			half _LightingDetailShadowStrengthG;
			half _LightingDetailShadowStrengthB;
			half _LightingDetailShadowStrengthA;
			half _LightingAddDetailShadowStrengthR;
			half _LightingAddDetailShadowStrengthG;
			half _LightingAddDetailShadowStrengthB;
			half _LightingAddDetailShadowStrengthA;
			half _LightDataDetailShadowGlobalMaskR;
			float _LightDataDetailShadowGlobalMaskBlendTypeR;
			float4 _LightingShadowMasks_ST;
			float2 _LightingShadowMasksPan;
			float _LightingShadowMasksUV;
			half _LightingShadowMaskStrengthR;
			half _LightingShadowMaskStrengthG;
			half _LightingShadowMaskStrengthB;
			half _LightingShadowMaskStrengthA;
			half _LightDataShadowMaskGlobalMaskR;
			float _LightDataShadowMaskGlobalMaskBlendTypeR;
			half _Unlit_Intensity;
			float _LightingColorMode;
			float _LightingMapMode;
			#if defined(PROP_LIGHTDATASDFMAP)
			float4 _LightDataSDFMap_ST;
			float2 _LightDataSDFMapPan;
			float _LightDataSDFMapUV;
			float _LightDataSDFMapLOD;
			float _LightDataSDFBlendY;
			#endif
			float _LightingDirectionMode;
			float3 _LightngForcedDirection;
			float _LightingViewDirOffsetPitch;
			float _LightingViewDirOffsetYaw;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			half _LightingForceColorEnabled;
			half3 _LightingForcedColor;
			float _LightingForcedColorThemeIndex;
			half _LightingCastedShadows;
			half _LightingShadowSoftness;
			float _LightingMonochromatic;
			half _LightingMinLightBrightness;
			float _LightingAdditiveEnable;
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			half _LightingAdditiveCastedShadows;
			float _LightingAdditiveMonochromatic;
			float _LightingAdditivePassthrough;
			float4 _LightingAdditiveAttenCurve;
			float _DisableDirectionalInAdd;
			float _LightingVertexLightingEnabled;
			float _LightingMirrorVertexLightingEnabled;
			float _LightingEnableLightVolumes;
			float _LightingLightVolumesIntensity;
			float _LightingLightVolumesNormalBias;
			float _LightingLightVolumesSpecular;
			float _LightingLightVolumesShadows;
			float _LightDataDebugEnabled;
			float _LightingDebugVisualize;
			half4 _Color;
			float _ColorThemeIndex;
			float _MainPixelMode;
			float4 _MainTex_ST;
			float4 _MainTex_TexelSize;
			float2 _MainTexPan;
			float _MainTexUV;
			float _MainTexStochastic;
			half _MainIgnoreTexAlpha;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			float _BumpMapStochastic;
			float4 _AlphaMask_ST;
			float2 _AlphaMaskPan;
			float _AlphaMaskUV;
			half _AlphaMaskInvert;
			float _MainAlphaMaskMode;
			half _AlphaMaskR;
			half _AlphaMaskG;
			half _AlphaMaskB;
			half _AlphaMaskA;
			float _AlphaMaskChannelBlendMode;
			half2 _AlphaMaskMinMax;
			half _AlphaMaskGamma;
			half _AlphaMaskBlendStrength;
			half _AlphaMaskValue;
			float _Cutoff;
			half _AlphaForceOpaque;
			half _AlphaMod;
			half _AlphaPremultiply;
			half _AlphaBoostFA;
			half _AlphaGlobalMask;
			float _AlphaGlobalMaskBlendType;
			#ifdef POI_WORLD
			half _GIEmissionMultiplier;
			half _BakeryMode;
			#endif
			float4 _GlobalThemeColor0;
			float4 _GlobalThemeColor1;
			float4 _GlobalThemeColor2;
			float4 _GlobalThemeColor3;
			float _GlobalThemeHueShiftColorSpace0;
			float _GlobalThemeHueShiftColorSpace1;
			float _GlobalThemeHueShiftColorSpace2;
			float _GlobalThemeHueShiftColorSpace3;
			float _GlobalThemeHue0;
			float _GlobalThemeHue1;
			float _GlobalThemeHue2;
			float _GlobalThemeHue3;
			float _GlobalThemeHueSpeed0;
			float _GlobalThemeHueSpeed1;
			float _GlobalThemeHueSpeed2;
			float _GlobalThemeHueSpeed3;
			float _GlobalThemeSaturationMethod0;
			float _GlobalThemeSaturationMethod1;
			float _GlobalThemeSaturationMethod2;
			float _GlobalThemeSaturationMethod3;
			float _GlobalThemeSaturation0;
			float _GlobalThemeSaturation1;
			float _GlobalThemeSaturation2;
			float _GlobalThemeSaturation3;
			float _GlobalThemeValue0;
			float _GlobalThemeValue1;
			float _GlobalThemeValue2;
			float _GlobalThemeValue3;
			float _GlobalThemeBrightness0;
			float _GlobalThemeBrightness1;
			float _GlobalThemeBrightness2;
			float _GlobalThemeBrightness3;
			int _GlobalMaskVertexColorLinearSpace;
			float2 _UVSettingsTiling0;
			float2 _UVSettingsOffset0;
			float _UVSettingsAngle0;
			float2 _UVSettingsPan0;
			float _UVSettingsRotate0;
			float2 _UVSettingsTiling1;
			float2 _UVSettingsOffset1;
			float _UVSettingsAngle1;
			float2 _UVSettingsPan1;
			float _UVSettingsRotate1;
			float2 _UVSettingsTiling2;
			float2 _UVSettingsOffset2;
			float _UVSettingsAngle2;
			float2 _UVSettingsPan2;
			float _UVSettingsRotate2;
			float2 _UVSettingsTiling3;
			float2 _UVSettingsOffset3;
			float _UVSettingsAngle3;
			float2 _UVSettingsPan3;
			float _UVSettingsRotate3;
			float _ScreenSpaceUVObjectScale;
			float _ScreenSpaceUVWorldSize;
			float _UVSettingsShiftBackfaceUV;
			int _StereoEnabled;
			int _PanoUseBothEyes;
			float _PolarUV;
			float _PolarMode;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _UVModWorldPos0;
			float _UVModWorldPos1;
			float _UVModLocalPos0;
			float _UVModLocalPos1;
			float _ShadingRampedLightMapApplyGlobalMaskIndex;
			half _ShadingRampedLightMapApplyGlobalMaskStrength;
			float _ShadingRampedLightMapApplyGlobalMaskBlendType;
			float _ShadingRampedLightMapInverseApplyGlobalMaskIndex;
			half _ShadingRampedLightMapInverseApplyGlobalMaskStrength;
			float _ShadingRampedLightMapInverseApplyGlobalMaskBlendType;
			half _ShadowStrength;
			half _LightingIgnoreAmbientColor;
			half3 _LightingShadowColor;
			#ifdef _LIGHTINGMODE_FLAT
			float _ForceFlatRampedLightmap;
			#endif
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			float _PPLightingMultiplier;
			float _PPLightingAddition;
			half _PPEmissionMultiplier;
			half _PPFinalColorMultiplier;
			CBUFFER_END
			uint _UdonForceSceneLighting;
			#if defined(PROP_LIGHTINGAOMAPS)
			Texture2D _LightingAOMaps;
			#endif
			#if defined(PROP_LIGHTINGDETAILSHADOWMAPS)
			Texture2D _LightingDetailShadowMaps;
			#endif
			#if defined(PROP_LIGHTINGSHADOWMASKS)
			Texture2D _LightingShadowMasks;
			#endif
			#if defined(PROP_LIGHTDATASDFMAP)
			Texture2D _LightDataSDFMap;
			#endif
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			int _FlipBackfaceNormals;
			float _AddBlendOp;
			float _Cull;
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define STEREO_UV(uv) float3(uv, unity_StereoEyeIndex)
			#else
			#define STEREO_UV(uv) uv
			#endif
			#if POI_PIPE == POI_BIRP
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			Texture2DArray<float> _CameraDepthTexture;
			#else
			Texture2D<float> _CameraDepthTexture;
			#endif
			#endif
			#if POI_PIPE == POI_URP
			TEXTURE2D_X_FLOAT(_CameraDepthTexture);
			float4 _CameraDepthTexture_TexelSize;
			#endif
			float SampleScreenDepth(float2 uv)
			{
				uv.y = _ProjectionParams.x * 0.5 + 0.5 - uv.y * _ProjectionParams.x;
				return _CameraDepthTexture.SampleLevel(sampler_point_clamp, STEREO_UV(uv), 0).r;
			}
			bool DepthTextureExists()
			{
				float3 dTexDim = 0;
				#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y, dTexDim.z);
				#else
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y);
				#endif
				return dTexDim.x > 16;
			}
			UNITY_DECLARE_TEX2D(_MainTex);
			#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BumpMap;
			#endif
			#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaMask;
			#endif
			struct MatcapAudioLinkData
			{
				float matcapALEnabled;
				half matcapALAlphaAddBand;
				half4 matcapALAlphaAdd;
				half matcapALEmissionAddBand;
				half4 matcapALEmissionAdd;
				half matcapALIntensityAddBand;
				half4 matcapALIntensityAdd;
				float matcapALChronoPanType;
				float matcapALChronoPanBand;
				float matcapALChronoPanSpeed;
			};
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				half4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				#ifdef POI_PASS_MOTION_VECTORS
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
				float3 alembicMotionVector : TEXCOORD5;
				#endif
				#endif
				#ifdef POI_RAYMARCHING_DATA
				float4 poiBindPosition : TEXCOORD5;
				half4 poiBindNormal : TEXCOORD6;
				half4 poiBindTangent : TEXCOORD7;
				#endif
				#ifdef POI_TESSELLATED
				uint vertexId : TEXCOORD6;
				#else
				uint vertexId : SV_VertexID;
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct VertexOut
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				half4 normal : TEXCOORD2;
				half4 tangent : TEXCOORD3;
				float4 worldPos : TEXCOORD4;
				float4 localPos : TEXCOORD5;
				half4 vertexColor : TEXCOORD6;
				float4 lightmapUV : TEXCOORD7;
				float worldDir : TEXCOORD8;
				float fogData: TEXCOORD10;
				POI_SHADOW_COORDS(9)
				#ifdef POI_SQUISH
				half squishAmount : TEXCOORD11;
				#endif
				#ifdef POIBS_BLOOMFOG
				float2 bsFogScreenUV : TEXCOORD12;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD13;
				float4 LightCoord : TEXCOORD14;
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				float4 positionCSNoJitter         : POSITION_CS_NO_JITTER;
				float4 previousPositionCSNoJitter : PREV_POSITION_CS_NO_JITTER;
				#endif
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(POI_DEVICE_QUEST)
				uint gl_Layer : SV_RenderTargetArrayIndex;
				#endif
			};
			float2 vertexUV(in VertexOut o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in appdata v, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return v.uv0.xy * w0 + v.uv1.xy * w1 + v.uv2.xy * w2 + v.uv3.xy * w3;
			}
			#ifdef POI_PASS_LILFUR
			float2 vertexUV(in PoiGeoToFragLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in PoiVertToGeoLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			#endif
			half3 poiThemeColor(in PoiMods poiMods, in half3 srcColor, in half themeIndex)
			{
				half3 outputColor = srcColor;
				if (themeIndex != 0)
				{
					themeIndex = max(themeIndex - 1, 0);
					if (themeIndex <= 3)
					{
						outputColor = poiMods.globalColorTheme[themeIndex].rgb;
					}
					else
					{
						#ifdef POI_AUDIOLINK
						if (poiMods.audioLinkAvailable)
						{
							outputColor = poiMods.globalColorTheme[themeIndex].rgb;
						}
						#endif
					}
				}
				return outputColor;
			}
			struct PoiSpriteSheetConfig
			{
				float columns;
				float rows;
				float totalFrames;
				float frameSelection;
				float fps;
				float randomStart;
				float inset;
				float2 textureST;
			};
			float poiSpriteSheetFrameIndex(PoiSpriteSheetConfig config, float progress, float seed)
			{
				float totalFrames = (config.totalFrames > 0) ? config.totalFrames : (config.columns * config.rows);
				float frameIndex = 0;
				if (config.frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (config.frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (config.frameSelection == 2)
				{
					float timeOffset = config.randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * config.fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float poiSpriteSheetFrameIndex(float columns, float rows, float configTotalFrames, float frameSelection, float fps, float randomStart, float progress, float seed)
			{
				float totalFrames = (configTotalFrames > 0) ? configTotalFrames : (columns * rows);
				float frameIndex = 0;
				if (frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (frameSelection == 2)
				{
					float timeOffset = randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float2 poiSpriteSheetUV(float2 uv, float columns, float rows, float frameIndex, float inset, float2 textureST)
			{
				float invCols = 1.0 / columns;
				float invRows = 1.0 / rows;
				float2 frameSize = float2(invCols, invRows);
				float column = fmod(frameIndex, columns);
				float row = floor(frameIndex * invCols);
				row = rows - 1 - row;
				float2 lookupUV = (uv * frameSize) + float2(column, row) * frameSize;
				if (inset > 0)
				{
					float2 texelInset = inset * frameSize / max(textureST, 1e-6);
					lookupUV = lerp(lookupUV, float2(column + 1, row + 1) * frameSize, texelInset);
				}
				return lookupUV;
			}
			float2 poiSpriteSheetUV(float2 uv, PoiSpriteSheetConfig config, float frameIndex)
			{
				return poiSpriteSheetUV(uv, config.columns, config.rows, frameIndex, config.inset, config.textureST);
			}
			void applyReducedRenderClipDistance(inout VertexOut o)
			{
				if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
				{
					#if defined(UNITY_REVERSED_Z) // DirectX
					o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					#else // OpenGL
					o.pos.z = o.pos.z * 0.0001 - o.pos.w * 0.999;
					#endif
				}
			}
			VertexOut vert(appdata v
			#ifdef POI_TRIPLE_OUTLINE
			, uint poiOutlineLayer
			#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				VertexOut o;
				PoiInitStruct(VertexOut, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				POI_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				#if defined(POI_PASS_OUTLINETWO)
				if (0.0 < 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#elif defined(POI_PASS_OUTLINE)
				if (0.0 > 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#endif
				#ifdef POI_AUDIOLINK
				float vertexAudioLink[5];
				vertexAudioLink[0] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 0))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 0))[0];
				vertexAudioLink[1] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 1))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 1))[0];
				vertexAudioLink[2] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 2))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 2))[0];
				vertexAudioLink[3] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 3))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 3))[0];
				vertexAudioLink[4] = AudioLinkData(ALPASS_GENERALVU + float2(8, 0))[0];
				#endif
				o.uv[0] = float4(v.uv0.xy, v.uv1.xy);
				o.uv[1] = float4(v.uv2.xy, v.uv3.xy);
				o.normal.w = length(mul((float3x3)unity_ObjectToWorld, v.normal));
				#if POI_PIPE == POI_BIRP
				o.normal.xyz = PoiObjectToWorldNormal(v.normal);
				o.tangent.xyz = UnityObjectToWorldDir(v.tangent);
				#elif  POI_PIPE == POI_URP
				VertexNormalInputs vertexNormalInput = GetVertexNormalInputs(v.normal, v.tangent);
				o.normal.xyz = vertexNormalInput.normalWS;
				o.tangent.xyz = vertexNormalInput.tangentWS;
				#endif
				o.tangent.w = v.tangent.w;
				o.vertexColor = v.color;
				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV(v.uv1.xy, unity_LightmapST, o.lightmapUV.xy);
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.xyz += localOffset;
				o.worldPos.xyz += worldOffset;
				o.pos = PoiObjectToClipPos(o.localPos.xyz);
				o.fogData = o.pos.z;
				#if !defined(POI_PASS_SHADOW)
				POI_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				v.vertex.xyz = o.localPos.xyz;
				POI_TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				o.worldDir = dot(o.pos, CalculateFrustumCorrection());
				if (0.0 >= 0.5)
				{
					applyReducedRenderClipDistance(o);
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#ifdef EDITOR_VISUALIZATION
				UnityEditorVizData(v.vertex.xyz, o.uv[0].xy, o.uv[0].zw, o.uv[1].xy, o.VizUV, o.LightCoord);
				#endif
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				#if defined(APPLICATION_SPACE_WARP_MOTION)
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				o.pos = o.positionCSNoJitter;
				#else
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				#endif
				float4 prevPos = (unity_MotionVectorsParams.x == 1) ? float4(v.positionOld, 1) : o.localPos;
				#if _ADD_PRECOMPUTED_VELOCITY
				prevPos = prevPos - float4(v.alembicMotionVector, 0);
				#endif
				o.previousPositionCSNoJitter = mul(_PrevViewProjMatrix, mul(UNITY_PREV_MATRIX_M, prevPos));
				#endif
				#endif
				#ifdef POI_PASS_LILFUR
				#endif
				return o;
			}
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			#define POI2D_SAMPLER_STOCHASTIC(tex, texSampler, uv, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, uv) : POI2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_SAMPLER_PAN_STOCHASTIC(tex, texSampler, uv, pan, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan)) : POI2D_SAMPLER_PAN(tex, texSampler, uv, pan))
			#define POI2D_SAMPLER_PANGRAD_STOCHASTIC(tex, texSampler, uv, pan, dx, dy, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan), dx, dy) : POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, dx, dy))
			#endif
			#if !defined(_STOCHASTICMODE_NONE)
			float2 StochasticHash2D2D(float2 s)
			{
				return frac(sin(float2(dot(s, float2(127.1, 311.7)), dot(s, float2(269.5, 183.3)))) * 43758.5453);
			}
			#endif
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			float3x3 DeliotHeitzStochasticUVBW(float2 uv)
			{
				const float2x2 stochasticSkewedGrid = float2x2(1.0, -0.57735027, 0.0, 1.15470054);
				float2 skewUV = mul(stochasticSkewedGrid, uv * 3.4641 * 1.0);
				float2 vxID = floor(skewUV);
				float3 bary = float3(frac(skewUV), 0);
				bary.z = 1.0 - bary.x - bary.y;
				float3x3 pos = float3x3(
				float3(vxID, bary.z),
				float3(vxID + float2(0, 1), bary.y),
				float3(vxID + float2(1, 0), bary.x)
				);
				float3x3 neg = float3x3(
				float3(vxID + float2(1, 1), -bary.z),
				float3(vxID + float2(1, 0), 1.0 - bary.y),
				float3(vxID + float2(0, 1), 1.0 - bary.x)
				);
				return (bary.z > 0) ? pos : neg;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv, float2 dx, float2 dy)
			{
				float3x3 UVBW = DeliotHeitzStochasticUVBW(uv);
				return mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[0].xy), dx, dy), UVBW[0].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[1].xy), dx, dy), UVBW[1].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[2].xy), dx, dy), UVBW[2].z) ;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv)
			{
				float2 dx = ddx(uv), dy = ddy(uv);
				return DeliotHeitzSampleTexture(tex, texSampler, uv, dx, dy);
			}
			#endif // defined(_STOCHASTICMODE_DELIOT_HEITZ)
			half PoiDirectionalShadowBlur(
			half attenShadows,
			float3 posWS,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			float3 lightDir,
			float2 screenUV)
			{
				#if POI_PIPE == POI_BIRP
				#if defined(SHADOWS_SCREEN) && !defined(UNITY_NO_SCREENSPACE_SHADOWS)
				
				if (0.0 > 0 && 0.0 > 0)
				{
					float4 poiShadowCoord = i._ShadowCoord;
					float poiCamDist = distance(posWS, _WorldSpaceCameraPos);
					float poiRadiusPx = 0.0 * (108.0 / max(poiCamDist * 1.8, 2.0));
					float2 poiStep = (_ScreenParams.zw - 1.0) * (poiShadowCoord.w * poiRadiusPx);
					float2 poiPix = (poiShadowCoord.xy / max(poiShadowCoord.w, 1e-5)) * _ScreenParams.xy;
					#ifdef POI_PASS_LILFUR
					float poiRot = PoiBayer8(floor(poiPix)) * 6.2831853;
					#else
					float poiRot = frac(52.9829189 * frac(dot(poiPix, float2(0.06711056, 0.00583715)))) * 6.2831853;
					#endif
					float poiSinR, poiCosR;
					sincos(poiRot, poiSinR, poiCosR);
					half poiShadowSum = attenShadows; // center tap (r=0)
					[unroll] for (int poiT = 0; poiT < 4; poiT++)
					{
						float poiR = sqrt((poiT + 0.5) / 4.0);
						float poiC = poiT * 2.3999632;
						float2 poiBase = float2(cos(poiC), sin(poiC)) * poiR; // compile-time constant
						float2 poiDir = float2(poiCosR * poiBase.x - poiSinR * poiBase.y, poiSinR * poiBase.x + poiCosR * poiBase.y);
						float4 sc = poiShadowCoord;
						sc.xy += poiDir * poiStep;
						poiShadowSum += UNITY_SAMPLE_SCREEN_SHADOW(_ShadowMapTexture, sc);
					}
					attenShadows = poiShadowSum / 5.0; // 4 disk taps + center
				}
				#endif
				#elif POI_PIPE == POI_URP
				#if defined(_MAIN_LIGHT_SHADOWS) || defined(_MAIN_LIGHT_SHADOWS_CASCADE) || defined(_MAIN_LIGHT_SHADOWS_SCREEN)
				
				if (0.0 > 0 && 0.0 > 0)
				{
					float3 poiLdir = lightDir;
					float3 poiShadowT = normalize(cross(poiLdir, float3(0.0, 1.0, 0.001)));
					float3 poiShadowB = cross(poiLdir, poiShadowT);
					float poiShadowRadius = 0.0 * 0.06;
					float2 poiPix = screenUV * _ScreenParams.xy;
					#ifdef POI_PASS_LILFUR
					float poiRot = PoiBayer8(floor(poiPix)) * 6.2831853;
					#else
					float poiRot = frac(52.9829189 * frac(dot(poiPix, float2(0.06711056, 0.00583715)))) * 6.2831853;
					#endif
					float poiSinR, poiCosR;
					sincos(poiRot, poiSinR, poiCosR);
					half poiShadowSum = attenShadows; // center tap (r=0)
					[unroll] for (int poiT = 0; poiT < 4; poiT++)
					{
						float poiR = sqrt((poiT + 0.5) / 4.0);
						float poiC = poiT * 2.3999632;
						float2 poiBase = float2(cos(poiC), sin(poiC)) * poiR; // compile-time constant
						float2 poiOff = float2(poiCosR * poiBase.x - poiSinR * poiBase.y, poiSinR * poiBase.x + poiCosR * poiBase.y) * poiShadowRadius;
						float3 op = posWS + poiShadowT * poiOff.x + poiShadowB * poiOff.y;
						poiShadowSum += MainLightRealtimeShadow(TransformWorldToShadowCoord(op));
					}
					attenShadows = poiShadowSum / 5.0; // 4 disk taps + center
				}
				#endif
				#endif
				return attenShadows;
			}
			#if POI_PIPE == POI_BIRP
			void PoiGetLightAttenuation(
			float3 posWS,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			out half attenShadows, out float attenDistance, out half3 lightCookie)
			{
				attenShadows = UNITY_SHADOW_ATTENUATION(i, posWS);
				attenShadows = PoiDirectionalShadowBlur(attenShadows, posWS, i, 0, 0);
				#if defined(SPOT)
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1));
				attenDistance = (lightCoord.z > 0) ? UnitySpotAttenuate(lightCoord.xyz) : 0.0;
				attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), attenDistance);
				lightCookie = UnitySpotCookie(lightCoord).rrr;
				#elif defined(POINT_COOKIE)
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1)).xyz;
				attenDistance = tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r;
				attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), attenDistance);
				lightCookie = texCUBE(_LightTexture0, lightCoord).www;
				#elif defined(POINT)
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1)).xyz;
				attenDistance = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), attenDistance);
				lightCookie = 1.0;
				#elif defined(DIRECTIONAL_COOKIE)
				unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1)).xy;
				attenDistance = 1.0;
				lightCookie = tex2D(_LightTexture0, lightCoord).www;
				#else
				attenDistance = 1.0;
				lightCookie = 1.0;
				#endif
			}
			#endif
			void PoiLightDataSetupAdd(
			inout PoiLight poiLight,
			inout PoiFragData poiFragData,
			in PoiMesh poiMesh,
			in PoiCam poiCam,
			in PoiMods poiMods,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			inout PoiShadingParams params)
			{
				if (1.0 < 0.5)
				{
					params.exitCode = 1;
					return;
				}
				#if POI_PIPE == POI_BIRP
				#if !defined(POINT) && !defined(SPOT) && !defined(POINT_COOKIE)
				if (0.0 >= 0.5)
				{
					params.exitCode = 1;
					return;
				}
				#endif
				#elif POI_PIPE == POI_URP
				if (0.0 >= 0.5 && poiLight.lightType == POI_DIRECTIONAL)
				{
					params.exitCode = 1;
					return;
				}
				#endif
				poiLight.isAdditive = 1;
				#if POI_PIPE == POI_BIRP
				#if defined(POINT) || defined(SPOT) || defined(POINT_COOKIE)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - poiMesh.worldPos.xyz);
				#else
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz);
				#endif
				#elif POI_PIPE == POI_URP
				poiLight.direction = poiLight.unityLight.direction.xyz;
				#endif
				poiLight.attenStrength = 1.0;
				#if POI_PIPE == POI_BIRP
				PoiGetLightAttenuation(poiMesh.worldPos, i, poiLight.attenShadows, poiLight.attenDistance, poiLight.lightCookie);
				#elif POI_PIPE == POI_URP
				poiLight.attenShadows = poiLight.unityLight.shadowAttenuation;
				poiLight.attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), poiLight.unityLight.distanceAttenuation);
				#if defined(_LIGHT_COOKIES)
				#if USE_CLUSTER_LIGHT_LOOP
				int lightBufferIndex = params.lightIndex;
				#else
				int lightBufferIndex = GetPerObjectLightIndex(params.lightIndex);
				#endif
				poiLight.lightCookie = SampleAdditionalLightCookie(lightBufferIndex, poiMesh.worldPos);
				#else
				poiLight.lightCookie = 1;
				#endif
				#endif
				poiLight.attenShadowsStrength = lerp(1, poiLight.attenShadows, poiLight.attenStrength);
				half3 additiveColorNoShadows = poiLight.unityLight.color * poiLight.attenDistance;
				poiLight.directColor = 1.0 ? MaxLuminance(additiveColorNoShadows, 1.0) : additiveColorNoShadows;
				poiLight.indirectColor = lerp(0, additiveColorNoShadows, 0.0);
				poiLight.indirectColor = 1.0 ? MaxLuminance(poiLight.indirectColor, 1.0) : poiLight.indirectColor;
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), 0.0);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), 0.0);
				poiLight.halfDir = normalize(poiLight.direction + poiCam.eyeViewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.eyeViewDir));
				poiLight.nDotVCentered = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.eyeViewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.eyeViewDir));
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				[flatten]
				switch ((int)0.0)
				{
					case 2:
					{
						poiLight.lightMap = poiLight.nDotLSaturated;
						break;
					}
					case 3:
					{
						poiLight.lightMap = 1;
						break;
					}
					default:
					{
						poiLight.lightMap = poiLight.nDotLNormalized;
						break;
					}
				}
				poiLight.lightMap *= poiLight.detailShadow;
				poiLight.lightMapNoAttenuation = poiLight.lightMap;
				poiLight.lightMap *= CalculateLuminance(poiLight.lightCookie) * poiLight.attenShadowsStrength;
				poiLight.attenuation = poiLight.lightMap;
				poiLight.additiveShadow = poiLight.lightMap;
				params.exitCode = 0;
			}
			void PoiLightDataSetup(
			inout PoiLight poiLight,
			inout PoiFragData poiFragData,
			in PoiMesh poiMesh,
			in PoiCam poiCam,
			in PoiMods poiMods,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			inout PoiShadingParams params)
			{
				bool lightExists = false;
				if (any(poiLight.unityLight.color.rgb >= 0.002))
				{
					lightExists = true;
				}
				if (1.0 >= 0.5)
				{
					poiFragData.toggleVertexLights = 1;
				}
				if (IsInMirror() && 1.0 < 0.5)
				{
					poiFragData.toggleVertexLights = 0;
				}
				#if POI_PIPE == POI_BIRP
				if (1.0 >= 0.5)
				{
					#if defined(VERTEXLIGHT_ON)
					float4 toLightX = unity_4LightPosX0 - poiMesh.worldPos.x;
					float4 toLightY = unity_4LightPosY0 - poiMesh.worldPos.y;
					float4 toLightZ = unity_4LightPosZ0 - poiMesh.worldPos.z;
					float4 lengthSq = 0;
					lengthSq += toLightX * toLightX;
					lengthSq += toLightY * toLightY;
					lengthSq += toLightZ * toLightZ;
					float4 lightAttenSq = unity_4LightAtten0;
					float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
					half4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
					poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
					poiLight.vDotNL = 0;
					poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
					poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
					poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
					float4 corr = rsqrt(lengthSq);
					poiLight.vDotNL *= corr;
					poiLight.vertexVDotNL = max(0, poiLight.vDotNL);
					poiLight.vSaturatedDotNL = saturate(poiLight.vDotNL);
					[unroll]
					for (int index = 0; index < 4; index++)
					{
						poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
						poiLight.vDirection[index] = float3(toLightX[index], toLightY[index], toLightZ[index]) * corr[index];
						poiLight.vAttenuation[index] = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), poiLight.vAttenuation[index]);
						float3 col = unity_LightColor[index].rgb * poiLight.vAttenuation[index];
						poiLight.vColor[index] = 1.0 ? MaxLuminance(col, 1.0) : col;
						poiLight.vColor[index] = lerp(poiLight.vColor[index], dot(poiLight.vColor[index], float3(0.299,0.587,0.114)), 0.0);
						poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.eyeViewDir);
						poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
						poiLight.vDotNH[index] = dot(poiMesh.normals[1], poiLight.vHalfDir[index]);
						poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
						poiLight.vertexVDotNH[index] = saturate(dot(poiMesh.normals[0], poiLight.vHalfDir[index]));
					}
					#endif
				}
				#endif
				poiLight.attenStrength = 0.0;
				#if POI_PIPE == POI_BIRP
				PoiGetLightAttenuation(poiMesh.worldPos, i, poiLight.attenShadows, poiLight.attenDistance, poiLight.lightCookie);
				#elif POI_PIPE == POI_URP
				poiLight.attenShadows = poiLight.unityLight.shadowAttenuation;
				poiLight.attenDistance = poiLight.unityLight.distanceAttenuation;
				#if defined(_LIGHT_COOKIES)
				poiLight.lightCookie = SampleMainLightCookie(poiMesh.worldPos);
				#else
				poiLight.lightCookie = 1;
				#endif
				poiLight.attenShadows = PoiDirectionalShadowBlur(poiLight.attenShadows, poiMesh.worldPos, i, poiLight.unityLight.direction, poiCam.screenUV);
				#endif
				#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
				half bakedAtten = UnitySampleBakedOcclusion(poiMesh.lightmapUV.xy, poiMesh.worldPos);
				float zDist = dot(poiMesh.worldPos - poiCam.worldPos, poiCam.forwardDir);
				float fadeDist = UnityComputeShadowFadeDistance(poiMesh.worldPos, zDist);
				poiLight.attenShadows = UnityMixRealtimeAndBakedShadows(poiLight.attenShadows, bakedAtten, UnityComputeShadowFade(fadeDist));
				#endif
				poiLight.attenShadowsStrength = lerp(1, poiLight.attenShadows, poiLight.attenStrength);
				[flatten]
				switch ((int)0.0)
				{
					case 0: // Poi Custom Light Color
					{
						float3 magic = max(BetterSH9(normalize(PoiSHAr + PoiSHAg + PoiSHAb)), 0);
						float3 normalLight = poiLight.unityLight.color.rgb * poiLight.attenDistance + BetterSH9(float4(0, 0, 0, 1));
						float magiLumi = CalculateLuminance(magic);
						float normaLumi = CalculateLuminance(normalLight);
						float maginormalumi = magiLumi + normaLumi;
						float magiratio = magiLumi / maginormalumi;
						float normaRatio = normaLumi / maginormalumi;
						float target = CalculateLuminance(magic * magiratio + normalLight * normaRatio);
						half3 properLightColor = magic + normalLight;
						half properLuminance = CalculateLuminance(magic + normalLight);
						poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
						{
							float3 indirectSampleNormal = lerp(0, poiMesh.normals[1], 0.0);
							#ifdef POI_BENTNORMALMAP
							if (poiMesh.hasBentNormal > 0.5 && 1.0 > 0.5)
							{
								indirectSampleNormal = lerp(indirectSampleNormal, poiMesh.bentNormal, 0.0);
							}
							#endif
							poiLight.indirectColor = BetterSH9(float4(indirectSampleNormal, 1));
						}
						break;
					}
					case 1: // More standard approach to light color
					{
						half3 indirectNormal = poiMesh.normals[1];
						#ifdef POI_BENTNORMALMAP
						if (poiMesh.hasBentNormal > 0.5 && 1.0 > 0.5)
						{
							indirectNormal = poiMesh.bentNormal;
						}
						#endif
						half3 indirectColor = BetterSH9(half4(indirectNormal, 1));
						if (lightExists)
						{
							poiLight.directColor = poiLight.unityLight.color.rgb * poiLight.attenDistance;
							poiLight.indirectColor = indirectColor;
						}
						else
						{
							poiLight.directColor = indirectColor * 0.6;
							poiLight.indirectColor = indirectColor * 0.5;
						}
						break;
					}
					case 2: // UTS style
					{
						poiLight.indirectColor = saturate(max(half3(0.05, 0.05, 0.05) * 1.0, max(PoiShadeSH9(half4(0.0, 0.0, 0.0, 1.0)), PoiShadeSH9(half4(0.0, -1.0, 0.0, 1.0)).rgb) * 1.0));
						poiLight.directColor = max(poiLight.indirectColor, poiLight.unityLight.color.rgb * poiLight.attenDistance);
						break;
					}
					case 3: // OpenLit
					{
						float3 lightDirectionForSH9 = OpenLitLightingDirectionForSH9(poiLight.unityLight);
						OpenLitShadeSH9ToonDouble(lightDirectionForSH9, poiLight.directColor, poiLight.indirectColor);
						poiLight.directColor += poiLight.unityLight.color.rgb * poiLight.attenDistance;
						break;
					}
				}
				int lightMapMode = 0.0;
				[flatten]
				switch ((int)0.0)
				{
					case 0:
					{
						poiLight.direction = CalculateLuminance(poiLight.unityLight.color.rgb) * poiLight.unityLight.direction.xyz;
						#if !(defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
						poiLight.direction += (PoiSHAr.xyz + PoiSHAg.xyz + PoiSHAb.xyz) / 3.0;
						#else
						poiLight.direction += EstimateAPVDominantDirection(poiMesh.worldPos, poiCam.viewDir);
						#endif
						break;
					}
					case 1:
					{
						poiLight.direction = mul((float3x3)unity_ObjectToWorld, float4(0,0,0,1)).xyz;
						if (lightMapMode == 0) lightMapMode = 1;
						break;
					}
					case 2:
					{
						poiLight.direction = float4(0,0,0,1);
						if (lightMapMode == 0) lightMapMode = 1;
						break;
					}
					case 3: // UTS
					{
						float3 defaultLightDirection = normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
						float3 lightDirection = normalize(lerp(defaultLightDirection, poiLight.unityLight.direction.xyz, any(poiLight.unityLight.direction.xyz)));
						poiLight.direction = lightDirection;
						break;
					}
					case 4: // OpenLit
					{
						poiLight.direction = OpenLitLightingDirection(poiLight.unityLight); // float4 customDir = 0; // Do we want to give users to alter this (OpenLit always does!)?
						break;
					}
					case 5: // View Direction
					{
						float3 upViewDir = UNITY_MATRIX_V[1].xyz;
						float3 rightViewDir = UNITY_MATRIX_V[0].xyz;
						float yawOffset_Rads = radians(!IsInMirror() ? - 0.0 : 0.0);
						float3 rotatedViewYaw = normalize(RotateAroundAxis(rightViewDir, upViewDir, yawOffset_Rads));
						float3 rotatedViewCameraMeshOffset = RotateAroundAxis((poiCam.worldPos - poiMesh.worldPos), upViewDir, yawOffset_Rads);
						float pitchOffset_Rads = radians(!IsInMirror() ? 0.0 : - 0.0);
						float3 rotatedViewPitch = RotateAroundAxis(rotatedViewCameraMeshOffset, rotatedViewYaw, pitchOffset_Rads);
						poiLight.direction = normalize(rotatedViewPitch);
						break;
					}
				}
				if (!any(poiLight.direction))
				{
					poiLight.direction = float3(.4, 1, .4);
				}
				poiLight.direction = normalize(poiLight.direction);
				if (!any(poiLight.directColor) && !any(poiLight.indirectColor) && lightMapMode == 0)
				{
					lightMapMode = 1;
					if (0.0 == 0)
					{
						poiLight.direction = normalize(float3(.4, 1, .4));
					}
				}
				poiLight.halfDir = normalize(poiLight.direction + poiCam.eyeViewDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				half rawNDotV = dot(poiMesh.normals[1], poiCam.eyeViewDir);
				poiLight.nDotV = abs(rawNDotV);
				poiLight.nDotVSaturated = saturate(rawNDotV);
				poiLight.nDotVCentered = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.eyeViewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				poiLight.lDotv = dot(poiLight.direction, poiCam.eyeViewDir);
				poiLight.lDotH = max(0.00001, dot(poiLight.direction, poiLight.halfDir));
				float lightCookieLuminance = CalculateLuminance(poiLight.lightCookie);
				[flatten]
				switch (lightMapMode)
				{
					case 0:
					{
						float3 ShadeSH9Plus = GetSHLength();
						float3 ShadeSH9Minus = float3(PoiSHAr.w, PoiSHAg.w, PoiSHAb.w) + float3(PoiSHBr.z, PoiSHBg.z, PoiSHBb.z) / 3.0;
						float3 SH9_N1 = PoiShadeSH9(float4(poiMesh.normals[1], 1));
						float3 greyScaleVector = float3(.33333, .33333, .33333);
						half bw_lightColor = dot(poiLight.directColor, greyScaleVector);
						float bw_directLighting = (poiLight.nDotLNormalized * bw_lightColor * poiLight.attenShadowsStrength) * lightCookieLuminance + dot(SH9_N1, greyScaleVector);
						float bw_directLightingNoAtten = poiLight.nDotLNormalized * bw_lightColor + dot(SH9_N1, greyScaleVector);
						float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
						float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
						float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
						poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting);
						poiLight.lightMapNoAttenuation = smoothstep(0, lightDifference, bw_directLightingNoAtten - bw_bottomIndirectLighting);
						break;
					}
					case 1:
					{
						poiLight.lightMapNoAttenuation = poiLight.nDotLNormalized;
						poiLight.lightMap = poiLight.nDotLNormalized * poiLight.attenShadowsStrength * lightCookieLuminance;
						break;
					}
					case 2:
					{
						poiLight.lightMapNoAttenuation = poiLight.nDotLSaturated;
						poiLight.lightMap = poiLight.nDotLSaturated * poiLight.attenShadowsStrength * lightCookieLuminance;
						break;
					}
					case 3:
					{
						poiLight.lightMapNoAttenuation = 1;
						poiLight.lightMap = poiLight.attenShadowsStrength * lightCookieLuminance;
						break;
					}
					case 4:
					{
						#if defined(PROP_LIGHTDATASDFMAP)
						float2 lightDataSDFMap = 1;
						if (0.0 > 0)
						{
							float sdfLod = pow(0.0, 4.0);
							lightDataSDFMap = POI2D_SAMPLER_PANGRAD(_LightDataSDFMap, _linear_repeat, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0), max(poiMesh.dx, sdfLod), max(poiMesh.dy, sdfLod)).rg;
						}
						else
						{
							lightDataSDFMap = POI2D_SAMPLER_PAN(_LightDataSDFMap, _linear_repeat, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0)).rg;
						}
						poiLight.lightMapNoAttenuation = poiLight.nDotLSaturated;
						float3 faceR = mul((float3x3)unity_ObjectToWorld, float3(-1.0, 0.0, 0.0));
						float LdotR = dot(poiLight.direction.xz, faceR.xz);
						float sdf = LdotR < 0 ? lightDataSDFMap.g : lightDataSDFMap.r;
						float3 faceF = mul((float3x3)unity_ObjectToWorld, float3(0.0, 0.0, 1.0)).xyz;
						faceF.y *= 1.0;
						faceF = dot(faceF, faceF) == 0 ? 0 : normalize(faceF);
						float3 faceL = poiLight.direction;
						faceL.y *= 1.0;
						faceL = dot(faceL, faceL) == 0 ? 0 : normalize(faceL);
						float lnSDF = dot(faceL, faceF);
						poiLight.lightMapNoAttenuation = saturate(lnSDF * 0.5 + sdf * 0.5 + 0.25);
						poiLight.lightMap = saturate(lnSDF * 0.5 + sdf * 0.5 + 0.25) * poiLight.attenShadowsStrength * lightCookieLuminance;
						#else
						poiLight.lightMapNoAttenuation = poiLight.nDotLNormalized;
						poiLight.lightMap = poiLight.nDotLNormalized * poiLight.attenShadowsStrength * lightCookieLuminance;
						#endif
						break;
					}
				}
				poiLight.lightMapNoAttenuation *= poiLight.detailShadow;
				poiLight.lightMap *= poiLight.detailShadow;
				poiLight.attenuation = poiLight.lightMap;
				poiLight.additiveShadow = poiLight.lightMap;
				poiLight.directColor = max(poiLight.directColor, 0.0001);
				poiLight.indirectColor = max(poiLight.indirectColor, 0.0001);
				if (0.0 == 3)
				{
					poiLight.directColor = max(poiLight.directColor, poiLight.lightingMinLightBrightness);
				}
				else
				{
					poiLight.directColor = PoiMinBrightness(poiLight.directColor, poiLight.lightingMinLightBrightness);
					poiLight.indirectColor = PoiMinBrightness(poiLight.indirectColor, poiLight.lightingMinLightBrightness);
				}
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), poiLight.lightingMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), poiLight.lightingMonochromatic);
				if (poiLight.lightingCapEnabled)
				{
					poiLight.directColor = min(poiLight.directColor, _LightingCap);
					poiLight.indirectColor = min(poiLight.indirectColor, _LightingCap);
				}
				if (0.0 >= 0.5)
				{
					poiLight.directColor = poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				}
				#if defined(POI_PASS_BASE) || defined(POI_PASS_OUTLINE)
				poiLight.directColor = max(poiLight.directColor * 1.0, 0);
				poiLight.directColor = max(poiLight.directColor + 0.0, 0);
				poiLight.indirectColor = max(poiLight.indirectColor * 1.0, 0);
				poiLight.indirectColor = max(poiLight.indirectColor + 0.0, 0);
				#endif
				#ifdef POI_PASS_ADD
				PoiLightDataSetupAdd(poiLight, poiFragData, poiMesh, poiCam, poiMods, i, params);
				if (params.exitCode != 0) return;
				#endif
				params.exitCode = 0;
			}
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + 0.0);
				if (0.0 > 0)
				{
					poiFragData.alpha = maskBlend(poiFragData.alpha, poiMods.globalMask[0.0 - 1], 2.0);
				}
			}
			#ifdef POI_WORLD
			float4 PoiCubicWeights(float v)
			{
				float4 n = float4(1.0, 2.0, 3.0, 4.0) - v;
				float4 s = n * n * n;
				float x = s.x;
				float y = s.y - 4.0 * s.x;
				float z = s.z - 4.0 * s.y + 6.0 * s.x;
				float w = 6.0 - x - y - z;
				return float4(x, y, z, w);
			}
			float4 PoiSampleTex2DBicubic(Texture2D tex, SamplerState smp, float2 uv)
			{
				float texW, texH;
				tex.GetDimensions(texW, texH);
				float2 texSize = float2(texW, texH);
				float2 invTexSize = 1.0 / texSize;
				float2 coord = uv * texSize - 0.5;
				float2 f = frac(coord);
				coord -= f;
				float4 xcubic = PoiCubicWeights(f.x);
				float4 ycubic = PoiCubicWeights(f.y);
				float4 c = float4(coord.x - 0.5, coord.x + 1.5, coord.y - 0.5, coord.y + 1.5);
				float4 s = float4(xcubic.x + xcubic.y, xcubic.z + xcubic.w, ycubic.x + ycubic.y, ycubic.z + ycubic.w);
				float4 offset = c + float4(xcubic.y, xcubic.w, ycubic.y, ycubic.w) / s;
				float4 sample0 = tex.Sample(smp, float2(offset.x, offset.z) * invTexSize);
				float4 sample1 = tex.Sample(smp, float2(offset.y, offset.z) * invTexSize);
				float4 sample2 = tex.Sample(smp, float2(offset.x, offset.w) * invTexSize);
				float4 sample3 = tex.Sample(smp, float2(offset.y, offset.w) * invTexSize);
				float sx = s.x / (s.x + s.y);
				float sy = s.z / (s.z + s.w);
				return lerp(lerp(sample3, sample2, sx), lerp(sample1, sample0, sx), sy);
			}
			float3 PoiSampleBakedLightmap(float2 lightmapUV, float3 worldNormal, float3 tangentNormal)
			{
				#if defined(_LIGHTMAP_BICUBIC)
				float4 rawLM = PoiSampleTex2DBicubic(unity_Lightmap, samplerunity_Lightmap, lightmapUV);
				#else
				float4 rawLM = UNITY_SAMPLE_TEX2D(unity_Lightmap, lightmapUV);
				#endif
				float3 L0 = DecodeLightmap(rawLM);
				
				if (3.0 == 3)
				{
					#if defined(DIRLIGHTMAP_COMBINED)
					#if defined(_LIGHTMAP_BICUBIC)
					float3 nL1 = PoiSampleTex2DBicubic(unity_LightmapInd, samplerunity_Lightmap, lightmapUV).xyz * 2.0 - 1.0;
					#else
					float3 nL1 = UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd, unity_Lightmap, lightmapUV).xyz * 2.0 - 1.0;
					#endif
					float3 L1x = nL1.x * L0 * 2.0;
					float3 L1y = nL1.y * L0 * 2.0;
					float3 L1z = nL1.z * L0 * 2.0;
					return L0 + worldNormal.x * L1x + worldNormal.y * L1y + worldNormal.z * L1z;
					#else
					return L0;
					#endif
				}
				return L0;
			}
			float3 PoiSampleDynamicLightmap(float2 lightmapUV, float3 worldNormal)
			{
				#if defined(_LIGHTMAP_BICUBIC)
				float4 rawDyn = PoiSampleTex2DBicubic(unity_DynamicLightmap, samplerunity_DynamicLightmap, lightmapUV);
				#else
				float4 rawDyn = UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, lightmapUV);
				#endif
				half3 dynDiffuse = DecodeRealtimeLightmap(rawDyn);
				#if defined(DIRLIGHTMAP_COMBINED)
				#if defined(_LIGHTMAP_BICUBIC)
				float4 dirDyn = PoiSampleTex2DBicubic(unity_DynamicDirectionality, samplerunity_DynamicLightmap, lightmapUV);
				#else
				float4 dirDyn = UNITY_SAMPLE_TEX2D_SAMPLER(unity_DynamicDirectionality, unity_DynamicLightmap, lightmapUV);
				#endif
				return DecodeDirectionalLightmap(dynDiffuse, dirDyn, worldNormal);
				#else
				return dynDiffuse;
				#endif
			}
			#endif
			void poiApplyAlphaMask(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				if (2.0)
				{
					half4 alphaMaskTex = 1;
					#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
					alphaMaskTex = POI2D_SAMPLER_PAN(_AlphaMask, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0).xy);
					#endif
					half alphaMask = poiSampleMask(alphaMaskTex, float4(1.0, 0.0, 0.0, 0.0), 2.0, 0.0, float4(0,1,0,1), 1.0, 1.0, 0.0);
					switch ((int)2.0)
					{
						case 1: poiFragData.alpha = alphaMask; break;
						case 2: poiFragData.alpha *= alphaMask; break;
						case 3: poiFragData.alpha = saturate(poiFragData.alpha + alphaMask); break;
						case 4: poiFragData.alpha = saturate(poiFragData.alpha - alphaMask); break;
					}
				}
			}
			void applyMainColor(inout PoiFragData poiFragData, inout PoiMesh poiMesh, inout PoiCam poiCam, inout PoiMods poiMods, inout float4 mainTexture)
			{
				poiFragData.baseColor = mainTexture.rgb;
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				#else
				if(_TwoPassOverrideFirstPassColor == 1)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, _TwoPassColor.rgb, _TwoPassColorThemeIndex);
					poiFragData.alpha = mainTexture.a * _TwoPassColor.a;
				}
				else if(_TwoPassOverrideFirstPassColor == 2)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * _TwoPassAlphaOverride;
				}
				else
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				}
				#endif
				poiApplyAlphaMask(poiFragData, poiMesh);
			}
			void applyMainNormal(inout PoiMesh poiMesh)
			{
				#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
				poiMesh.tangentSpaceNormal = PoiUnpackNormalScale(POI2D_SAMPLER_PAN_STOCHASTIC(_BumpMap, _MainTex, poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0)), float4(0,0,0,0), 0.0), 1.0);
				#else
				poiMesh.tangentSpaceNormal = float3(0, 0, 1);
				#endif
			}
			half3 poiThemeSaturation(half3 color, half amount)
			{
				if (amount <= 0.0)
				{
					return PoiApplyChromatize(color, amount);
				}
				half minRgb = min(color.r, min(color.g, color.b));
				half maxRgb = max(color.r, max(color.g, color.b));
				half rangeRgb = maxRgb - minRgb;
				half3 pureHue = (rangeRgb > 0.0001) ? ((color - minRgb) / rangeRgb) * maxRgb : color;
				half3 saturated = lerp(color, pureHue, saturate(amount));
				return saturated / (1.0 + 0.35 * max(amount - 1.0, 0.0));
			}
			void calculateGlobalThemes(inout PoiMods poiMods)
			{
				half4 themeColorExposures = 0;
				half4 themeColor0, themeColor1, themeColor2, themeColor3 = 0;
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor0.rgb, themeColorExposures.x);
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor1.rgb, themeColorExposures.y);
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor2.rgb, themeColorExposures.z);
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor3.rgb, themeColorExposures.w);
				float themeHue0 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor0.rgb = ModifyViaHSV(themeColor0.rgb, 0.0, 0.0, 0.0);
						themeColor0.rgb = hueShift(themeColor0.rgb, themeHue0, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor0.rgb = hueShift(themeColor0.rgb, themeHue0, 0.0, 1.0);
						themeColor0.rgb = max(0.0, themeColor0.rgb);
						themeColor0.rgb = poiThemeSaturation(themeColor0.rgb, 0.0);
						themeColorExposures.x += log2(max(0.0 + 1.0, 0.0001));
						themeColor0.rgb = max(0.0, themeColor0.rgb);
						break;
					}
					default:
					{
						themeColor0.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor0.rgb = max(0.0, themeColor0.rgb);
				themeColor0.rgb /= max(1.0, max(themeColor0.r, max(themeColor0.g, themeColor0.b)));
				poiMods.globalColorTheme[0] = float4(ApplyHDRExposure(themeColor0.rgb, themeColorExposures.x), float4(1,1,1,1).a);
				float themeHue1 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor1.rgb = ModifyViaHSV(themeColor1.rgb, 0.0, 0.0, 0.0);
						themeColor1.rgb = hueShift(themeColor1.rgb, themeHue1, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor1.rgb = hueShift(themeColor1.rgb, themeHue1, 0.0, 1.0);
						themeColor1.rgb = max(0.0, themeColor1.rgb);
						themeColor1.rgb = poiThemeSaturation(themeColor1.rgb, 0.0);
						themeColorExposures.y += log2(max(0.0 + 1.0, 0.0001));
						themeColor1.rgb = max(0.0, themeColor1.rgb);
						break;
					}
					default:
					{
						themeColor1.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor1.rgb = max(0.0, themeColor1.rgb);
				themeColor1.rgb /= max(1.0, max(themeColor1.r, max(themeColor1.g, themeColor1.b)));
				poiMods.globalColorTheme[1] = float4(ApplyHDRExposure(themeColor1.rgb, themeColorExposures.y), float4(1,1,1,1).a);
				float themeHue2 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor2.rgb = ModifyViaHSV(themeColor2.rgb, 0.0, 0.0, 0.0);
						themeColor2.rgb = hueShift(themeColor2.rgb, themeHue2, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor2.rgb = hueShift(themeColor2.rgb, themeHue2, 0.0, 1.0);
						themeColor2.rgb = max(0.0, themeColor2.rgb);
						themeColor2.rgb = poiThemeSaturation(themeColor2.rgb, 0.0);
						themeColorExposures.z += log2(max(0.0 + 1.0, 0.0001));
						themeColor2.rgb = max(0.0, themeColor2.rgb);
						break;
					}
					default:
					{
						themeColor2.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor2.rgb = max(0.0, themeColor2.rgb);
				themeColor2.rgb /= max(1.0, max(themeColor2.r, max(themeColor2.g, themeColor2.b)));
				poiMods.globalColorTheme[2] = float4(ApplyHDRExposure(themeColor2.rgb, themeColorExposures.z), float4(1,1,1,1).a);
				float themeHue3 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor3.rgb = ModifyViaHSV(themeColor3.rgb, 0.0, 0.0, 0.0);
						themeColor3.rgb = hueShift(themeColor3.rgb, themeHue3, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor3.rgb = hueShift(themeColor3.rgb, themeHue3, 0.0, 1.0);
						themeColor3.rgb = max(0.0, themeColor3.rgb);
						themeColor3.rgb = poiThemeSaturation(themeColor3.rgb, 0.0);
						themeColorExposures.w += log2(max(0.0 + 1.0, 0.0001));
						themeColor3.rgb = max(0.0, themeColor3.rgb);
						break;
					}
					default:
					{
						themeColor3.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor3.rgb = max(0.0, themeColor3.rgb);
				themeColor3.rgb /= max(1.0, max(themeColor3.r, max(themeColor3.g, themeColor3.b)));
				poiMods.globalColorTheme[3] = float4(ApplyHDRExposure(themeColor3.rgb, themeColorExposures.w), float4(1,1,1,1).a);
			}
			void ApplyGlobalMaskModifiers(in PoiMesh poiMesh, inout PoiMods poiMods, in PoiCam poiCam)
			{
			}
			float2 applyUVSettings(float2 uv, float2 tiling, float2 offset, float angle, float2 pan, float rotate)
			{
				uv = uv * tiling + offset;
				float angleRad = angle * (UNITY_PI / 180.0);
				float rotateRad = rotate * (UNITY_PI / 180.0);
				float totalAngle = angleRad + rotateRad * POI_TIME.y;
				if (totalAngle != 0)
				{
					float2 pivot = float2(0.5, 0.5);
					float cosA = cos(totalAngle);
					float sinA = sin(totalAngle);
					uv -= pivot;
					uv = float2(
					uv.x * cosA - uv.y * sinA,
					uv.x * sinA + uv.y * cosA
					);
					uv += pivot;
				}
				uv += pan * POI_TIME.y;
				return uv;
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[0.0] - float4(0.5,0.5,0,0);
				float dist = length(delta);
				float radius;
				
				if (0.0 == 0) // Standard
				{
					radius = dist * 2 * 1.0;
				}
				else if (0.0 == 1) // Log Polar - preserves texture scale
				{
					radius = log(dist + 0.001) * 1.0 + 1;
				}
				else // Square Polar
				{
					radius = max(abs(delta.x), abs(delta.y)) * 2 * 1.0;
				}
				float angle = atan2(delta.x, delta.y);
				float phi = angle / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				angle = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				angle *= 1.0;
				return float2(radius, angle + dist * 0.0);
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0, 1.0 / UNITY_PI);
				return float2(1.0, 1.0) - sphereCoords;
			}
			float2 StereoPanoProjection(float3 coords, int stereoLayout)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				if (stereoLayout == 2)
				return float2(sphereCoords.x * 0.5 + unity_StereoEyeIndex * 0.5, sphereCoords.y);
				return float2(sphereCoords.x, sphereCoords.y * 0.5 + (1 - unity_StereoEyeIndex) * 0.5);
			}
			float2 calculateWorldUV(in PoiMesh poiMesh)
			{
				return float2(0.0 != 3 ? poiMesh.worldPos[ 0.0] : 0.0f, 2.0 != 3 ? poiMesh.worldPos[2.0] : 0.0f);
			}
			float2 calculatelocalUV(in PoiMesh poiMesh)
			{
				float localUVs[8];
				localUVs[0] = poiMesh.localPos.x;
				localUVs[1] = poiMesh.localPos.y;
				localUVs[2] = poiMesh.localPos.z;
				localUVs[3] = 0;
				localUVs[4] = poiMesh.vertexColor.r;
				localUVs[5] = poiMesh.vertexColor.g;
				localUVs[6] = poiMesh.vertexColor.b;
				localUVs[7] = poiMesh.vertexColor.a;
				return float2(localUVs[0.0],localUVs[1.0]);
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh, int panoUseBothEyes, int stereoLayout)
			{
				bool useCenterEye = panoUseBothEyes <= 0;
				float3 panoCameraPosition = getCameraPosition(useCenterEye);
				float3 viewDirection = normalize(poiMesh.worldPos.xyz - panoCameraPosition);
				if (stereoLayout != 0)
				return StereoPanoProjection(viewDirection, stereoLayout);
				else
				return MonoPanoProjection(viewDirection);
			}
			float2 calculateViewNormalUV(in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
				float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				return float2(dot(worldViewRight, poiMesh.normals[0]), dot(worldViewUp, poiMesh.normals[0])) * 0.5 + 0.5;
			}
			float2 calculateScreenSpaceUV(float4 clipPos)
			{
				float4 poiScreenSpaceUV = poiTransformClipSpacetoScreenSpaceFrag(clipPos);
				float2 screenUV = poiScreenSpaceUV.xy / poiScreenSpaceUV.w;
				#ifdef UNITY_SINGLE_PASS_STEREO
				screenUV.x -= unity_StereoEyeIndex;
				#endif
				float2 poiEyeOpticalCenter = 0.5 - 0.5 * float2(UNITY_MATRIX_P._m02, UNITY_MATRIX_P._m12);
				#if UNITY_UV_STARTS_AT_TOP
				poiEyeOpticalCenter.y = 1.0 - poiEyeOpticalCenter.y;
				#endif
				float poiViewAspect = abs(UNITY_MATRIX_P._m11) / max(abs(UNITY_MATRIX_P._m00), 0.000001);
				float2 poiScreenSquareScale = float2(1.0 / max(poiViewAspect, 1.0), min(poiViewAspect, 1.0));
				screenUV = (screenUV - poiEyeOpticalCenter) / poiScreenSquareScale + 0.5;
				if (0.0 >= 0.5)
				{
					float3 pivotView = mul(UNITY_MATRIX_V, mul(unity_ObjectToWorld, float4(0, 0, 0, 1))).xyz;
					float pivotDepth = unity_OrthoParams.w > 0.5 ? 1.0 : max(abs(pivotView.z), 0.0001);
					float projectionScale = max(max(abs(UNITY_MATRIX_P._m00), abs(UNITY_MATRIX_P._m11)), 0.0001);
					float worldSize = 1.0;
					float2 pivotPlane = pivotView.xy * float2(UNITY_MATRIX_P._m00 < 0 ? -1 : 1, UNITY_MATRIX_P._m11 < 0 ? -1 : 1);
					#if UNITY_UV_STARTS_AT_TOP
					pivotPlane.y = -pivotPlane.y;
					#endif
					screenUV = ((screenUV - 0.5) * (2.0 * pivotDepth / projectionScale) - pivotPlane) / worldSize + 0.5;
				}
				return screenUV;
			}
			void PoiShadingGlobalMasks(inout PoiMods poiMods, in PoiLight poiLight)
			{
				if (0.0 > 0)
				{
					applyToGlobalMask(poiMods, 0.0 - 1, 2.0, saturate(poiMax(poiLight.rampedLightMap * 1.0)));
				}
				if (0.0 > 0)
				{
					applyToGlobalMask(poiMods, 0.0 - 1, 2.0, (1 - saturate(poiMax(poiLight.rampedLightMap * 1.0))));
				}
			}
			#ifdef VIGNETTE_MASKED
			float GetRemapMinValue(float scale, float offset)
			{
				return clamp(-offset / scale, -0.01f, 1.01f); // Remap min
			}
			float GetRemapMaxValue(float scale, float offset)
			{
				return clamp((1.0f - offset) / scale, -0.01f, 1.01f); // Remap Max
			}
			#if POI_PIPE == POI_URP
			void PoiAdditionalLightCopy(inout PoiLight poiLight, in PoiLight mainLight, in Light additionalLight, uint lightType, float detailShadow)
			{
				PoiInitStruct(PoiLight, poiLight);
				poiLight.lightType = lightType;
				poiLight.unityLight = additionalLight;
				poiLight.detailShadow = detailShadow;
				poiLight.toonShadowMask = mainLight.toonShadowMask;
				poiLight.occlusion = mainLight.occlusion;
				poiLight.brdfData = mainLight.brdfData;
				poiLight.brdfDataClearCoat = mainLight.brdfDataClearCoat;
				poiLight.lightingMinLightBrightness = mainLight.lightingMinLightBrightness;
				poiLight.lightingCapEnabled = mainLight.lightingCapEnabled;
				poiLight.lightingMonochromatic = mainLight.lightingMonochromatic;
			}
			#endif
			void PoiCalculateShading(inout PoiLight poiLight, inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				half3 litColor = poiLight.directColor * poiLight.lightCookie;
				half3 passthroughColor = poiLight.indirectColor * poiLight.lightCookie;
				half3 ambientColor = poiLight.isAdditive ? passthroughColor : poiLight.indirectColor;
				half ignoreAmbientColor = poiLight.isAdditive ? 0 : 1.0;
				#if (POI_PIPE == POI_BIRP && defined(POI_PASS_ADD)) || (POI_PIPE == POI_URP)
				if (poiLight.isAdditive)
				{
					if (3.0 == 3)
					{
						#if defined(_LIGHTINGMODE_REALISTIC) || defined(_LIGHTINGMODE_CLOTH) || defined(_LIGHTINGMODE_WRAPPED)
						poiLight.rampedLightMap = poiLight.nDotLSaturated;
						poiLight.rampedLightMap *= poiLight.attenDistance;
						#if POI_PIPE == POI_BIRP
						poiLight.finalLighting = litColor * poiLight.nDotLSaturated * poiLight.detailShadow * poiLight.attenShadowsStrength;
						#elif POI_PIPE == POI_URP
						poiLight.finalLighting = LightingPhysicallyBased(poiLight.brdfData, poiLight.brdfDataClearCoat, litColor, poiLight.direction, poiLight.detailShadow * poiLight.attenShadowsStrength, poiMesh.normals[1], poiCam.eyeViewDir, 1.0, false);
						#endif
						poiLight.finalLighting = max(poiLight.finalLighting, passthroughColor);
						return;
						#endif
					}
					if (3.0 == 0)
					{
						poiLight.rampedLightMap = poiLight.nDotLSaturated;
						poiLight.rampedLightMap *= poiLight.attenDistance;
						#if POI_PIPE == POI_BIRP
						poiLight.finalLighting = litColor * poiLight.nDotLSaturated * poiLight.detailShadow * poiLight.attenShadowsStrength;
						#elif POI_PIPE == POI_URP
						poiLight.finalLighting = LightingPhysicallyBased(poiLight.brdfData, poiLight.brdfDataClearCoat, litColor, poiLight.direction, poiLight.detailShadow * poiLight.attenShadowsStrength, poiMesh.normals[1], poiCam.eyeViewDir, 1.0, false);
						#endif
						poiLight.finalLighting = max(poiLight.finalLighting, passthroughColor);
						return;
					}
					if (3.0 == 1)
					{
						float2 ToonAddGradient = float2(0.0, 0.5);
						if (ToonAddGradient.x == ToonAddGradient.y) ToonAddGradient.y += 0.0001;
						poiLight.rampedLightMap = smoothstep(ToonAddGradient.y, ToonAddGradient.x, 1 - poiLight.nDotLNormalized);
						poiLight.rampedLightMap *= poiLight.attenDistance;
						poiLight.finalLighting = lerp(litColor * poiLight.detailShadow * poiLight.attenShadowsStrength, passthroughColor,
						smoothstep(ToonAddGradient.x, ToonAddGradient.y, 1 - poiLight.nDotLNormalized));
						return;
					}
				}
				#endif
				half shadowStrength = 1.0 * poiLight.toonShadowMask.r;
				#ifdef POI_PASS_OUTLINE
				shadowStrength = lerp(0, shadowStrength, POI_OUTLINE_VALUE(0.0, poiMesh.outlineLayer));
				#endif
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = litColor * poiLight.attenShadowsStrength;
				if (1.0 >= 0.5)
				{
					poiLight.rampedLightMap = smoothstep(0.4, 0.6, poiLight.nDotLNormalized);
				}
				else
				{
					poiLight.rampedLightMap = 1;
				}
				if (poiLight.isAdditive)
				{
					poiLight.finalLighting = lerp(passthroughColor, poiLight.finalLighting, poiLight.rampedLightMap);
				}
				#endif
				#if POI_PIPE == POI_BIRP
				if (poiFragData.toggleVertexLights)
				{
					#if defined(VERTEXLIGHT_ON)
					float3 vertexLighting = float3(0, 0, 0);
					for (int index = 0; index < 4; index++)
					{
						float lightingMode = 3.0;
						if (lightingMode == 3)
						{
							#if defined(_LIGHTINGMODE_REALISTIC)
							lightingMode = 0;
							#else
							lightingMode = 1;
							#endif
						}
						if (lightingMode == 0)
						{
							vertexLighting += poiLight.vColor[index] * poiLight.vSaturatedDotNL[index] * poiLight.detailShadow; // Realistic
						}
						if (lightingMode == 1)
						{
							float2 ToonAddGradient = float2(0.0, 0.5);
							if (ToonAddGradient.x == ToonAddGradient.y) ToonAddGradient.y += 0.0001;
							vertexLighting += lerp(poiLight.vColor[index] * poiLight.detailShadow, poiLight.vColor[index] * 0.0, smoothstep(ToonAddGradient.x, ToonAddGradient.y, 1 - (.5 * poiLight.vDotNL[index] + .5)));
						}
					}
					poiLight.finalLighting += vertexLighting;
					#endif
				}
				#endif
				poiLight.rampedLightMap *= poiLight.attenDistance;
				PoiShadingGlobalMasks(poiMods, poiLight);
			}
			#endif
			void PoiLightingNoLoopModules(inout PoiLight poiLight, inout PoiFragData poiFragData,
			in PoiMesh poiMesh, in PoiCam poiCam, inout PoiMods poiMods)
			{
			}
			void PoiLightingDependantModules(inout PoiLight poiLight, inout PoiFragData poiFragData, inout MochieBRDFData mochieBRDFData,
			in PoiMesh poiMesh, in PoiCam poiCam, inout PoiMods poiMods)
			{
			}
			float4 frag(VertexOut i, bool facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiSHAr = unity_SHAr;
				PoiSHAg = unity_SHAg;
				PoiSHAb = unity_SHAb;
				PoiSHBr = unity_SHBr;
				PoiSHBg = unity_SHBg;
				PoiSHBb = unity_SHBb;
				PoiSHC =  unity_SHC;
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				#if POI_PIPE == POI_URP
				PoiLightOut poiLightOut;
				PoiInitStruct(PoiLightOut, poiLightOut);
				#endif
				PoiFragData poiFragData;
				PoiInitStruct(PoiFragData, poiFragData);
				poiFragData.smoothness = 1;
				poiFragData.smoothness2 = 1;
				poiFragData.metallic = 1;
				poiFragData.specularMask = 1;
				poiFragData.reflectionMask = 1;
				poiFragData.alpha = 1;
				MochieBRDFData mochieBRDFData;
				PoiInitStruct(MochieBRDFData, mochieBRDFData);
				poiMesh.objectPosition = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				poiMesh.objNormal = mul((float3x3)unity_WorldToObject, i.normal.xyz);
				poiMesh.normals[0] = i.normal.xyz;
				poiMesh.objectScale = i.normal.w;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				#ifdef POI_TRIPLE_OUTLINE
				poiMesh.outlineLayer = i.poiOutlineLayer;
				#else
				poiMesh.outlineLayer = 0;
				#endif
				#if defined(POI_PASS_LILFUR)
				float3 newTan = i.tangent.xyz - poiMesh.normals[0] * dot(poiMesh.normals[0], i.tangent.xyz);
				poiMesh.tangent[0] = normalize(newTan);
				poiMesh.binormal[0] = normalize(cross(poiMesh.normals[0], poiMesh.tangent[0])) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = (i.tangent.w * unity_WorldTransformParams.w) > 0.0;
				poiMesh.localPos = mul(unity_WorldToObject, float4(i.worldPos.xyz, 1)).xyz;
				#else
				poiMesh.tangent[0] = i.tangent.xyz;
				poiMesh.binormal[0] = cross(i.normal.xyz, i.tangent.xyz) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = i.tangent.w > 0.0;
				poiMesh.localPos = i.localPos.xyz;
				#endif
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace && 1 >= 0.5)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent[0] *= -1;
					poiMesh.binormal[0] *= -1;
				}
				#endif
				poiCam.eyeViewDir = !IsOrthographicCamera() ? (getCameraPosition(false) - i.worldPos.xyz) : UNITY_MATRIX_I_V._m02_m12_m22;
				poiCam.eyeViewDir = normalize(poiCam.eyeViewDir);
				float3 poiCenterCameraPosition = getCameraPosition();
				float3 poiCenterViewDelta = poiCenterCameraPosition - i.worldPos.xyz;
				float poiCenterViewDistanceSq = dot(poiCenterViewDelta, poiCenterViewDelta);
				float poiCenterViewInvDistance = rsqrt(max(poiCenterViewDistanceSq, 1e-12));
				poiCam.viewDir = !IsOrthographicCamera() ? poiCenterViewDelta * poiCenterViewInvDistance : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				half3 tanToWorld0 = half3(poiMesh.tangent[0].x, poiMesh.binormal[0].x, poiMesh.normals[0].x);
				half3 tanToWorld1 = half3(poiMesh.tangent[0].y, poiMesh.binormal[0].y, poiMesh.normals[0].y);
				half3 tanToWorld2 = half3(poiMesh.tangent[0].z, poiMesh.binormal[0].z, poiMesh.normals[0].z);
				half3 ase_tanViewDir = tanToWorld0 * poiCam.eyeViewDir.x + tanToWorld1 * poiCam.eyeViewDir.y + tanToWorld2 * poiCam.eyeViewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.uv[0];
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[8] = poiMesh.uv[0];
				poiMesh.dx = ddx(poiMesh.uv[0]);
				poiMesh.dy = ddy(poiMesh.uv[0]);
				poiMesh.uv[0] = applyUVSettings(poiMesh.uv[0], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[1] = applyUVSettings(poiMesh.uv[1], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[2] = applyUVSettings(poiMesh.uv[2], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[3] = applyUVSettings(poiMesh.uv[3], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				if (0.0 >= 0.5 && !poiMesh.isFrontFace)
				{
					poiMesh.uv[0].x += 1.0;
					poiMesh.uv[1].x += 1.0;
					poiMesh.uv[2].x += 1.0;
					poiMesh.uv[3].x += 1.0;
				}
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh, 1, 0);
				poiMesh.uv[5] = calculateWorldUV(poiMesh);
				poiMesh.uv[8] = calculatelocalUV(poiMesh);
				poiMesh.uv[9] = calculateViewNormalUV(poiMesh, poiCam);
				poiMesh.uv[10] = calculateScreenSpaceUV(i.pos);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				poiMods.globalMask[0] = 1;
				poiMods.globalMask[1] = 1;
				poiMods.globalMask[2] = 1;
				poiMods.globalMask[3] = 1;
				poiMods.globalMask[4] = 1;
				poiMods.globalMask[5] = 1;
				poiMods.globalMask[6] = 1;
				poiMods.globalMask[7] = 1;
				poiMods.globalMask[8] = 1;
				poiMods.globalMask[9] = 1;
				poiMods.globalMask[10] = 1;
				poiMods.globalMask[11] = 1;
				poiMods.globalMask[12] = 1;
				poiMods.globalMask[13] = 1;
				poiMods.globalMask[14] = 1;
				poiMods.globalMask[15] = 1;
				ApplyGlobalMaskModifiers(poiMesh, poiMods, poiCam);
				float2 mainUV = poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0));
				if (0.0 >= 0.5)
				{
					mainUV = sharpSample(float4(0.0004882813,0.0004882813,2048,2048), mainUV);
				}
				float4 mainTexture = POI2D_SAMPLER_PAN_STOCHASTIC(_MainTex, _MainTex, mainUV, float4(0,0,0,0), 0.0);
				mainTexture.a = max(mainTexture.a, 0.0);
				applyMainNormal(poiMesh);
				poiMesh.normals[0] = normalize(poiMesh.normals[0]);
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent[0] +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal[0] +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				poiMesh.tangent[1] = normalize(cross(poiMesh.binormal[0], -poiMesh.normals[1]));
				poiMesh.binormal[1] = normalize(cross(-poiMesh.normals[1], poiMesh.tangent[0]));
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = poiCenterCameraPosition;
				poiCam.reflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[0]);
				poiCam.clipPos = i.pos;
				poiCam.distanceToVert = poiCenterViewDistanceSq * poiCenterViewInvDistance;
				poiCam.posScreenSpace = poiTransformClipSpacetoScreenSpaceFrag(poiCam.clipPos);
				#ifdef UNITY_SINGLE_PASS_STEREO
				poiCam.posScreenSpace.x = poiCam.posScreenSpace.x * 0.5;
				#endif
				poiCam.screenUV = poiCam.posScreenSpace.xy / poiCam.posScreenSpace.w;
				poiCam.posScreenPixels = calcPixelScreenUVs(poiCam.posScreenSpace);
				poiCam.vDotN = abs(dot(poiCam.eyeViewDir, poiMesh.normals[1]));
				poiCam.vDotNCentered = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.worldDirection.xyz = poiMesh.worldPos.xyz - poiCam.worldPos;
				#if defined(POI_PASS_LILFUR)
				poiCam.worldDirection.w = dot(PoiWorldToClipPos(poiMesh.worldPos.xyz), CalculateFrustumCorrection());
				#else
				poiCam.worldDirection.w = i.worldDir;
				#endif
				#if POI_PIPE == POI_URP
				InputData inputData;
				PoiInitStruct(InputData, inputData);
				inputData.positionWS = poiMesh.worldPos;
				inputData.normalWS = poiMesh.normals[1];
				inputData.viewDirectionWS = poiCam.eyeViewDir;
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(i.pos);
				#endif
				calculateGlobalThemes(poiMods);
				if (_UdonForceSceneLighting)
				{
					poiLight.lightingMinLightBrightness = 0;
					poiLight.lightingCapEnabled = 0;
					poiLight.lightingMonochromatic = 0;
				}
				else
				{
					poiLight.lightingMinLightBrightness = _LightingMinLightBrightness;
					poiLight.lightingCapEnabled = _LightingCapEnabled;
					poiLight.lightingMonochromatic = _LightingMonochromatic;
				}
				#if defined(POI_PASS_BASE) || defined(POI_PASS_OUTLINE)
				float3 L0 = float3(0, 0, 0);
				float3 L1r = float3(0, 0, 0);
				float3 L1g = float3(0, 0, 0);
				float3 L1b = float3(0, 0, 0);
				#if POI_PIPE == POI_BIRP
				if (_UdonLightVolumeEnabled && 1.0 >= 0.5)
				{
					LightVolumeSH(poiMesh.worldPos, L0, L1r, L1g, L1b, poiMesh.normals[1] * 0.0, poiMesh.normals[1]);
					float lightVolumeIntensity = saturate(1.0);
					PoiSHAr = lerp(PoiSHAr, float4(L1r, L0.r), lightVolumeIntensity);
					PoiSHAg = lerp(PoiSHAg, float4(L1g, L0.g), lightVolumeIntensity);
					PoiSHAb = lerp(PoiSHAb, float4(L1b, L0.b), lightVolumeIntensity);
					PoiSHBr = lerp(PoiSHBr, 0, lightVolumeIntensity);
					PoiSHBg = lerp(PoiSHBg, 0, lightVolumeIntensity);
					PoiSHBb = lerp(PoiSHBb, 0, lightVolumeIntensity);
					PoiSHC = lerp(PoiSHC, 0, lightVolumeIntensity);
				}
				#endif
				#if POI_PIPE == POI_URP
				#ifdef PROBE_VOLUMES_L1
				if (1.0 >= 0.5)
				{
					APVResources apvRes = FillAPVResources();
					float3 posWS = GetAbsolutePositionWS(poiMesh.worldPos + poiMesh.normals[1] * 0.0);
					posWS = AddNoiseToSamplingPosition(posWS, poiCam.clipPos.xy, poiCam.viewDir);
					APVSample apvSample = SampleAPV(posWS, poiMesh.normals[1], GetMeshRenderingLayer(), poiCam.viewDir);
					if (apvSample.status != APV_SAMPLE_STATUS_INVALID)
					{
						apvSample.Decode();
						PoiSHAr = float4(apvSample.L1_R, apvSample.L0.r);
						PoiSHAg = float4(apvSample.L1_G, apvSample.L0.g);
						PoiSHAb = float4(apvSample.L1_B, apvSample.L0.b);
						#ifdef PROBE_VOLUMES_L2
						PoiSHBr = float4(apvSample.L2_R, apvSample.L0.r);
						PoiSHBg = float4(apvSample.L2_G, apvSample.L0.g);
						PoiSHBb = float4(apvSample.L2_B, apvSample.L0.b);
						PoiSHC = float4(apvSample.L2_C, 0);
						#else
						PoiSHBr = 0;
						PoiSHBg = 0;
						PoiSHBb = 0;
						PoiSHC = 0;
						#endif
					}
				}
				#endif
				#endif
				PoiApplyMinBrightnessToSH(poiLight.lightingMinLightBrightness);
				#endif
				#if defined(PROP_LIGHTINGDETAILSHADOWMAPS)
				half4 DetailShadows = POI2D_SAMPLER_PAN(_LightingDetailShadowMaps, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0));
				half poiDetailShadowAdditional = lerp(1, DetailShadows.r, 1.0) * lerp(1, DetailShadows.g, 0.0) * lerp(1, DetailShadows.b, 0.0) * lerp(1, DetailShadows.a, 0.0);
				half poiDetailShadowMain = lerp(1, DetailShadows.r, 1.0) * lerp(1, DetailShadows.g, 0.0) * lerp(1, DetailShadows.b, 0.0) * lerp(1, DetailShadows.a, 0.0);
				#else
				half poiDetailShadowAdditional = 1;
				half poiDetailShadowMain = 1;
				#endif
				if (0.0 > 0)
				{
					poiDetailShadowAdditional = maskBlend(poiDetailShadowAdditional, poiMods.globalMask[0.0 - 1], 2.0);
					poiDetailShadowMain = maskBlend(poiDetailShadowMain, poiMods.globalMask[0.0 - 1], 2.0);
				}
				#ifndef POI_PASS_ADD
				poiLight.detailShadow = poiDetailShadowMain;
				#else
				poiLight.detailShadow = poiDetailShadowAdditional;
				#endif
				#if defined(PROP_LIGHTINGSHADOWMASKS)
				half4 ShadowMasks = POI2D_SAMPLER_PAN(_LightingShadowMasks, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.toonShadowMask = lerp(1, ShadowMasks.r, 1.0) * lerp(1, ShadowMasks.g, 0.0) * lerp(1, ShadowMasks.b, 0.0) * lerp(1, ShadowMasks.a, 0.0);
				#else
				poiLight.toonShadowMask = 1;
				#endif
				if (0.0 > 0)
				{
					poiLight.toonShadowMask = maskBlend(poiLight.toonShadowMask.r, poiMods.globalMask[0.0 - 1], 2.0);
				}
				#if defined(PROP_LIGHTINGAOMAPS)
				float4 AOMaps = POI2D_SAMPLER_PAN(_LightingAOMaps, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.occlusion = min(min(min(lerp(1, AOMaps.r, 1.0), lerp(1, AOMaps.g, 0.0)), lerp(1, AOMaps.b, 0.0)), lerp(1, AOMaps.a, 0.0));
				#else
				poiLight.occlusion = 1;
				#endif
				if (0.0 > 0)
				{
					poiLight.occlusion = maskBlend(poiLight.occlusion, poiMods.globalMask[0.0 - 1], 2.0);
				}
				#if POI_PIPE == POI_URP
				#if UNITY_VERSION >= 202100
				poiLight.aoFactor = CreateAmbientOcclusionFactor(poiCam.screenUV, poiLight.occlusion);
				#else
				poiLight.aoFactor = GetScreenSpaceAmbientOcclusion(poiCam.screenUV);
				poiLight.aoFactor.indirectAmbientOcclusion = min(poiLight.aoFactor.indirectAmbientOcclusion, poiLight.occlusion);
				#endif
				#endif
				Light mainLight;
				PoiInitStruct(Light, mainLight);
				#if POI_PIPE == POI_BIRP
				mainLight.direction = _WorldSpaceLightPos0.xyz;
				mainLight.color = _LightColor0.rgb;
				#elif POI_PIPE == POI_URP
				half4 poiBakedShadowMask = PoiCalculateShadowMask(i.lightmapUV.xy);
				mainLight = PoiGetMainLight(TransformWorldToShadowCoord(poiMesh.worldPos), poiMesh.worldPos, poiBakedShadowMask, poiLight.aoFactor);
				#ifdef _LIGHT_LAYERS
				uint poiMeshRenderingLayers = GetMeshRenderingLayer();
				if (!IsMatchingLightLayer(mainLight.layerMask, poiMeshRenderingLayers))
				mainLight.color = 0;
				#endif
				BRDFData brdfData;
				InitializeBRDFData(1, 0.0, 0.0, 0.0, poiFragData.alpha, brdfData);
				brdfData.diffuse = 1.0;
				BRDFData brdfDataClearCoat;
				InitializeBRDFDataClearCoat(0.0, 0.5, brdfData, brdfDataClearCoat);
				poiLight.brdfData = brdfData;
				poiLight.brdfDataClearCoat = brdfDataClearCoat;
				#endif
				#if POI_PIPE == POI_BIRP && defined(POI_PASS_ADD) && (defined(POINT) || defined(SPOT) || defined(POINT_COOKIE))
				poiLight.lightType = POI_POINT_SPOT;
				#else
				poiLight.lightType = POI_DIRECTIONAL;
				#endif
				poiLight.unityLight = mainLight;
				PoiShadingParams poiShadingParams;
				PoiInitStruct(PoiShadingParams, poiShadingParams);
				PoiLightDataSetup(poiLight, poiFragData, poiMesh, poiCam, poiMods, i, poiShadingParams);
				if (poiShadingParams.exitCode != 0) return POI_SAFE_RGB1;
				#if POI_PIPE == POI_BIRP
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				if (0.0 >= 0.5) return poiShadingParams.debugColor;
				#endif
				#elif POI_PIPE == POI_URP
				if (0.0 >= 0.5) poiFragData.finalColor = poiShadingParams.debugColor;
				#endif
				applyMainColor(poiFragData, poiMesh, poiCam, poiMods, mainTexture);
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				#ifndef POI_PASS_OUTLINE
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				#endif
				bool skipShading = false;
				#if defined(POI_PASS_OUTLINE)
				if (POI_OUTLINE_VALUE(1.0, poiMesh.outlineLayer) < 0.5) skipShading = true;
				#endif
				#if defined(VIGNETTE_MASKED) && !defined(POI_PASS_META)
				if (!skipShading)
				{
					PoiCalculateShading(poiLight, poiFragData, poiMods, poiMesh, poiCam);
					PoiLightingNoLoopModules(poiLight, poiFragData, poiMesh, poiCam, poiMods);
					PoiLightingDependantModules(poiLight, poiFragData, mochieBRDFData, poiMesh, poiCam, poiMods);
					#if defined(_ADDITIONAL_LIGHTS)
					#if USE_CLUSTER_LIGHT_LOOP
					uint poiForwardPlusLightCount = 0;
					UNITY_LOOP for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, POI_MAX_VISIBLE_LIGHTS); lightIndex++)
					{
						CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK
						++poiForwardPlusLightCount;
						Light additionalLight = PoiGetAdditionalLight(lightIndex, inputData, poiBakedShadowMask, poiLight.aoFactor);
						#ifdef _LIGHT_LAYERS
						if (!IsMatchingLightLayer(additionalLight.layerMask, poiMeshRenderingLayers)) continue;
						#endif
						PoiLight poiLightAdd;
						PoiAdditionalLightCopy(poiLightAdd, poiLight, additionalLight, POI_DIRECTIONAL, poiDetailShadowAdditional);
						poiShadingParams.lightIndex = lightIndex;
						PoiLightDataSetupAdd(poiLightAdd, poiFragData, poiMesh, poiCam, poiMods, i, poiShadingParams);
						poiLightOut.totalLightMap = saturate(poiLightOut.totalLightMap + poiLightAdd.lightMap * poiLightAdd.attenDistance);
						if (poiShadingParams.exitCode != 0) continue;
						PoiCalculateShading(poiLightAdd, poiFragData, poiMods, poiMesh, poiCam);
						poiLightOut.totalRampedLightMap = poiLightOut.totalRampedLightMap + poiLightAdd.rampedLightMap - poiLightOut.totalRampedLightMap * poiLightAdd.rampedLightMap;
						PoiLightingDependantModules(poiLightAdd, poiFragData, mochieBRDFData, poiMesh, poiCam, poiMods);
						poiLightOut.totalLighting += poiLightAdd.finalLighting;
						poiLightOut.totalLightAdd += poiLightAdd.finalLightAdd;
						if (0.0 >= 0.5) poiFragData.finalColor += poiShadingParams.debugColor;
					}
					#endif
					uint pixelLightCount = GetAdditionalLightsCount();
					LIGHT_LOOP_BEGIN(pixelLightCount)
					#if USE_CLUSTER_LIGHT_LOOP
					if (poiForwardPlusLightCount >= POI_MAX_VISIBLE_LIGHTS) break;
					++poiForwardPlusLightCount;
					#endif
					Light additionalLight = PoiGetAdditionalLight(lightIndex, inputData, poiBakedShadowMask, poiLight.aoFactor);
					#ifdef _LIGHT_LAYERS
					if (!IsMatchingLightLayer(additionalLight.layerMask, poiMeshRenderingLayers)) continue;
					#endif
					PoiLight poiLightAdd;
					PoiAdditionalLightCopy(poiLightAdd, poiLight, additionalLight, POI_POINT_SPOT, poiDetailShadowAdditional);
					poiShadingParams.lightIndex = lightIndex;
					PoiLightDataSetupAdd(poiLightAdd, poiFragData, poiMesh, poiCam, poiMods, i, poiShadingParams);
					poiLightOut.totalLightMap = saturate(poiLightOut.totalLightMap + poiLightAdd.lightMap * poiLightAdd.attenDistance);
					if (poiShadingParams.exitCode != 0) continue;
					PoiCalculateShading(poiLightAdd, poiFragData, poiMods, poiMesh, poiCam);
					poiLightOut.totalRampedLightMap = poiLightOut.totalRampedLightMap + poiLightAdd.rampedLightMap - poiLightOut.totalRampedLightMap * poiLightAdd.rampedLightMap;
					PoiLightingDependantModules(poiLightAdd, poiFragData, mochieBRDFData, poiMesh, poiCam, poiMods);
					poiLightOut.totalLighting += poiLightAdd.finalLighting;
					poiLightOut.totalLightAdd += poiLightAdd.finalLightAdd;
					if (0.0 >= 0.5) poiFragData.finalColor += poiShadingParams.debugColor;
					LIGHT_LOOP_END
					#endif
					if (0.0 >= 0.5) return float4(poiFragData.finalColor, 1.0);
				}
				else
				{
					poiLight.finalLighting = 1;
					poiLight.rampedLightMap = 1;
					poiLight.lightMap = 1;
					PoiLightingNoLoopModules(poiLight, poiFragData, poiMesh, poiCam, poiMods);
				}
				#else
				poiLight.finalLighting = 1;
				poiLight.rampedLightMap = poiEdgeNonLinear(poiLight.nDotL, 0.1, .1);
				poiLight.lightMap = poiLight.nDotLNormalized;
				PoiLightingNoLoopModules(poiLight, poiFragData, poiMesh, poiCam, poiMods);
				#endif
				poiLight.directLuminance = dot(poiLight.directColor, float3(0.299, 0.587, 0.114));
				poiLight.indirectLuminance = dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114));
				poiLight.finalLuminance = dot(poiLight.finalLighting, float3(0.299, 0.587, 0.114));
				#ifdef POI_GRABPASS
				poiLight.finalLighting = max(poiLight.finalLighting, 0.0001);
				#endif
				#if POI_PIPE == POI_URP
				poiLight.lightMap = saturate(poiLightOut.totalLightMap + poiLight.lightMap);
				poiLight.rampedLightMap = poiLight.rampedLightMap + poiLightOut.totalRampedLightMap - poiLight.rampedLightMap * poiLightOut.totalRampedLightMap;
				#endif
				
				if (0.0 >= 0.5)
				{
					poiFragData.baseColor *= saturate(poiFragData.alpha);
				}
				poiFragData.finalColor = poiFragData.baseColor;
				#if POI_PIPE == POI_URP
				poiLight.finalLighting += poiLightOut.totalLighting;
				#endif
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				#if POI_PIPE == POI_URP
				poiLight.finalLightAdd += poiLightOut.totalLightAdd;
				#endif
				poiFragData.finalColor += poiLight.finalLightAdd;
				#ifndef POI_PASS_LILFUR
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.alpha = 1.0 ? 1 : poiFragData.alpha;
				#else
				poiFragData.alpha = _AlphaForceOpaque2 ? 1 : poiFragData.alpha;
				#endif
				#endif
				#if defined(POI_PASS_BASE) || defined(POI_PASS_OUTLINE)
				poiFragData.emission = max(poiFragData.emission * 1.0, 0);
				poiFragData.finalColor = max(poiFragData.finalColor * 1.0, 0);
				#endif
				if (0.0 == POI_MODE_OPAQUE)
				{
				}
				clip(poiFragData.alpha - 0.5);
				if (0.0 == POI_MODE_CUTOUT && 0.0 < 0.5)
				{
					poiFragData.alpha = 1;
				}
				poiFragData.finalColor += poiFragData.emission * poiMods.globalEmission;
				applyUnityFog(poiFragData.finalColor, i.fogData, 0.0);
				return float4(poiFragData.finalColor, poiFragData.alpha) + POI_SAFE_RGB0;
			}
			ENDHLSL
		}
		Pass
		{
			Name "ShadowCaster"
			Tags { "LightMode" = "ShadowCaster" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite [_ZWrite]
			Cull Off
			ZClip [_ZClip]
			AlphaToMask Off
			ZTest [_ZTest]
			ColorMask RGBA
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend], [_SrcBlendAlpha] [_DstBlendAlpha]
			HLSLPROGRAM
 #define VIGNETTE_MASKED 
 #define _LIGHTINGMODE_FLAT 
 #define _STOCHASTICMODE_DELIOT_HEITZ 
 #define PROP_BUMPMAP 
 #define OPTIMIZER_ENABLED 
			#pragma target 5.0
			#pragma vertex vert
			#pragma fragment frag
			#if POI_PIPE == POI_URP
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#define FOG_LINEAR 0
			#define FOG_EXP 0
			#define FOG_EXP2 0
			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
			#ifdef POI_WORLD
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#endif
			#else
			#pragma dynamic_branch _ FOG_LINEAR
			#pragma dynamic_branch _ FOG_EXP
			#pragma dynamic_branch _ FOG_EXP2
			#pragma multi_compile_shadowcaster
			#ifdef POI_WORLD
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#endif
			#endif
			#pragma multi_compile_instancing
			#define POI_PASS_SHADOW
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#if UNITY_VERSION >= 2022000
			#if defined(LOD_FADE_CROSSFADE)
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
			#endif
			#endif
			CBUFFER_START(UnityPerMaterial)
			float _GrabMode;
			float _Mode;
			#ifndef _STOCHASTICMODE_NONE
			#ifdef _STOCHASTICMODE_DELIOT_HEITZ
			float _StochasticDeliotHeitzDensity;
			#endif
			#endif
			half4 _Color;
			float _ColorThemeIndex;
			float _MainPixelMode;
			float4 _MainTex_ST;
			float4 _MainTex_TexelSize;
			float2 _MainTexPan;
			float _MainTexUV;
			float _MainTexStochastic;
			half _MainIgnoreTexAlpha;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			float _BumpMapStochastic;
			float4 _AlphaMask_ST;
			float2 _AlphaMaskPan;
			float _AlphaMaskUV;
			half _AlphaMaskInvert;
			float _MainAlphaMaskMode;
			half _AlphaMaskR;
			half _AlphaMaskG;
			half _AlphaMaskB;
			half _AlphaMaskA;
			float _AlphaMaskChannelBlendMode;
			half2 _AlphaMaskMinMax;
			half _AlphaMaskGamma;
			half _AlphaMaskBlendStrength;
			half _AlphaMaskValue;
			float _Cutoff;
			half _AlphaForceOpaque;
			half _AlphaMod;
			half _AlphaPremultiply;
			half _AlphaBoostFA;
			half _AlphaGlobalMask;
			float _AlphaGlobalMaskBlendType;
			int _GlobalMaskVertexColorLinearSpace;
			float2 _UVSettingsTiling0;
			float2 _UVSettingsOffset0;
			float _UVSettingsAngle0;
			float2 _UVSettingsPan0;
			float _UVSettingsRotate0;
			float2 _UVSettingsTiling1;
			float2 _UVSettingsOffset1;
			float _UVSettingsAngle1;
			float2 _UVSettingsPan1;
			float _UVSettingsRotate1;
			float2 _UVSettingsTiling2;
			float2 _UVSettingsOffset2;
			float _UVSettingsAngle2;
			float2 _UVSettingsPan2;
			float _UVSettingsRotate2;
			float2 _UVSettingsTiling3;
			float2 _UVSettingsOffset3;
			float _UVSettingsAngle3;
			float2 _UVSettingsPan3;
			float _UVSettingsRotate3;
			float _ScreenSpaceUVObjectScale;
			float _ScreenSpaceUVWorldSize;
			float _UVSettingsShiftBackfaceUV;
			int _StereoEnabled;
			int _PanoUseBothEyes;
			float _PolarUV;
			float _PolarMode;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _UVModWorldPos0;
			float _UVModWorldPos1;
			float _UVModLocalPos0;
			float _UVModLocalPos1;
			CBUFFER_END
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			int _FlipBackfaceNormals;
			float _AddBlendOp;
			float _Cull;
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define STEREO_UV(uv) float3(uv, unity_StereoEyeIndex)
			#else
			#define STEREO_UV(uv) uv
			#endif
			#if POI_PIPE == POI_BIRP
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			Texture2DArray<float> _CameraDepthTexture;
			#else
			Texture2D<float> _CameraDepthTexture;
			#endif
			#endif
			#if POI_PIPE == POI_URP
			TEXTURE2D_X_FLOAT(_CameraDepthTexture);
			float4 _CameraDepthTexture_TexelSize;
			#endif
			float SampleScreenDepth(float2 uv)
			{
				uv.y = _ProjectionParams.x * 0.5 + 0.5 - uv.y * _ProjectionParams.x;
				return _CameraDepthTexture.SampleLevel(sampler_point_clamp, STEREO_UV(uv), 0).r;
			}
			bool DepthTextureExists()
			{
				float3 dTexDim = 0;
				#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y, dTexDim.z);
				#else
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y);
				#endif
				return dTexDim.x > 16;
			}
			UNITY_DECLARE_TEX2D(_MainTex);
			#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BumpMap;
			#endif
			#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaMask;
			#endif
			float3 _LightDirection;
			float3 _LightPosition;
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				half4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				#ifdef POI_PASS_MOTION_VECTORS
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
				float3 alembicMotionVector : TEXCOORD5;
				#endif
				#endif
				#ifdef POI_RAYMARCHING_DATA
				float4 poiBindPosition : TEXCOORD5;
				half4 poiBindNormal : TEXCOORD6;
				half4 poiBindTangent : TEXCOORD7;
				#endif
				#ifdef POI_TESSELLATED
				uint vertexId : TEXCOORD6;
				#else
				uint vertexId : SV_VertexID;
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct VertexOut
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				half4 normal : TEXCOORD2;
				half4 tangent : TEXCOORD3;
				float4 worldPos : TEXCOORD4;
				float4 localPos : TEXCOORD5;
				half4 vertexColor : TEXCOORD6;
				float4 lightmapUV : TEXCOORD7;
				float worldDir : TEXCOORD8;
				float fogData: TEXCOORD10;
				POI_SHADOW_COORDS(9)
				#ifdef POI_SQUISH
				half squishAmount : TEXCOORD11;
				#endif
				#ifdef POIBS_BLOOMFOG
				float2 bsFogScreenUV : TEXCOORD12;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD13;
				float4 LightCoord : TEXCOORD14;
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				float4 positionCSNoJitter         : POSITION_CS_NO_JITTER;
				float4 previousPositionCSNoJitter : PREV_POSITION_CS_NO_JITTER;
				#endif
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(POI_DEVICE_QUEST)
				uint gl_Layer : SV_RenderTargetArrayIndex;
				#endif
			};
			float2 vertexUV(in VertexOut o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in appdata v, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return v.uv0.xy * w0 + v.uv1.xy * w1 + v.uv2.xy * w2 + v.uv3.xy * w3;
			}
			#ifdef POI_PASS_LILFUR
			float2 vertexUV(in PoiGeoToFragLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in PoiVertToGeoLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			#endif
			half3 poiThemeColor(in PoiMods poiMods, in half3 srcColor, in half themeIndex)
			{
				half3 outputColor = srcColor;
				if (themeIndex != 0)
				{
					themeIndex = max(themeIndex - 1, 0);
					if (themeIndex <= 3)
					{
						outputColor = poiMods.globalColorTheme[themeIndex].rgb;
					}
					else
					{
						#ifdef POI_AUDIOLINK
						if (poiMods.audioLinkAvailable)
						{
							outputColor = poiMods.globalColorTheme[themeIndex].rgb;
						}
						#endif
					}
				}
				return outputColor;
			}
			struct PoiSpriteSheetConfig
			{
				float columns;
				float rows;
				float totalFrames;
				float frameSelection;
				float fps;
				float randomStart;
				float inset;
				float2 textureST;
			};
			float poiSpriteSheetFrameIndex(PoiSpriteSheetConfig config, float progress, float seed)
			{
				float totalFrames = (config.totalFrames > 0) ? config.totalFrames : (config.columns * config.rows);
				float frameIndex = 0;
				if (config.frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (config.frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (config.frameSelection == 2)
				{
					float timeOffset = config.randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * config.fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float poiSpriteSheetFrameIndex(float columns, float rows, float configTotalFrames, float frameSelection, float fps, float randomStart, float progress, float seed)
			{
				float totalFrames = (configTotalFrames > 0) ? configTotalFrames : (columns * rows);
				float frameIndex = 0;
				if (frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (frameSelection == 2)
				{
					float timeOffset = randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float2 poiSpriteSheetUV(float2 uv, float columns, float rows, float frameIndex, float inset, float2 textureST)
			{
				float invCols = 1.0 / columns;
				float invRows = 1.0 / rows;
				float2 frameSize = float2(invCols, invRows);
				float column = fmod(frameIndex, columns);
				float row = floor(frameIndex * invCols);
				row = rows - 1 - row;
				float2 lookupUV = (uv * frameSize) + float2(column, row) * frameSize;
				if (inset > 0)
				{
					float2 texelInset = inset * frameSize / max(textureST, 1e-6);
					lookupUV = lerp(lookupUV, float2(column + 1, row + 1) * frameSize, texelInset);
				}
				return lookupUV;
			}
			float2 poiSpriteSheetUV(float2 uv, PoiSpriteSheetConfig config, float frameIndex)
			{
				return poiSpriteSheetUV(uv, config.columns, config.rows, frameIndex, config.inset, config.textureST);
			}
			void applyReducedRenderClipDistance(inout VertexOut o)
			{
				if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
				{
					#if defined(UNITY_REVERSED_Z) // DirectX
					o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					#else // OpenGL
					o.pos.z = o.pos.z * 0.0001 - o.pos.w * 0.999;
					#endif
				}
			}
			#if POI_PIPE == POI_URP
			#if UNITY_VERSION < 600000
			half IsDirectionalLight()
			{
				return round(_ShadowBias.z) == 1.0 ? 1 : 0;
			}
			float4 ApplyShadowClamping(float4 positionCS)
			{
				#if UNITY_REVERSED_Z
				float clamped = min(positionCS.z, positionCS.w * UNITY_NEAR_CLIP_VALUE);
				#else
				float clamped = max(positionCS.z, positionCS.w * UNITY_NEAR_CLIP_VALUE);
				#endif
				positionCS.z = lerp(positionCS.z, clamped, IsDirectionalLight());
				return positionCS;
			}
			#endif
			float4 GetShadowPositionHClip(float3 positionWS, float3 normalWS)
			{
				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
				float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
				float3 lightDirectionWS = _LightDirection;
				#endif
				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));
				positionCS = ApplyShadowClamping(positionCS);
				return positionCS;
			}
			#endif
			VertexOut vert(appdata v
			#ifdef POI_TRIPLE_OUTLINE
			, uint poiOutlineLayer
			#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				VertexOut o;
				PoiInitStruct(VertexOut, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				POI_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				#if defined(POI_PASS_OUTLINETWO)
				if (0.0 < 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#elif defined(POI_PASS_OUTLINE)
				if (0.0 > 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#endif
				#ifdef POI_AUDIOLINK
				float vertexAudioLink[5];
				vertexAudioLink[0] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 0))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 0))[0];
				vertexAudioLink[1] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 1))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 1))[0];
				vertexAudioLink[2] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 2))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 2))[0];
				vertexAudioLink[3] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 3))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 3))[0];
				vertexAudioLink[4] = AudioLinkData(ALPASS_GENERALVU + float2(8, 0))[0];
				#endif
				o.uv[0] = float4(v.uv0.xy, v.uv1.xy);
				o.uv[1] = float4(v.uv2.xy, v.uv3.xy);
				o.normal.w = length(mul((float3x3)unity_ObjectToWorld, v.normal));
				#if POI_PIPE == POI_BIRP
				o.normal.xyz = PoiObjectToWorldNormal(v.normal);
				o.tangent.xyz = UnityObjectToWorldDir(v.tangent);
				#elif  POI_PIPE == POI_URP
				VertexNormalInputs vertexNormalInput = GetVertexNormalInputs(v.normal, v.tangent);
				o.normal.xyz = vertexNormalInput.normalWS;
				o.tangent.xyz = vertexNormalInput.tangentWS;
				#endif
				o.tangent.w = v.tangent.w;
				o.vertexColor = v.color;
				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV(v.uv1.xy, unity_LightmapST, o.lightmapUV.xy);
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.xyz += localOffset;
				o.worldPos.xyz += worldOffset;
				o.pos = PoiObjectToClipPos(o.localPos.xyz);
				o.fogData = o.pos.z;
				#if !defined(POI_PASS_SHADOW)
				POI_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				v.vertex.xyz = o.localPos.xyz;
				POI_TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				o.worldDir = dot(o.pos, CalculateFrustumCorrection());
				if (0.0 >= 0.5)
				{
					applyReducedRenderClipDistance(o);
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#ifdef EDITOR_VISUALIZATION
				UnityEditorVizData(v.vertex.xyz, o.uv[0].xy, o.uv[0].zw, o.uv[1].xy, o.VizUV, o.LightCoord);
				#endif
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				#if defined(APPLICATION_SPACE_WARP_MOTION)
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				o.pos = o.positionCSNoJitter;
				#else
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				#endif
				float4 prevPos = (unity_MotionVectorsParams.x == 1) ? float4(v.positionOld, 1) : o.localPos;
				#if _ADD_PRECOMPUTED_VELOCITY
				prevPos = prevPos - float4(v.alembicMotionVector, 0);
				#endif
				o.previousPositionCSNoJitter = mul(_PrevViewProjMatrix, mul(UNITY_PREV_MATRIX_M, prevPos));
				#endif
				#endif
				#ifdef POI_PASS_LILFUR
				#endif
				return o;
			}
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			#define POI2D_SAMPLER_STOCHASTIC(tex, texSampler, uv, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, uv) : POI2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_SAMPLER_PAN_STOCHASTIC(tex, texSampler, uv, pan, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan)) : POI2D_SAMPLER_PAN(tex, texSampler, uv, pan))
			#define POI2D_SAMPLER_PANGRAD_STOCHASTIC(tex, texSampler, uv, pan, dx, dy, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan), dx, dy) : POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, dx, dy))
			#endif
			#if !defined(_STOCHASTICMODE_NONE)
			float2 StochasticHash2D2D(float2 s)
			{
				return frac(sin(float2(dot(s, float2(127.1, 311.7)), dot(s, float2(269.5, 183.3)))) * 43758.5453);
			}
			#endif
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			float3x3 DeliotHeitzStochasticUVBW(float2 uv)
			{
				const float2x2 stochasticSkewedGrid = float2x2(1.0, -0.57735027, 0.0, 1.15470054);
				float2 skewUV = mul(stochasticSkewedGrid, uv * 3.4641 * 1.0);
				float2 vxID = floor(skewUV);
				float3 bary = float3(frac(skewUV), 0);
				bary.z = 1.0 - bary.x - bary.y;
				float3x3 pos = float3x3(
				float3(vxID, bary.z),
				float3(vxID + float2(0, 1), bary.y),
				float3(vxID + float2(1, 0), bary.x)
				);
				float3x3 neg = float3x3(
				float3(vxID + float2(1, 1), -bary.z),
				float3(vxID + float2(1, 0), 1.0 - bary.y),
				float3(vxID + float2(0, 1), 1.0 - bary.x)
				);
				return (bary.z > 0) ? pos : neg;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv, float2 dx, float2 dy)
			{
				float3x3 UVBW = DeliotHeitzStochasticUVBW(uv);
				return mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[0].xy), dx, dy), UVBW[0].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[1].xy), dx, dy), UVBW[1].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[2].xy), dx, dy), UVBW[2].z) ;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv)
			{
				float2 dx = ddx(uv), dy = ddy(uv);
				return DeliotHeitzSampleTexture(tex, texSampler, uv, dx, dy);
			}
			#endif // defined(_STOCHASTICMODE_DELIOT_HEITZ)
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + 0.0);
				if (0.0 > 0)
				{
					poiFragData.alpha = maskBlend(poiFragData.alpha, poiMods.globalMask[0.0 - 1], 2.0);
				}
			}
			void poiApplyAlphaMask(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				if (2.0)
				{
					half4 alphaMaskTex = 1;
					#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
					alphaMaskTex = POI2D_SAMPLER_PAN(_AlphaMask, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0).xy);
					#endif
					half alphaMask = poiSampleMask(alphaMaskTex, float4(1.0, 0.0, 0.0, 0.0), 2.0, 0.0, float4(0,1,0,1), 1.0, 1.0, 0.0);
					switch ((int)2.0)
					{
						case 1: poiFragData.alpha = alphaMask; break;
						case 2: poiFragData.alpha *= alphaMask; break;
						case 3: poiFragData.alpha = saturate(poiFragData.alpha + alphaMask); break;
						case 4: poiFragData.alpha = saturate(poiFragData.alpha - alphaMask); break;
					}
				}
			}
			void applyMainColor(inout PoiFragData poiFragData, inout PoiMesh poiMesh, inout PoiCam poiCam, inout PoiMods poiMods, inout float4 mainTexture)
			{
				poiFragData.baseColor = mainTexture.rgb;
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				#else
				if(_TwoPassOverrideFirstPassColor == 1)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, _TwoPassColor.rgb, _TwoPassColorThemeIndex);
					poiFragData.alpha = mainTexture.a * _TwoPassColor.a;
				}
				else if(_TwoPassOverrideFirstPassColor == 2)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * _TwoPassAlphaOverride;
				}
				else
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				}
				#endif
				poiApplyAlphaMask(poiFragData, poiMesh);
			}
			void applyMainNormal(inout PoiMesh poiMesh)
			{
				#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
				poiMesh.tangentSpaceNormal = PoiUnpackNormalScale(POI2D_SAMPLER_PAN_STOCHASTIC(_BumpMap, _MainTex, poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0)), float4(0,0,0,0), 0.0), 1.0);
				#else
				poiMesh.tangentSpaceNormal = float3(0, 0, 1);
				#endif
			}
			void ApplyGlobalMaskModifiers(in PoiMesh poiMesh, inout PoiMods poiMods, in PoiCam poiCam)
			{
			}
			float2 applyUVSettings(float2 uv, float2 tiling, float2 offset, float angle, float2 pan, float rotate)
			{
				uv = uv * tiling + offset;
				float angleRad = angle * (UNITY_PI / 180.0);
				float rotateRad = rotate * (UNITY_PI / 180.0);
				float totalAngle = angleRad + rotateRad * POI_TIME.y;
				if (totalAngle != 0)
				{
					float2 pivot = float2(0.5, 0.5);
					float cosA = cos(totalAngle);
					float sinA = sin(totalAngle);
					uv -= pivot;
					uv = float2(
					uv.x * cosA - uv.y * sinA,
					uv.x * sinA + uv.y * cosA
					);
					uv += pivot;
				}
				uv += pan * POI_TIME.y;
				return uv;
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[0.0] - float4(0.5,0.5,0,0);
				float dist = length(delta);
				float radius;
				
				if (0.0 == 0) // Standard
				{
					radius = dist * 2 * 1.0;
				}
				else if (0.0 == 1) // Log Polar - preserves texture scale
				{
					radius = log(dist + 0.001) * 1.0 + 1;
				}
				else // Square Polar
				{
					radius = max(abs(delta.x), abs(delta.y)) * 2 * 1.0;
				}
				float angle = atan2(delta.x, delta.y);
				float phi = angle / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				angle = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				angle *= 1.0;
				return float2(radius, angle + dist * 0.0);
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0, 1.0 / UNITY_PI);
				return float2(1.0, 1.0) - sphereCoords;
			}
			float2 StereoPanoProjection(float3 coords, int stereoLayout)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				if (stereoLayout == 2)
				return float2(sphereCoords.x * 0.5 + unity_StereoEyeIndex * 0.5, sphereCoords.y);
				return float2(sphereCoords.x, sphereCoords.y * 0.5 + (1 - unity_StereoEyeIndex) * 0.5);
			}
			float2 calculateWorldUV(in PoiMesh poiMesh)
			{
				return float2(0.0 != 3 ? poiMesh.worldPos[ 0.0] : 0.0f, 2.0 != 3 ? poiMesh.worldPos[2.0] : 0.0f);
			}
			float2 calculatelocalUV(in PoiMesh poiMesh)
			{
				float localUVs[8];
				localUVs[0] = poiMesh.localPos.x;
				localUVs[1] = poiMesh.localPos.y;
				localUVs[2] = poiMesh.localPos.z;
				localUVs[3] = 0;
				localUVs[4] = poiMesh.vertexColor.r;
				localUVs[5] = poiMesh.vertexColor.g;
				localUVs[6] = poiMesh.vertexColor.b;
				localUVs[7] = poiMesh.vertexColor.a;
				return float2(localUVs[0.0],localUVs[1.0]);
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh, int panoUseBothEyes, int stereoLayout)
			{
				bool useCenterEye = panoUseBothEyes <= 0;
				float3 panoCameraPosition = getCameraPosition(useCenterEye);
				float3 viewDirection = normalize(poiMesh.worldPos.xyz - panoCameraPosition);
				if (stereoLayout != 0)
				return StereoPanoProjection(viewDirection, stereoLayout);
				else
				return MonoPanoProjection(viewDirection);
			}
			float2 calculateViewNormalUV(in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
				float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				return float2(dot(worldViewRight, poiMesh.normals[0]), dot(worldViewUp, poiMesh.normals[0])) * 0.5 + 0.5;
			}
			float2 calculateScreenSpaceUV(float4 clipPos)
			{
				float4 poiScreenSpaceUV = poiTransformClipSpacetoScreenSpaceFrag(clipPos);
				float2 screenUV = poiScreenSpaceUV.xy / poiScreenSpaceUV.w;
				#ifdef UNITY_SINGLE_PASS_STEREO
				screenUV.x -= unity_StereoEyeIndex;
				#endif
				float2 poiEyeOpticalCenter = 0.5 - 0.5 * float2(UNITY_MATRIX_P._m02, UNITY_MATRIX_P._m12);
				#if UNITY_UV_STARTS_AT_TOP
				poiEyeOpticalCenter.y = 1.0 - poiEyeOpticalCenter.y;
				#endif
				float poiViewAspect = abs(UNITY_MATRIX_P._m11) / max(abs(UNITY_MATRIX_P._m00), 0.000001);
				float2 poiScreenSquareScale = float2(1.0 / max(poiViewAspect, 1.0), min(poiViewAspect, 1.0));
				screenUV = (screenUV - poiEyeOpticalCenter) / poiScreenSquareScale + 0.5;
				if (0.0 >= 0.5)
				{
					float3 pivotView = mul(UNITY_MATRIX_V, mul(unity_ObjectToWorld, float4(0, 0, 0, 1))).xyz;
					float pivotDepth = unity_OrthoParams.w > 0.5 ? 1.0 : max(abs(pivotView.z), 0.0001);
					float projectionScale = max(max(abs(UNITY_MATRIX_P._m00), abs(UNITY_MATRIX_P._m11)), 0.0001);
					float worldSize = 1.0;
					float2 pivotPlane = pivotView.xy * float2(UNITY_MATRIX_P._m00 < 0 ? -1 : 1, UNITY_MATRIX_P._m11 < 0 ? -1 : 1);
					#if UNITY_UV_STARTS_AT_TOP
					pivotPlane.y = -pivotPlane.y;
					#endif
					screenUV = ((screenUV - 0.5) * (2.0 * pivotDepth / projectionScale) - pivotPlane) / worldSize + 0.5;
				}
				return screenUV;
			}
			float4 frag(VertexOut i, bool facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				#ifdef LOD_FADE_CROSSFADE
				#if POI_PIPE == POI_URP
				#if UNITY_VERSION >= 2022000
				LODFadeCrossFade(i.pos);
				#endif
				#else
				UnityApplyDitherCrossFade(i.pos.xy);
				#endif
				#endif
				PoiSHAr = unity_SHAr;
				PoiSHAg = unity_SHAg;
				PoiSHAb = unity_SHAb;
				PoiSHBr = unity_SHBr;
				PoiSHBg = unity_SHBg;
				PoiSHBb = unity_SHBb;
				PoiSHC =  unity_SHC;
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				#if POI_PIPE == POI_URP
				PoiLightOut poiLightOut;
				PoiInitStruct(PoiLightOut, poiLightOut);
				#endif
				PoiFragData poiFragData;
				PoiInitStruct(PoiFragData, poiFragData);
				poiFragData.smoothness = 1;
				poiFragData.smoothness2 = 1;
				poiFragData.metallic = 1;
				poiFragData.specularMask = 1;
				poiFragData.reflectionMask = 1;
				poiFragData.alpha = 1;
				poiMesh.objectPosition = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				poiMesh.objNormal = mul((float3x3)unity_WorldToObject, i.normal.xyz);
				poiMesh.normals[0] = i.normal.xyz;
				poiMesh.objectScale = i.normal.w;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				#ifdef POI_TRIPLE_OUTLINE
				poiMesh.outlineLayer = i.poiOutlineLayer;
				#else
				poiMesh.outlineLayer = 0;
				#endif
				#if defined(POI_PASS_LILFUR)
				float3 newTan = i.tangent.xyz - poiMesh.normals[0] * dot(poiMesh.normals[0], i.tangent.xyz);
				poiMesh.tangent[0] = normalize(newTan);
				poiMesh.binormal[0] = normalize(cross(poiMesh.normals[0], poiMesh.tangent[0])) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = (i.tangent.w * unity_WorldTransformParams.w) > 0.0;
				poiMesh.localPos = mul(unity_WorldToObject, float4(i.worldPos.xyz, 1)).xyz;
				#else
				poiMesh.tangent[0] = i.tangent.xyz;
				poiMesh.binormal[0] = cross(i.normal.xyz, i.tangent.xyz) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = i.tangent.w > 0.0;
				poiMesh.localPos = i.localPos.xyz;
				#endif
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace && 1 >= 0.5)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent[0] *= -1;
					poiMesh.binormal[0] *= -1;
				}
				#endif
				poiCam.eyeViewDir = !IsOrthographicCamera() ? (getCameraPosition(false) - i.worldPos.xyz) : UNITY_MATRIX_I_V._m02_m12_m22;
				poiCam.eyeViewDir = normalize(poiCam.eyeViewDir);
				float3 poiCenterCameraPosition = getCameraPosition();
				float3 poiCenterViewDelta = poiCenterCameraPosition - i.worldPos.xyz;
				float poiCenterViewDistanceSq = dot(poiCenterViewDelta, poiCenterViewDelta);
				float poiCenterViewInvDistance = rsqrt(max(poiCenterViewDistanceSq, 1e-12));
				poiCam.viewDir = !IsOrthographicCamera() ? poiCenterViewDelta * poiCenterViewInvDistance : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				half3 tanToWorld0 = half3(poiMesh.tangent[0].x, poiMesh.binormal[0].x, poiMesh.normals[0].x);
				half3 tanToWorld1 = half3(poiMesh.tangent[0].y, poiMesh.binormal[0].y, poiMesh.normals[0].y);
				half3 tanToWorld2 = half3(poiMesh.tangent[0].z, poiMesh.binormal[0].z, poiMesh.normals[0].z);
				half3 ase_tanViewDir = tanToWorld0 * poiCam.eyeViewDir.x + tanToWorld1 * poiCam.eyeViewDir.y + tanToWorld2 * poiCam.eyeViewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.uv[0];
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[8] = poiMesh.uv[0];
				poiMesh.dx = ddx(poiMesh.uv[0]);
				poiMesh.dy = ddy(poiMesh.uv[0]);
				poiMesh.uv[0] = applyUVSettings(poiMesh.uv[0], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[1] = applyUVSettings(poiMesh.uv[1], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[2] = applyUVSettings(poiMesh.uv[2], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[3] = applyUVSettings(poiMesh.uv[3], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				if (0.0 >= 0.5 && !poiMesh.isFrontFace)
				{
					poiMesh.uv[0].x += 1.0;
					poiMesh.uv[1].x += 1.0;
					poiMesh.uv[2].x += 1.0;
					poiMesh.uv[3].x += 1.0;
				}
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh, 1, 0);
				poiMesh.uv[5] = calculateWorldUV(poiMesh);
				poiMesh.uv[8] = calculatelocalUV(poiMesh);
				poiMesh.uv[9] = calculateViewNormalUV(poiMesh, poiCam);
				poiMesh.uv[10] = calculateScreenSpaceUV(i.pos);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				poiMods.globalMask[0] = 1;
				poiMods.globalMask[1] = 1;
				poiMods.globalMask[2] = 1;
				poiMods.globalMask[3] = 1;
				poiMods.globalMask[4] = 1;
				poiMods.globalMask[5] = 1;
				poiMods.globalMask[6] = 1;
				poiMods.globalMask[7] = 1;
				poiMods.globalMask[8] = 1;
				poiMods.globalMask[9] = 1;
				poiMods.globalMask[10] = 1;
				poiMods.globalMask[11] = 1;
				poiMods.globalMask[12] = 1;
				poiMods.globalMask[13] = 1;
				poiMods.globalMask[14] = 1;
				poiMods.globalMask[15] = 1;
				ApplyGlobalMaskModifiers(poiMesh, poiMods, poiCam);
				float2 mainUV = poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0));
				if (0.0 >= 0.5)
				{
					mainUV = sharpSample(float4(0.0004882813,0.0004882813,2048,2048), mainUV);
				}
				float4 mainTexture = POI2D_SAMPLER_PAN_STOCHASTIC(_MainTex, _MainTex, mainUV, float4(0,0,0,0), 0.0);
				mainTexture.a = max(mainTexture.a, 0.0);
				applyMainNormal(poiMesh);
				poiMesh.normals[0] = normalize(poiMesh.normals[0]);
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent[0] +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal[0] +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				poiMesh.tangent[1] = normalize(cross(poiMesh.binormal[0], -poiMesh.normals[1]));
				poiMesh.binormal[1] = normalize(cross(-poiMesh.normals[1], poiMesh.tangent[0]));
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = poiCenterCameraPosition;
				poiCam.reflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[0]);
				poiCam.clipPos = i.pos;
				poiCam.distanceToVert = poiCenterViewDistanceSq * poiCenterViewInvDistance;
				poiCam.posScreenSpace = poiTransformClipSpacetoScreenSpaceFrag(poiCam.clipPos);
				#ifdef UNITY_SINGLE_PASS_STEREO
				poiCam.posScreenSpace.x = poiCam.posScreenSpace.x * 0.5;
				#endif
				poiCam.screenUV = poiCam.posScreenSpace.xy / poiCam.posScreenSpace.w;
				poiCam.posScreenPixels = calcPixelScreenUVs(poiCam.posScreenSpace);
				poiCam.vDotN = abs(dot(poiCam.eyeViewDir, poiMesh.normals[1]));
				poiCam.vDotNCentered = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.worldDirection.xyz = poiMesh.worldPos.xyz - poiCam.worldPos;
				#if defined(POI_PASS_LILFUR)
				poiCam.worldDirection.w = dot(PoiWorldToClipPos(poiMesh.worldPos.xyz), CalculateFrustumCorrection());
				#else
				poiCam.worldDirection.w = i.worldDir;
				#endif
				#if POI_PIPE == POI_URP
				InputData inputData;
				PoiInitStruct(InputData, inputData);
				inputData.positionWS = poiMesh.worldPos;
				inputData.normalWS = poiMesh.normals[1];
				inputData.viewDirectionWS = poiCam.eyeViewDir;
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(i.pos);
				#endif
				applyMainColor(poiFragData, poiMesh, poiCam, poiMods, mainTexture);
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				poiFragData.finalColor = poiFragData.baseColor;
				#ifndef POI_PASS_LILFUR
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.alpha = 1.0 ? 1 : poiFragData.alpha;
				#else
				poiFragData.alpha = _AlphaForceOpaque2 ? 1 : poiFragData.alpha;
				#endif
				#endif
				if (0.0 == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				clip(poiFragData.alpha - 0.5);
				applyUnityFog(poiFragData.finalColor, i.fogData, 0.0);
				return float4(poiFragData.finalColor, poiFragData.alpha) + POI_SAFE_RGB0;
			}
			ENDHLSL
		}
		Pass
		{
			Name "DepthOnly"
			Tags { "LightMode" = "DepthOnly" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite [_ZWrite]
			Cull Off
			ZClip [_ZClip]
			AlphaToMask Off
			ZTest [_ZTest]
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend], [_SrcBlendAlpha] [_DstBlendAlpha]
			HLSLPROGRAM
 #define VIGNETTE_MASKED 
 #define _LIGHTINGMODE_FLAT 
 #define _STOCHASTICMODE_DELIOT_HEITZ 
 #define PROP_BUMPMAP 
 #define OPTIMIZER_ENABLED 
			#pragma target 5.0
			#define POI_PASS_DEPTH_ONLY
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#pragma vertex vert
			#pragma fragment frag
			CBUFFER_START(UnityPerMaterial)
			float _GrabMode;
			float _Mode;
			#ifndef _STOCHASTICMODE_NONE
			#ifdef _STOCHASTICMODE_DELIOT_HEITZ
			float _StochasticDeliotHeitzDensity;
			#endif
			#endif
			half4 _Color;
			float _ColorThemeIndex;
			float _MainPixelMode;
			float4 _MainTex_ST;
			float4 _MainTex_TexelSize;
			float2 _MainTexPan;
			float _MainTexUV;
			float _MainTexStochastic;
			half _MainIgnoreTexAlpha;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			float _BumpMapStochastic;
			float4 _AlphaMask_ST;
			float2 _AlphaMaskPan;
			float _AlphaMaskUV;
			half _AlphaMaskInvert;
			float _MainAlphaMaskMode;
			half _AlphaMaskR;
			half _AlphaMaskG;
			half _AlphaMaskB;
			half _AlphaMaskA;
			float _AlphaMaskChannelBlendMode;
			half2 _AlphaMaskMinMax;
			half _AlphaMaskGamma;
			half _AlphaMaskBlendStrength;
			half _AlphaMaskValue;
			float _Cutoff;
			half _AlphaForceOpaque;
			half _AlphaMod;
			half _AlphaPremultiply;
			half _AlphaBoostFA;
			half _AlphaGlobalMask;
			float _AlphaGlobalMaskBlendType;
			int _GlobalMaskVertexColorLinearSpace;
			float2 _UVSettingsTiling0;
			float2 _UVSettingsOffset0;
			float _UVSettingsAngle0;
			float2 _UVSettingsPan0;
			float _UVSettingsRotate0;
			float2 _UVSettingsTiling1;
			float2 _UVSettingsOffset1;
			float _UVSettingsAngle1;
			float2 _UVSettingsPan1;
			float _UVSettingsRotate1;
			float2 _UVSettingsTiling2;
			float2 _UVSettingsOffset2;
			float _UVSettingsAngle2;
			float2 _UVSettingsPan2;
			float _UVSettingsRotate2;
			float2 _UVSettingsTiling3;
			float2 _UVSettingsOffset3;
			float _UVSettingsAngle3;
			float2 _UVSettingsPan3;
			float _UVSettingsRotate3;
			float _ScreenSpaceUVObjectScale;
			float _ScreenSpaceUVWorldSize;
			float _UVSettingsShiftBackfaceUV;
			int _StereoEnabled;
			int _PanoUseBothEyes;
			float _PolarUV;
			float _PolarMode;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _UVModWorldPos0;
			float _UVModWorldPos1;
			float _UVModLocalPos0;
			float _UVModLocalPos1;
			CBUFFER_END
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			int _FlipBackfaceNormals;
			float _AddBlendOp;
			float _Cull;
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define STEREO_UV(uv) float3(uv, unity_StereoEyeIndex)
			#else
			#define STEREO_UV(uv) uv
			#endif
			#if POI_PIPE == POI_BIRP
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			Texture2DArray<float> _CameraDepthTexture;
			#else
			Texture2D<float> _CameraDepthTexture;
			#endif
			#endif
			#if POI_PIPE == POI_URP
			TEXTURE2D_X_FLOAT(_CameraDepthTexture);
			float4 _CameraDepthTexture_TexelSize;
			#endif
			float SampleScreenDepth(float2 uv)
			{
				uv.y = _ProjectionParams.x * 0.5 + 0.5 - uv.y * _ProjectionParams.x;
				return _CameraDepthTexture.SampleLevel(sampler_point_clamp, STEREO_UV(uv), 0).r;
			}
			bool DepthTextureExists()
			{
				float3 dTexDim = 0;
				#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y, dTexDim.z);
				#else
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y);
				#endif
				return dTexDim.x > 16;
			}
			UNITY_DECLARE_TEX2D(_MainTex);
			#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BumpMap;
			#endif
			#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaMask;
			#endif
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				half4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				#ifdef POI_PASS_MOTION_VECTORS
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
				float3 alembicMotionVector : TEXCOORD5;
				#endif
				#endif
				#ifdef POI_RAYMARCHING_DATA
				float4 poiBindPosition : TEXCOORD5;
				half4 poiBindNormal : TEXCOORD6;
				half4 poiBindTangent : TEXCOORD7;
				#endif
				#ifdef POI_TESSELLATED
				uint vertexId : TEXCOORD6;
				#else
				uint vertexId : SV_VertexID;
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct VertexOut
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				half4 normal : TEXCOORD2;
				half4 tangent : TEXCOORD3;
				float4 worldPos : TEXCOORD4;
				float4 localPos : TEXCOORD5;
				half4 vertexColor : TEXCOORD6;
				float4 lightmapUV : TEXCOORD7;
				float worldDir : TEXCOORD8;
				float fogData: TEXCOORD10;
				POI_SHADOW_COORDS(9)
				#ifdef POI_SQUISH
				half squishAmount : TEXCOORD11;
				#endif
				#ifdef POIBS_BLOOMFOG
				float2 bsFogScreenUV : TEXCOORD12;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD13;
				float4 LightCoord : TEXCOORD14;
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				float4 positionCSNoJitter         : POSITION_CS_NO_JITTER;
				float4 previousPositionCSNoJitter : PREV_POSITION_CS_NO_JITTER;
				#endif
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(POI_DEVICE_QUEST)
				uint gl_Layer : SV_RenderTargetArrayIndex;
				#endif
			};
			float2 vertexUV(in VertexOut o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in appdata v, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return v.uv0.xy * w0 + v.uv1.xy * w1 + v.uv2.xy * w2 + v.uv3.xy * w3;
			}
			#ifdef POI_PASS_LILFUR
			float2 vertexUV(in PoiGeoToFragLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in PoiVertToGeoLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			#endif
			half3 poiThemeColor(in PoiMods poiMods, in half3 srcColor, in half themeIndex)
			{
				half3 outputColor = srcColor;
				if (themeIndex != 0)
				{
					themeIndex = max(themeIndex - 1, 0);
					if (themeIndex <= 3)
					{
						outputColor = poiMods.globalColorTheme[themeIndex].rgb;
					}
					else
					{
						#ifdef POI_AUDIOLINK
						if (poiMods.audioLinkAvailable)
						{
							outputColor = poiMods.globalColorTheme[themeIndex].rgb;
						}
						#endif
					}
				}
				return outputColor;
			}
			struct PoiSpriteSheetConfig
			{
				float columns;
				float rows;
				float totalFrames;
				float frameSelection;
				float fps;
				float randomStart;
				float inset;
				float2 textureST;
			};
			float poiSpriteSheetFrameIndex(PoiSpriteSheetConfig config, float progress, float seed)
			{
				float totalFrames = (config.totalFrames > 0) ? config.totalFrames : (config.columns * config.rows);
				float frameIndex = 0;
				if (config.frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (config.frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (config.frameSelection == 2)
				{
					float timeOffset = config.randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * config.fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float poiSpriteSheetFrameIndex(float columns, float rows, float configTotalFrames, float frameSelection, float fps, float randomStart, float progress, float seed)
			{
				float totalFrames = (configTotalFrames > 0) ? configTotalFrames : (columns * rows);
				float frameIndex = 0;
				if (frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (frameSelection == 2)
				{
					float timeOffset = randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float2 poiSpriteSheetUV(float2 uv, float columns, float rows, float frameIndex, float inset, float2 textureST)
			{
				float invCols = 1.0 / columns;
				float invRows = 1.0 / rows;
				float2 frameSize = float2(invCols, invRows);
				float column = fmod(frameIndex, columns);
				float row = floor(frameIndex * invCols);
				row = rows - 1 - row;
				float2 lookupUV = (uv * frameSize) + float2(column, row) * frameSize;
				if (inset > 0)
				{
					float2 texelInset = inset * frameSize / max(textureST, 1e-6);
					lookupUV = lerp(lookupUV, float2(column + 1, row + 1) * frameSize, texelInset);
				}
				return lookupUV;
			}
			float2 poiSpriteSheetUV(float2 uv, PoiSpriteSheetConfig config, float frameIndex)
			{
				return poiSpriteSheetUV(uv, config.columns, config.rows, frameIndex, config.inset, config.textureST);
			}
			void applyReducedRenderClipDistance(inout VertexOut o)
			{
				if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
				{
					#if defined(UNITY_REVERSED_Z) // DirectX
					o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					#else // OpenGL
					o.pos.z = o.pos.z * 0.0001 - o.pos.w * 0.999;
					#endif
				}
			}
			VertexOut vert(appdata v
			#ifdef POI_TRIPLE_OUTLINE
			, uint poiOutlineLayer
			#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				VertexOut o;
				PoiInitStruct(VertexOut, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				POI_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				#if defined(POI_PASS_OUTLINETWO)
				if (0.0 < 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#elif defined(POI_PASS_OUTLINE)
				if (0.0 > 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#endif
				#ifdef POI_AUDIOLINK
				float vertexAudioLink[5];
				vertexAudioLink[0] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 0))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 0))[0];
				vertexAudioLink[1] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 1))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 1))[0];
				vertexAudioLink[2] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 2))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 2))[0];
				vertexAudioLink[3] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 3))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 3))[0];
				vertexAudioLink[4] = AudioLinkData(ALPASS_GENERALVU + float2(8, 0))[0];
				#endif
				o.uv[0] = float4(v.uv0.xy, v.uv1.xy);
				o.uv[1] = float4(v.uv2.xy, v.uv3.xy);
				o.normal.w = length(mul((float3x3)unity_ObjectToWorld, v.normal));
				#if POI_PIPE == POI_BIRP
				o.normal.xyz = PoiObjectToWorldNormal(v.normal);
				o.tangent.xyz = UnityObjectToWorldDir(v.tangent);
				#elif  POI_PIPE == POI_URP
				VertexNormalInputs vertexNormalInput = GetVertexNormalInputs(v.normal, v.tangent);
				o.normal.xyz = vertexNormalInput.normalWS;
				o.tangent.xyz = vertexNormalInput.tangentWS;
				#endif
				o.tangent.w = v.tangent.w;
				o.vertexColor = v.color;
				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV(v.uv1.xy, unity_LightmapST, o.lightmapUV.xy);
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.xyz += localOffset;
				o.worldPos.xyz += worldOffset;
				o.pos = PoiObjectToClipPos(o.localPos.xyz);
				o.fogData = o.pos.z;
				#if !defined(POI_PASS_SHADOW)
				POI_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				v.vertex.xyz = o.localPos.xyz;
				POI_TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				o.worldDir = dot(o.pos, CalculateFrustumCorrection());
				if (0.0 >= 0.5)
				{
					applyReducedRenderClipDistance(o);
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#ifdef EDITOR_VISUALIZATION
				UnityEditorVizData(v.vertex.xyz, o.uv[0].xy, o.uv[0].zw, o.uv[1].xy, o.VizUV, o.LightCoord);
				#endif
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				#if defined(APPLICATION_SPACE_WARP_MOTION)
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				o.pos = o.positionCSNoJitter;
				#else
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				#endif
				float4 prevPos = (unity_MotionVectorsParams.x == 1) ? float4(v.positionOld, 1) : o.localPos;
				#if _ADD_PRECOMPUTED_VELOCITY
				prevPos = prevPos - float4(v.alembicMotionVector, 0);
				#endif
				o.previousPositionCSNoJitter = mul(_PrevViewProjMatrix, mul(UNITY_PREV_MATRIX_M, prevPos));
				#endif
				#endif
				#ifdef POI_PASS_LILFUR
				#endif
				return o;
			}
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			#define POI2D_SAMPLER_STOCHASTIC(tex, texSampler, uv, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, uv) : POI2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_SAMPLER_PAN_STOCHASTIC(tex, texSampler, uv, pan, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan)) : POI2D_SAMPLER_PAN(tex, texSampler, uv, pan))
			#define POI2D_SAMPLER_PANGRAD_STOCHASTIC(tex, texSampler, uv, pan, dx, dy, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan), dx, dy) : POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, dx, dy))
			#endif
			#if !defined(_STOCHASTICMODE_NONE)
			float2 StochasticHash2D2D(float2 s)
			{
				return frac(sin(float2(dot(s, float2(127.1, 311.7)), dot(s, float2(269.5, 183.3)))) * 43758.5453);
			}
			#endif
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			float3x3 DeliotHeitzStochasticUVBW(float2 uv)
			{
				const float2x2 stochasticSkewedGrid = float2x2(1.0, -0.57735027, 0.0, 1.15470054);
				float2 skewUV = mul(stochasticSkewedGrid, uv * 3.4641 * 1.0);
				float2 vxID = floor(skewUV);
				float3 bary = float3(frac(skewUV), 0);
				bary.z = 1.0 - bary.x - bary.y;
				float3x3 pos = float3x3(
				float3(vxID, bary.z),
				float3(vxID + float2(0, 1), bary.y),
				float3(vxID + float2(1, 0), bary.x)
				);
				float3x3 neg = float3x3(
				float3(vxID + float2(1, 1), -bary.z),
				float3(vxID + float2(1, 0), 1.0 - bary.y),
				float3(vxID + float2(0, 1), 1.0 - bary.x)
				);
				return (bary.z > 0) ? pos : neg;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv, float2 dx, float2 dy)
			{
				float3x3 UVBW = DeliotHeitzStochasticUVBW(uv);
				return mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[0].xy), dx, dy), UVBW[0].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[1].xy), dx, dy), UVBW[1].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[2].xy), dx, dy), UVBW[2].z) ;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv)
			{
				float2 dx = ddx(uv), dy = ddy(uv);
				return DeliotHeitzSampleTexture(tex, texSampler, uv, dx, dy);
			}
			#endif // defined(_STOCHASTICMODE_DELIOT_HEITZ)
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + 0.0);
				if (0.0 > 0)
				{
					poiFragData.alpha = maskBlend(poiFragData.alpha, poiMods.globalMask[0.0 - 1], 2.0);
				}
			}
			void poiApplyAlphaMask(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				if (2.0)
				{
					half4 alphaMaskTex = 1;
					#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
					alphaMaskTex = POI2D_SAMPLER_PAN(_AlphaMask, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0).xy);
					#endif
					half alphaMask = poiSampleMask(alphaMaskTex, float4(1.0, 0.0, 0.0, 0.0), 2.0, 0.0, float4(0,1,0,1), 1.0, 1.0, 0.0);
					switch ((int)2.0)
					{
						case 1: poiFragData.alpha = alphaMask; break;
						case 2: poiFragData.alpha *= alphaMask; break;
						case 3: poiFragData.alpha = saturate(poiFragData.alpha + alphaMask); break;
						case 4: poiFragData.alpha = saturate(poiFragData.alpha - alphaMask); break;
					}
				}
			}
			void applyMainColor(inout PoiFragData poiFragData, inout PoiMesh poiMesh, inout PoiCam poiCam, inout PoiMods poiMods, inout float4 mainTexture)
			{
				poiFragData.baseColor = mainTexture.rgb;
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				#else
				if(_TwoPassOverrideFirstPassColor == 1)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, _TwoPassColor.rgb, _TwoPassColorThemeIndex);
					poiFragData.alpha = mainTexture.a * _TwoPassColor.a;
				}
				else if(_TwoPassOverrideFirstPassColor == 2)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * _TwoPassAlphaOverride;
				}
				else
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				}
				#endif
				poiApplyAlphaMask(poiFragData, poiMesh);
			}
			void applyMainNormal(inout PoiMesh poiMesh)
			{
				#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
				poiMesh.tangentSpaceNormal = PoiUnpackNormalScale(POI2D_SAMPLER_PAN_STOCHASTIC(_BumpMap, _MainTex, poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0)), float4(0,0,0,0), 0.0), 1.0);
				#else
				poiMesh.tangentSpaceNormal = float3(0, 0, 1);
				#endif
			}
			void ApplyGlobalMaskModifiers(in PoiMesh poiMesh, inout PoiMods poiMods, in PoiCam poiCam)
			{
			}
			float2 applyUVSettings(float2 uv, float2 tiling, float2 offset, float angle, float2 pan, float rotate)
			{
				uv = uv * tiling + offset;
				float angleRad = angle * (UNITY_PI / 180.0);
				float rotateRad = rotate * (UNITY_PI / 180.0);
				float totalAngle = angleRad + rotateRad * POI_TIME.y;
				if (totalAngle != 0)
				{
					float2 pivot = float2(0.5, 0.5);
					float cosA = cos(totalAngle);
					float sinA = sin(totalAngle);
					uv -= pivot;
					uv = float2(
					uv.x * cosA - uv.y * sinA,
					uv.x * sinA + uv.y * cosA
					);
					uv += pivot;
				}
				uv += pan * POI_TIME.y;
				return uv;
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[0.0] - float4(0.5,0.5,0,0);
				float dist = length(delta);
				float radius;
				
				if (0.0 == 0) // Standard
				{
					radius = dist * 2 * 1.0;
				}
				else if (0.0 == 1) // Log Polar - preserves texture scale
				{
					radius = log(dist + 0.001) * 1.0 + 1;
				}
				else // Square Polar
				{
					radius = max(abs(delta.x), abs(delta.y)) * 2 * 1.0;
				}
				float angle = atan2(delta.x, delta.y);
				float phi = angle / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				angle = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				angle *= 1.0;
				return float2(radius, angle + dist * 0.0);
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0, 1.0 / UNITY_PI);
				return float2(1.0, 1.0) - sphereCoords;
			}
			float2 StereoPanoProjection(float3 coords, int stereoLayout)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				if (stereoLayout == 2)
				return float2(sphereCoords.x * 0.5 + unity_StereoEyeIndex * 0.5, sphereCoords.y);
				return float2(sphereCoords.x, sphereCoords.y * 0.5 + (1 - unity_StereoEyeIndex) * 0.5);
			}
			float2 calculateWorldUV(in PoiMesh poiMesh)
			{
				return float2(0.0 != 3 ? poiMesh.worldPos[ 0.0] : 0.0f, 2.0 != 3 ? poiMesh.worldPos[2.0] : 0.0f);
			}
			float2 calculatelocalUV(in PoiMesh poiMesh)
			{
				float localUVs[8];
				localUVs[0] = poiMesh.localPos.x;
				localUVs[1] = poiMesh.localPos.y;
				localUVs[2] = poiMesh.localPos.z;
				localUVs[3] = 0;
				localUVs[4] = poiMesh.vertexColor.r;
				localUVs[5] = poiMesh.vertexColor.g;
				localUVs[6] = poiMesh.vertexColor.b;
				localUVs[7] = poiMesh.vertexColor.a;
				return float2(localUVs[0.0],localUVs[1.0]);
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh, int panoUseBothEyes, int stereoLayout)
			{
				bool useCenterEye = panoUseBothEyes <= 0;
				float3 panoCameraPosition = getCameraPosition(useCenterEye);
				float3 viewDirection = normalize(poiMesh.worldPos.xyz - panoCameraPosition);
				if (stereoLayout != 0)
				return StereoPanoProjection(viewDirection, stereoLayout);
				else
				return MonoPanoProjection(viewDirection);
			}
			float2 calculateViewNormalUV(in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
				float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				return float2(dot(worldViewRight, poiMesh.normals[0]), dot(worldViewUp, poiMesh.normals[0])) * 0.5 + 0.5;
			}
			float2 calculateScreenSpaceUV(float4 clipPos)
			{
				float4 poiScreenSpaceUV = poiTransformClipSpacetoScreenSpaceFrag(clipPos);
				float2 screenUV = poiScreenSpaceUV.xy / poiScreenSpaceUV.w;
				#ifdef UNITY_SINGLE_PASS_STEREO
				screenUV.x -= unity_StereoEyeIndex;
				#endif
				float2 poiEyeOpticalCenter = 0.5 - 0.5 * float2(UNITY_MATRIX_P._m02, UNITY_MATRIX_P._m12);
				#if UNITY_UV_STARTS_AT_TOP
				poiEyeOpticalCenter.y = 1.0 - poiEyeOpticalCenter.y;
				#endif
				float poiViewAspect = abs(UNITY_MATRIX_P._m11) / max(abs(UNITY_MATRIX_P._m00), 0.000001);
				float2 poiScreenSquareScale = float2(1.0 / max(poiViewAspect, 1.0), min(poiViewAspect, 1.0));
				screenUV = (screenUV - poiEyeOpticalCenter) / poiScreenSquareScale + 0.5;
				if (0.0 >= 0.5)
				{
					float3 pivotView = mul(UNITY_MATRIX_V, mul(unity_ObjectToWorld, float4(0, 0, 0, 1))).xyz;
					float pivotDepth = unity_OrthoParams.w > 0.5 ? 1.0 : max(abs(pivotView.z), 0.0001);
					float projectionScale = max(max(abs(UNITY_MATRIX_P._m00), abs(UNITY_MATRIX_P._m11)), 0.0001);
					float worldSize = 1.0;
					float2 pivotPlane = pivotView.xy * float2(UNITY_MATRIX_P._m00 < 0 ? -1 : 1, UNITY_MATRIX_P._m11 < 0 ? -1 : 1);
					#if UNITY_UV_STARTS_AT_TOP
					pivotPlane.y = -pivotPlane.y;
					#endif
					screenUV = ((screenUV - 0.5) * (2.0 * pivotDepth / projectionScale) - pivotPlane) / worldSize + 0.5;
				}
				return screenUV;
			}
			#if POI_PIPE == POI_BIRP
			float4 frag( VertexOut i, bool facing : SV_IsFrontFace ) : SV_Target
			#else
			void frag( VertexOut i, bool facing : SV_IsFrontFace, out half outDepth: SV_Target0 )
			#endif
			{
				#if POI_PIPE == POI_BIRP
				clip(_RenderingEarlyZEnabled - 1.0);
				#endif
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiSHAr = unity_SHAr;
				PoiSHAg = unity_SHAg;
				PoiSHAb = unity_SHAb;
				PoiSHBr = unity_SHBr;
				PoiSHBg = unity_SHBg;
				PoiSHBb = unity_SHBb;
				PoiSHC =  unity_SHC;
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				#if POI_PIPE == POI_URP
				PoiLightOut poiLightOut;
				PoiInitStruct(PoiLightOut, poiLightOut);
				#endif
				PoiFragData poiFragData;
				PoiInitStruct(PoiFragData, poiFragData);
				poiFragData.smoothness = 1;
				poiFragData.smoothness2 = 1;
				poiFragData.metallic = 1;
				poiFragData.specularMask = 1;
				poiFragData.reflectionMask = 1;
				poiFragData.alpha = 1;
				poiMesh.objectPosition = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				poiMesh.objNormal = mul((float3x3)unity_WorldToObject, i.normal.xyz);
				poiMesh.normals[0] = i.normal.xyz;
				poiMesh.objectScale = i.normal.w;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				#ifdef POI_TRIPLE_OUTLINE
				poiMesh.outlineLayer = i.poiOutlineLayer;
				#else
				poiMesh.outlineLayer = 0;
				#endif
				#if defined(POI_PASS_LILFUR)
				float3 newTan = i.tangent.xyz - poiMesh.normals[0] * dot(poiMesh.normals[0], i.tangent.xyz);
				poiMesh.tangent[0] = normalize(newTan);
				poiMesh.binormal[0] = normalize(cross(poiMesh.normals[0], poiMesh.tangent[0])) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = (i.tangent.w * unity_WorldTransformParams.w) > 0.0;
				poiMesh.localPos = mul(unity_WorldToObject, float4(i.worldPos.xyz, 1)).xyz;
				#else
				poiMesh.tangent[0] = i.tangent.xyz;
				poiMesh.binormal[0] = cross(i.normal.xyz, i.tangent.xyz) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = i.tangent.w > 0.0;
				poiMesh.localPos = i.localPos.xyz;
				#endif
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace && 1 >= 0.5)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent[0] *= -1;
					poiMesh.binormal[0] *= -1;
				}
				#endif
				poiCam.eyeViewDir = !IsOrthographicCamera() ? (getCameraPosition(false) - i.worldPos.xyz) : UNITY_MATRIX_I_V._m02_m12_m22;
				poiCam.eyeViewDir = normalize(poiCam.eyeViewDir);
				float3 poiCenterCameraPosition = getCameraPosition();
				float3 poiCenterViewDelta = poiCenterCameraPosition - i.worldPos.xyz;
				float poiCenterViewDistanceSq = dot(poiCenterViewDelta, poiCenterViewDelta);
				float poiCenterViewInvDistance = rsqrt(max(poiCenterViewDistanceSq, 1e-12));
				poiCam.viewDir = !IsOrthographicCamera() ? poiCenterViewDelta * poiCenterViewInvDistance : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				half3 tanToWorld0 = half3(poiMesh.tangent[0].x, poiMesh.binormal[0].x, poiMesh.normals[0].x);
				half3 tanToWorld1 = half3(poiMesh.tangent[0].y, poiMesh.binormal[0].y, poiMesh.normals[0].y);
				half3 tanToWorld2 = half3(poiMesh.tangent[0].z, poiMesh.binormal[0].z, poiMesh.normals[0].z);
				half3 ase_tanViewDir = tanToWorld0 * poiCam.eyeViewDir.x + tanToWorld1 * poiCam.eyeViewDir.y + tanToWorld2 * poiCam.eyeViewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.uv[0];
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[8] = poiMesh.uv[0];
				poiMesh.dx = ddx(poiMesh.uv[0]);
				poiMesh.dy = ddy(poiMesh.uv[0]);
				poiMesh.uv[0] = applyUVSettings(poiMesh.uv[0], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[1] = applyUVSettings(poiMesh.uv[1], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[2] = applyUVSettings(poiMesh.uv[2], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[3] = applyUVSettings(poiMesh.uv[3], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				if (0.0 >= 0.5 && !poiMesh.isFrontFace)
				{
					poiMesh.uv[0].x += 1.0;
					poiMesh.uv[1].x += 1.0;
					poiMesh.uv[2].x += 1.0;
					poiMesh.uv[3].x += 1.0;
				}
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh, 1, 0);
				poiMesh.uv[5] = calculateWorldUV(poiMesh);
				poiMesh.uv[8] = calculatelocalUV(poiMesh);
				poiMesh.uv[9] = calculateViewNormalUV(poiMesh, poiCam);
				poiMesh.uv[10] = calculateScreenSpaceUV(i.pos);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				poiMods.globalMask[0] = 1;
				poiMods.globalMask[1] = 1;
				poiMods.globalMask[2] = 1;
				poiMods.globalMask[3] = 1;
				poiMods.globalMask[4] = 1;
				poiMods.globalMask[5] = 1;
				poiMods.globalMask[6] = 1;
				poiMods.globalMask[7] = 1;
				poiMods.globalMask[8] = 1;
				poiMods.globalMask[9] = 1;
				poiMods.globalMask[10] = 1;
				poiMods.globalMask[11] = 1;
				poiMods.globalMask[12] = 1;
				poiMods.globalMask[13] = 1;
				poiMods.globalMask[14] = 1;
				poiMods.globalMask[15] = 1;
				ApplyGlobalMaskModifiers(poiMesh, poiMods, poiCam);
				float2 mainUV = poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0));
				if (0.0 >= 0.5)
				{
					mainUV = sharpSample(float4(0.0004882813,0.0004882813,2048,2048), mainUV);
				}
				float4 mainTexture = POI2D_SAMPLER_PAN_STOCHASTIC(_MainTex, _MainTex, mainUV, float4(0,0,0,0), 0.0);
				mainTexture.a = max(mainTexture.a, 0.0);
				applyMainNormal(poiMesh);
				poiMesh.normals[0] = normalize(poiMesh.normals[0]);
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent[0] +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal[0] +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				poiMesh.tangent[1] = normalize(cross(poiMesh.binormal[0], -poiMesh.normals[1]));
				poiMesh.binormal[1] = normalize(cross(-poiMesh.normals[1], poiMesh.tangent[0]));
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = poiCenterCameraPosition;
				poiCam.reflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[0]);
				poiCam.clipPos = i.pos;
				poiCam.distanceToVert = poiCenterViewDistanceSq * poiCenterViewInvDistance;
				poiCam.posScreenSpace = poiTransformClipSpacetoScreenSpaceFrag(poiCam.clipPos);
				#ifdef UNITY_SINGLE_PASS_STEREO
				poiCam.posScreenSpace.x = poiCam.posScreenSpace.x * 0.5;
				#endif
				poiCam.screenUV = poiCam.posScreenSpace.xy / poiCam.posScreenSpace.w;
				poiCam.posScreenPixels = calcPixelScreenUVs(poiCam.posScreenSpace);
				poiCam.vDotN = abs(dot(poiCam.eyeViewDir, poiMesh.normals[1]));
				poiCam.vDotNCentered = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.worldDirection.xyz = poiMesh.worldPos.xyz - poiCam.worldPos;
				#if defined(POI_PASS_LILFUR)
				poiCam.worldDirection.w = dot(PoiWorldToClipPos(poiMesh.worldPos.xyz), CalculateFrustumCorrection());
				#else
				poiCam.worldDirection.w = i.worldDir;
				#endif
				#if POI_PIPE == POI_URP
				InputData inputData;
				PoiInitStruct(InputData, inputData);
				inputData.positionWS = poiMesh.worldPos;
				inputData.normalWS = poiMesh.normals[1];
				inputData.viewDirectionWS = poiCam.eyeViewDir;
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(i.pos);
				#endif
				applyMainColor(poiFragData, poiMesh, poiCam, poiMods, mainTexture);
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				#ifndef POI_PASS_LILFUR
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.alpha = 1.0 ? 1 : poiFragData.alpha;
				#else
				poiFragData.alpha = _AlphaForceOpaque2 ? 1 : poiFragData.alpha;
				#endif
				#endif
				clip(poiFragData.alpha - 0.5);
				#if POI_PIPE == POI_URP
				outDepth = i.pos.z + POI_SAFE_RGB0.r;
				#endif
				#if POI_PIPE == POI_BIRP
				return float4(1, 1, 1, 1);
				#else
				return;
				#endif
			}
			ENDHLSL
		}
		Pass
		{
			Name "DepthNormals"
			Tags { "LightMode" = "DepthNormals" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite [_ZWrite]
			Cull Off
			ZClip [_ZClip]
			AlphaToMask Off
			ZTest [_ZTest]
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend], [_SrcBlendAlpha] [_DstBlendAlpha]
			HLSLPROGRAM
 #define VIGNETTE_MASKED 
 #define _LIGHTINGMODE_FLAT 
 #define _STOCHASTICMODE_DELIOT_HEITZ 
 #define PROP_BUMPMAP 
 #define OPTIMIZER_ENABLED 
			#pragma target 5.0
			#define POI_PASS_DEPTH_NORMALS
			#if POI_PIPE == POI_URP
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#pragma vertex vert
			#pragma fragment frag
			CBUFFER_START(UnityPerMaterial)
			float _GrabMode;
			float _Mode;
			#ifndef _STOCHASTICMODE_NONE
			#ifdef _STOCHASTICMODE_DELIOT_HEITZ
			float _StochasticDeliotHeitzDensity;
			#endif
			#endif
			half4 _Color;
			float _ColorThemeIndex;
			float _MainPixelMode;
			float4 _MainTex_ST;
			float4 _MainTex_TexelSize;
			float2 _MainTexPan;
			float _MainTexUV;
			float _MainTexStochastic;
			half _MainIgnoreTexAlpha;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			float _BumpMapStochastic;
			float4 _AlphaMask_ST;
			float2 _AlphaMaskPan;
			float _AlphaMaskUV;
			half _AlphaMaskInvert;
			float _MainAlphaMaskMode;
			half _AlphaMaskR;
			half _AlphaMaskG;
			half _AlphaMaskB;
			half _AlphaMaskA;
			float _AlphaMaskChannelBlendMode;
			half2 _AlphaMaskMinMax;
			half _AlphaMaskGamma;
			half _AlphaMaskBlendStrength;
			half _AlphaMaskValue;
			float _Cutoff;
			half _AlphaForceOpaque;
			half _AlphaMod;
			half _AlphaPremultiply;
			half _AlphaBoostFA;
			half _AlphaGlobalMask;
			float _AlphaGlobalMaskBlendType;
			int _GlobalMaskVertexColorLinearSpace;
			float2 _UVSettingsTiling0;
			float2 _UVSettingsOffset0;
			float _UVSettingsAngle0;
			float2 _UVSettingsPan0;
			float _UVSettingsRotate0;
			float2 _UVSettingsTiling1;
			float2 _UVSettingsOffset1;
			float _UVSettingsAngle1;
			float2 _UVSettingsPan1;
			float _UVSettingsRotate1;
			float2 _UVSettingsTiling2;
			float2 _UVSettingsOffset2;
			float _UVSettingsAngle2;
			float2 _UVSettingsPan2;
			float _UVSettingsRotate2;
			float2 _UVSettingsTiling3;
			float2 _UVSettingsOffset3;
			float _UVSettingsAngle3;
			float2 _UVSettingsPan3;
			float _UVSettingsRotate3;
			float _ScreenSpaceUVObjectScale;
			float _ScreenSpaceUVWorldSize;
			float _UVSettingsShiftBackfaceUV;
			int _StereoEnabled;
			int _PanoUseBothEyes;
			float _PolarUV;
			float _PolarMode;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _UVModWorldPos0;
			float _UVModWorldPos1;
			float _UVModLocalPos0;
			float _UVModLocalPos1;
			CBUFFER_END
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			int _FlipBackfaceNormals;
			float _AddBlendOp;
			float _Cull;
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define STEREO_UV(uv) float3(uv, unity_StereoEyeIndex)
			#else
			#define STEREO_UV(uv) uv
			#endif
			#if POI_PIPE == POI_BIRP
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			Texture2DArray<float> _CameraDepthTexture;
			#else
			Texture2D<float> _CameraDepthTexture;
			#endif
			#endif
			#if POI_PIPE == POI_URP
			TEXTURE2D_X_FLOAT(_CameraDepthTexture);
			float4 _CameraDepthTexture_TexelSize;
			#endif
			float SampleScreenDepth(float2 uv)
			{
				uv.y = _ProjectionParams.x * 0.5 + 0.5 - uv.y * _ProjectionParams.x;
				return _CameraDepthTexture.SampleLevel(sampler_point_clamp, STEREO_UV(uv), 0).r;
			}
			bool DepthTextureExists()
			{
				float3 dTexDim = 0;
				#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y, dTexDim.z);
				#else
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y);
				#endif
				return dTexDim.x > 16;
			}
			UNITY_DECLARE_TEX2D(_MainTex);
			#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BumpMap;
			#endif
			#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaMask;
			#endif
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				half4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				#ifdef POI_PASS_MOTION_VECTORS
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
				float3 alembicMotionVector : TEXCOORD5;
				#endif
				#endif
				#ifdef POI_RAYMARCHING_DATA
				float4 poiBindPosition : TEXCOORD5;
				half4 poiBindNormal : TEXCOORD6;
				half4 poiBindTangent : TEXCOORD7;
				#endif
				#ifdef POI_TESSELLATED
				uint vertexId : TEXCOORD6;
				#else
				uint vertexId : SV_VertexID;
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct VertexOut
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				half4 normal : TEXCOORD2;
				half4 tangent : TEXCOORD3;
				float4 worldPos : TEXCOORD4;
				float4 localPos : TEXCOORD5;
				half4 vertexColor : TEXCOORD6;
				float4 lightmapUV : TEXCOORD7;
				float worldDir : TEXCOORD8;
				float fogData: TEXCOORD10;
				POI_SHADOW_COORDS(9)
				#ifdef POI_SQUISH
				half squishAmount : TEXCOORD11;
				#endif
				#ifdef POIBS_BLOOMFOG
				float2 bsFogScreenUV : TEXCOORD12;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD13;
				float4 LightCoord : TEXCOORD14;
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				float4 positionCSNoJitter         : POSITION_CS_NO_JITTER;
				float4 previousPositionCSNoJitter : PREV_POSITION_CS_NO_JITTER;
				#endif
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(POI_DEVICE_QUEST)
				uint gl_Layer : SV_RenderTargetArrayIndex;
				#endif
			};
			float2 vertexUV(in VertexOut o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in appdata v, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return v.uv0.xy * w0 + v.uv1.xy * w1 + v.uv2.xy * w2 + v.uv3.xy * w3;
			}
			#ifdef POI_PASS_LILFUR
			float2 vertexUV(in PoiGeoToFragLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in PoiVertToGeoLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			#endif
			half3 poiThemeColor(in PoiMods poiMods, in half3 srcColor, in half themeIndex)
			{
				half3 outputColor = srcColor;
				if (themeIndex != 0)
				{
					themeIndex = max(themeIndex - 1, 0);
					if (themeIndex <= 3)
					{
						outputColor = poiMods.globalColorTheme[themeIndex].rgb;
					}
					else
					{
						#ifdef POI_AUDIOLINK
						if (poiMods.audioLinkAvailable)
						{
							outputColor = poiMods.globalColorTheme[themeIndex].rgb;
						}
						#endif
					}
				}
				return outputColor;
			}
			struct PoiSpriteSheetConfig
			{
				float columns;
				float rows;
				float totalFrames;
				float frameSelection;
				float fps;
				float randomStart;
				float inset;
				float2 textureST;
			};
			float poiSpriteSheetFrameIndex(PoiSpriteSheetConfig config, float progress, float seed)
			{
				float totalFrames = (config.totalFrames > 0) ? config.totalFrames : (config.columns * config.rows);
				float frameIndex = 0;
				if (config.frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (config.frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (config.frameSelection == 2)
				{
					float timeOffset = config.randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * config.fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float poiSpriteSheetFrameIndex(float columns, float rows, float configTotalFrames, float frameSelection, float fps, float randomStart, float progress, float seed)
			{
				float totalFrames = (configTotalFrames > 0) ? configTotalFrames : (columns * rows);
				float frameIndex = 0;
				if (frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (frameSelection == 2)
				{
					float timeOffset = randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float2 poiSpriteSheetUV(float2 uv, float columns, float rows, float frameIndex, float inset, float2 textureST)
			{
				float invCols = 1.0 / columns;
				float invRows = 1.0 / rows;
				float2 frameSize = float2(invCols, invRows);
				float column = fmod(frameIndex, columns);
				float row = floor(frameIndex * invCols);
				row = rows - 1 - row;
				float2 lookupUV = (uv * frameSize) + float2(column, row) * frameSize;
				if (inset > 0)
				{
					float2 texelInset = inset * frameSize / max(textureST, 1e-6);
					lookupUV = lerp(lookupUV, float2(column + 1, row + 1) * frameSize, texelInset);
				}
				return lookupUV;
			}
			float2 poiSpriteSheetUV(float2 uv, PoiSpriteSheetConfig config, float frameIndex)
			{
				return poiSpriteSheetUV(uv, config.columns, config.rows, frameIndex, config.inset, config.textureST);
			}
			void applyReducedRenderClipDistance(inout VertexOut o)
			{
				if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
				{
					#if defined(UNITY_REVERSED_Z) // DirectX
					o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					#else // OpenGL
					o.pos.z = o.pos.z * 0.0001 - o.pos.w * 0.999;
					#endif
				}
			}
			VertexOut vert(appdata v
			#ifdef POI_TRIPLE_OUTLINE
			, uint poiOutlineLayer
			#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				VertexOut o;
				PoiInitStruct(VertexOut, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				POI_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				#if defined(POI_PASS_OUTLINETWO)
				if (0.0 < 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#elif defined(POI_PASS_OUTLINE)
				if (0.0 > 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#endif
				#ifdef POI_AUDIOLINK
				float vertexAudioLink[5];
				vertexAudioLink[0] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 0))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 0))[0];
				vertexAudioLink[1] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 1))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 1))[0];
				vertexAudioLink[2] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 2))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 2))[0];
				vertexAudioLink[3] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 3))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 3))[0];
				vertexAudioLink[4] = AudioLinkData(ALPASS_GENERALVU + float2(8, 0))[0];
				#endif
				o.uv[0] = float4(v.uv0.xy, v.uv1.xy);
				o.uv[1] = float4(v.uv2.xy, v.uv3.xy);
				o.normal.w = length(mul((float3x3)unity_ObjectToWorld, v.normal));
				#if POI_PIPE == POI_BIRP
				o.normal.xyz = PoiObjectToWorldNormal(v.normal);
				o.tangent.xyz = UnityObjectToWorldDir(v.tangent);
				#elif  POI_PIPE == POI_URP
				VertexNormalInputs vertexNormalInput = GetVertexNormalInputs(v.normal, v.tangent);
				o.normal.xyz = vertexNormalInput.normalWS;
				o.tangent.xyz = vertexNormalInput.tangentWS;
				#endif
				o.tangent.w = v.tangent.w;
				o.vertexColor = v.color;
				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV(v.uv1.xy, unity_LightmapST, o.lightmapUV.xy);
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.xyz += localOffset;
				o.worldPos.xyz += worldOffset;
				o.pos = PoiObjectToClipPos(o.localPos.xyz);
				o.fogData = o.pos.z;
				#if !defined(POI_PASS_SHADOW)
				POI_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				v.vertex.xyz = o.localPos.xyz;
				POI_TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				o.worldDir = dot(o.pos, CalculateFrustumCorrection());
				if (0.0 >= 0.5)
				{
					applyReducedRenderClipDistance(o);
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#ifdef EDITOR_VISUALIZATION
				UnityEditorVizData(v.vertex.xyz, o.uv[0].xy, o.uv[0].zw, o.uv[1].xy, o.VizUV, o.LightCoord);
				#endif
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				#if defined(APPLICATION_SPACE_WARP_MOTION)
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				o.pos = o.positionCSNoJitter;
				#else
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				#endif
				float4 prevPos = (unity_MotionVectorsParams.x == 1) ? float4(v.positionOld, 1) : o.localPos;
				#if _ADD_PRECOMPUTED_VELOCITY
				prevPos = prevPos - float4(v.alembicMotionVector, 0);
				#endif
				o.previousPositionCSNoJitter = mul(_PrevViewProjMatrix, mul(UNITY_PREV_MATRIX_M, prevPos));
				#endif
				#endif
				#ifdef POI_PASS_LILFUR
				#endif
				return o;
			}
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			#define POI2D_SAMPLER_STOCHASTIC(tex, texSampler, uv, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, uv) : POI2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_SAMPLER_PAN_STOCHASTIC(tex, texSampler, uv, pan, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan)) : POI2D_SAMPLER_PAN(tex, texSampler, uv, pan))
			#define POI2D_SAMPLER_PANGRAD_STOCHASTIC(tex, texSampler, uv, pan, dx, dy, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan), dx, dy) : POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, dx, dy))
			#endif
			#if !defined(_STOCHASTICMODE_NONE)
			float2 StochasticHash2D2D(float2 s)
			{
				return frac(sin(float2(dot(s, float2(127.1, 311.7)), dot(s, float2(269.5, 183.3)))) * 43758.5453);
			}
			#endif
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			float3x3 DeliotHeitzStochasticUVBW(float2 uv)
			{
				const float2x2 stochasticSkewedGrid = float2x2(1.0, -0.57735027, 0.0, 1.15470054);
				float2 skewUV = mul(stochasticSkewedGrid, uv * 3.4641 * 1.0);
				float2 vxID = floor(skewUV);
				float3 bary = float3(frac(skewUV), 0);
				bary.z = 1.0 - bary.x - bary.y;
				float3x3 pos = float3x3(
				float3(vxID, bary.z),
				float3(vxID + float2(0, 1), bary.y),
				float3(vxID + float2(1, 0), bary.x)
				);
				float3x3 neg = float3x3(
				float3(vxID + float2(1, 1), -bary.z),
				float3(vxID + float2(1, 0), 1.0 - bary.y),
				float3(vxID + float2(0, 1), 1.0 - bary.x)
				);
				return (bary.z > 0) ? pos : neg;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv, float2 dx, float2 dy)
			{
				float3x3 UVBW = DeliotHeitzStochasticUVBW(uv);
				return mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[0].xy), dx, dy), UVBW[0].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[1].xy), dx, dy), UVBW[1].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[2].xy), dx, dy), UVBW[2].z) ;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv)
			{
				float2 dx = ddx(uv), dy = ddy(uv);
				return DeliotHeitzSampleTexture(tex, texSampler, uv, dx, dy);
			}
			#endif // defined(_STOCHASTICMODE_DELIOT_HEITZ)
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + 0.0);
				if (0.0 > 0)
				{
					poiFragData.alpha = maskBlend(poiFragData.alpha, poiMods.globalMask[0.0 - 1], 2.0);
				}
			}
			void poiApplyAlphaMask(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				if (2.0)
				{
					half4 alphaMaskTex = 1;
					#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
					alphaMaskTex = POI2D_SAMPLER_PAN(_AlphaMask, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0).xy);
					#endif
					half alphaMask = poiSampleMask(alphaMaskTex, float4(1.0, 0.0, 0.0, 0.0), 2.0, 0.0, float4(0,1,0,1), 1.0, 1.0, 0.0);
					switch ((int)2.0)
					{
						case 1: poiFragData.alpha = alphaMask; break;
						case 2: poiFragData.alpha *= alphaMask; break;
						case 3: poiFragData.alpha = saturate(poiFragData.alpha + alphaMask); break;
						case 4: poiFragData.alpha = saturate(poiFragData.alpha - alphaMask); break;
					}
				}
			}
			void applyMainColor(inout PoiFragData poiFragData, inout PoiMesh poiMesh, inout PoiCam poiCam, inout PoiMods poiMods, inout float4 mainTexture)
			{
				poiFragData.baseColor = mainTexture.rgb;
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				#else
				if(_TwoPassOverrideFirstPassColor == 1)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, _TwoPassColor.rgb, _TwoPassColorThemeIndex);
					poiFragData.alpha = mainTexture.a * _TwoPassColor.a;
				}
				else if(_TwoPassOverrideFirstPassColor == 2)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * _TwoPassAlphaOverride;
				}
				else
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				}
				#endif
				poiApplyAlphaMask(poiFragData, poiMesh);
			}
			void applyMainNormal(inout PoiMesh poiMesh)
			{
				#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
				poiMesh.tangentSpaceNormal = PoiUnpackNormalScale(POI2D_SAMPLER_PAN_STOCHASTIC(_BumpMap, _MainTex, poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0)), float4(0,0,0,0), 0.0), 1.0);
				#else
				poiMesh.tangentSpaceNormal = float3(0, 0, 1);
				#endif
			}
			void ApplyGlobalMaskModifiers(in PoiMesh poiMesh, inout PoiMods poiMods, in PoiCam poiCam)
			{
			}
			float2 applyUVSettings(float2 uv, float2 tiling, float2 offset, float angle, float2 pan, float rotate)
			{
				uv = uv * tiling + offset;
				float angleRad = angle * (UNITY_PI / 180.0);
				float rotateRad = rotate * (UNITY_PI / 180.0);
				float totalAngle = angleRad + rotateRad * POI_TIME.y;
				if (totalAngle != 0)
				{
					float2 pivot = float2(0.5, 0.5);
					float cosA = cos(totalAngle);
					float sinA = sin(totalAngle);
					uv -= pivot;
					uv = float2(
					uv.x * cosA - uv.y * sinA,
					uv.x * sinA + uv.y * cosA
					);
					uv += pivot;
				}
				uv += pan * POI_TIME.y;
				return uv;
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[0.0] - float4(0.5,0.5,0,0);
				float dist = length(delta);
				float radius;
				
				if (0.0 == 0) // Standard
				{
					radius = dist * 2 * 1.0;
				}
				else if (0.0 == 1) // Log Polar - preserves texture scale
				{
					radius = log(dist + 0.001) * 1.0 + 1;
				}
				else // Square Polar
				{
					radius = max(abs(delta.x), abs(delta.y)) * 2 * 1.0;
				}
				float angle = atan2(delta.x, delta.y);
				float phi = angle / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				angle = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				angle *= 1.0;
				return float2(radius, angle + dist * 0.0);
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0, 1.0 / UNITY_PI);
				return float2(1.0, 1.0) - sphereCoords;
			}
			float2 StereoPanoProjection(float3 coords, int stereoLayout)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				if (stereoLayout == 2)
				return float2(sphereCoords.x * 0.5 + unity_StereoEyeIndex * 0.5, sphereCoords.y);
				return float2(sphereCoords.x, sphereCoords.y * 0.5 + (1 - unity_StereoEyeIndex) * 0.5);
			}
			float2 calculateWorldUV(in PoiMesh poiMesh)
			{
				return float2(0.0 != 3 ? poiMesh.worldPos[ 0.0] : 0.0f, 2.0 != 3 ? poiMesh.worldPos[2.0] : 0.0f);
			}
			float2 calculatelocalUV(in PoiMesh poiMesh)
			{
				float localUVs[8];
				localUVs[0] = poiMesh.localPos.x;
				localUVs[1] = poiMesh.localPos.y;
				localUVs[2] = poiMesh.localPos.z;
				localUVs[3] = 0;
				localUVs[4] = poiMesh.vertexColor.r;
				localUVs[5] = poiMesh.vertexColor.g;
				localUVs[6] = poiMesh.vertexColor.b;
				localUVs[7] = poiMesh.vertexColor.a;
				return float2(localUVs[0.0],localUVs[1.0]);
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh, int panoUseBothEyes, int stereoLayout)
			{
				bool useCenterEye = panoUseBothEyes <= 0;
				float3 panoCameraPosition = getCameraPosition(useCenterEye);
				float3 viewDirection = normalize(poiMesh.worldPos.xyz - panoCameraPosition);
				if (stereoLayout != 0)
				return StereoPanoProjection(viewDirection, stereoLayout);
				else
				return MonoPanoProjection(viewDirection);
			}
			float2 calculateViewNormalUV(in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
				float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				return float2(dot(worldViewRight, poiMesh.normals[0]), dot(worldViewUp, poiMesh.normals[0])) * 0.5 + 0.5;
			}
			float2 calculateScreenSpaceUV(float4 clipPos)
			{
				float4 poiScreenSpaceUV = poiTransformClipSpacetoScreenSpaceFrag(clipPos);
				float2 screenUV = poiScreenSpaceUV.xy / poiScreenSpaceUV.w;
				#ifdef UNITY_SINGLE_PASS_STEREO
				screenUV.x -= unity_StereoEyeIndex;
				#endif
				float2 poiEyeOpticalCenter = 0.5 - 0.5 * float2(UNITY_MATRIX_P._m02, UNITY_MATRIX_P._m12);
				#if UNITY_UV_STARTS_AT_TOP
				poiEyeOpticalCenter.y = 1.0 - poiEyeOpticalCenter.y;
				#endif
				float poiViewAspect = abs(UNITY_MATRIX_P._m11) / max(abs(UNITY_MATRIX_P._m00), 0.000001);
				float2 poiScreenSquareScale = float2(1.0 / max(poiViewAspect, 1.0), min(poiViewAspect, 1.0));
				screenUV = (screenUV - poiEyeOpticalCenter) / poiScreenSquareScale + 0.5;
				if (0.0 >= 0.5)
				{
					float3 pivotView = mul(UNITY_MATRIX_V, mul(unity_ObjectToWorld, float4(0, 0, 0, 1))).xyz;
					float pivotDepth = unity_OrthoParams.w > 0.5 ? 1.0 : max(abs(pivotView.z), 0.0001);
					float projectionScale = max(max(abs(UNITY_MATRIX_P._m00), abs(UNITY_MATRIX_P._m11)), 0.0001);
					float worldSize = 1.0;
					float2 pivotPlane = pivotView.xy * float2(UNITY_MATRIX_P._m00 < 0 ? -1 : 1, UNITY_MATRIX_P._m11 < 0 ? -1 : 1);
					#if UNITY_UV_STARTS_AT_TOP
					pivotPlane.y = -pivotPlane.y;
					#endif
					screenUV = ((screenUV - 0.5) * (2.0 * pivotDepth / projectionScale) - pivotPlane) / worldSize + 0.5;
				}
				return screenUV;
			}
			#if POI_PIPE == POI_BIRP
			float4
			#else
			void
			#endif
			frag( VertexOut i, bool facing : SV_IsFrontFace
			#if POI_PIPE == POI_URP
			,out half4 outNormalWS : SV_Target0
			#ifdef _WRITE_RENDERING_LAYERS
			,out uint outRenderingLayers : SV_Target1
			#endif
			#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiSHAr = unity_SHAr;
				PoiSHAg = unity_SHAg;
				PoiSHAb = unity_SHAb;
				PoiSHBr = unity_SHBr;
				PoiSHBg = unity_SHBg;
				PoiSHBb = unity_SHBb;
				PoiSHC =  unity_SHC;
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				#if POI_PIPE == POI_URP
				PoiLightOut poiLightOut;
				PoiInitStruct(PoiLightOut, poiLightOut);
				#endif
				PoiFragData poiFragData;
				PoiInitStruct(PoiFragData, poiFragData);
				poiFragData.smoothness = 1;
				poiFragData.smoothness2 = 1;
				poiFragData.metallic = 1;
				poiFragData.specularMask = 1;
				poiFragData.reflectionMask = 1;
				poiFragData.alpha = 1;
				poiMesh.objectPosition = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				poiMesh.objNormal = mul((float3x3)unity_WorldToObject, i.normal.xyz);
				poiMesh.normals[0] = i.normal.xyz;
				poiMesh.objectScale = i.normal.w;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				#ifdef POI_TRIPLE_OUTLINE
				poiMesh.outlineLayer = i.poiOutlineLayer;
				#else
				poiMesh.outlineLayer = 0;
				#endif
				#if defined(POI_PASS_LILFUR)
				float3 newTan = i.tangent.xyz - poiMesh.normals[0] * dot(poiMesh.normals[0], i.tangent.xyz);
				poiMesh.tangent[0] = normalize(newTan);
				poiMesh.binormal[0] = normalize(cross(poiMesh.normals[0], poiMesh.tangent[0])) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = (i.tangent.w * unity_WorldTransformParams.w) > 0.0;
				poiMesh.localPos = mul(unity_WorldToObject, float4(i.worldPos.xyz, 1)).xyz;
				#else
				poiMesh.tangent[0] = i.tangent.xyz;
				poiMesh.binormal[0] = cross(i.normal.xyz, i.tangent.xyz) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = i.tangent.w > 0.0;
				poiMesh.localPos = i.localPos.xyz;
				#endif
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace && 1 >= 0.5)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent[0] *= -1;
					poiMesh.binormal[0] *= -1;
				}
				#endif
				poiCam.eyeViewDir = !IsOrthographicCamera() ? (getCameraPosition(false) - i.worldPos.xyz) : UNITY_MATRIX_I_V._m02_m12_m22;
				poiCam.eyeViewDir = normalize(poiCam.eyeViewDir);
				float3 poiCenterCameraPosition = getCameraPosition();
				float3 poiCenterViewDelta = poiCenterCameraPosition - i.worldPos.xyz;
				float poiCenterViewDistanceSq = dot(poiCenterViewDelta, poiCenterViewDelta);
				float poiCenterViewInvDistance = rsqrt(max(poiCenterViewDistanceSq, 1e-12));
				poiCam.viewDir = !IsOrthographicCamera() ? poiCenterViewDelta * poiCenterViewInvDistance : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				half3 tanToWorld0 = half3(poiMesh.tangent[0].x, poiMesh.binormal[0].x, poiMesh.normals[0].x);
				half3 tanToWorld1 = half3(poiMesh.tangent[0].y, poiMesh.binormal[0].y, poiMesh.normals[0].y);
				half3 tanToWorld2 = half3(poiMesh.tangent[0].z, poiMesh.binormal[0].z, poiMesh.normals[0].z);
				half3 ase_tanViewDir = tanToWorld0 * poiCam.eyeViewDir.x + tanToWorld1 * poiCam.eyeViewDir.y + tanToWorld2 * poiCam.eyeViewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.uv[0];
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[8] = poiMesh.uv[0];
				poiMesh.dx = ddx(poiMesh.uv[0]);
				poiMesh.dy = ddy(poiMesh.uv[0]);
				poiMesh.uv[0] = applyUVSettings(poiMesh.uv[0], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[1] = applyUVSettings(poiMesh.uv[1], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[2] = applyUVSettings(poiMesh.uv[2], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[3] = applyUVSettings(poiMesh.uv[3], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				if (0.0 >= 0.5 && !poiMesh.isFrontFace)
				{
					poiMesh.uv[0].x += 1.0;
					poiMesh.uv[1].x += 1.0;
					poiMesh.uv[2].x += 1.0;
					poiMesh.uv[3].x += 1.0;
				}
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh, 1, 0);
				poiMesh.uv[5] = calculateWorldUV(poiMesh);
				poiMesh.uv[8] = calculatelocalUV(poiMesh);
				poiMesh.uv[9] = calculateViewNormalUV(poiMesh, poiCam);
				poiMesh.uv[10] = calculateScreenSpaceUV(i.pos);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				poiMods.globalMask[0] = 1;
				poiMods.globalMask[1] = 1;
				poiMods.globalMask[2] = 1;
				poiMods.globalMask[3] = 1;
				poiMods.globalMask[4] = 1;
				poiMods.globalMask[5] = 1;
				poiMods.globalMask[6] = 1;
				poiMods.globalMask[7] = 1;
				poiMods.globalMask[8] = 1;
				poiMods.globalMask[9] = 1;
				poiMods.globalMask[10] = 1;
				poiMods.globalMask[11] = 1;
				poiMods.globalMask[12] = 1;
				poiMods.globalMask[13] = 1;
				poiMods.globalMask[14] = 1;
				poiMods.globalMask[15] = 1;
				ApplyGlobalMaskModifiers(poiMesh, poiMods, poiCam);
				float2 mainUV = poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0));
				if (0.0 >= 0.5)
				{
					mainUV = sharpSample(float4(0.0004882813,0.0004882813,2048,2048), mainUV);
				}
				float4 mainTexture = POI2D_SAMPLER_PAN_STOCHASTIC(_MainTex, _MainTex, mainUV, float4(0,0,0,0), 0.0);
				mainTexture.a = max(mainTexture.a, 0.0);
				applyMainNormal(poiMesh);
				poiMesh.normals[0] = normalize(poiMesh.normals[0]);
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent[0] +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal[0] +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				poiMesh.tangent[1] = normalize(cross(poiMesh.binormal[0], -poiMesh.normals[1]));
				poiMesh.binormal[1] = normalize(cross(-poiMesh.normals[1], poiMesh.tangent[0]));
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = poiCenterCameraPosition;
				poiCam.reflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[0]);
				poiCam.clipPos = i.pos;
				poiCam.distanceToVert = poiCenterViewDistanceSq * poiCenterViewInvDistance;
				poiCam.posScreenSpace = poiTransformClipSpacetoScreenSpaceFrag(poiCam.clipPos);
				#ifdef UNITY_SINGLE_PASS_STEREO
				poiCam.posScreenSpace.x = poiCam.posScreenSpace.x * 0.5;
				#endif
				poiCam.screenUV = poiCam.posScreenSpace.xy / poiCam.posScreenSpace.w;
				poiCam.posScreenPixels = calcPixelScreenUVs(poiCam.posScreenSpace);
				poiCam.vDotN = abs(dot(poiCam.eyeViewDir, poiMesh.normals[1]));
				poiCam.vDotNCentered = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.worldDirection.xyz = poiMesh.worldPos.xyz - poiCam.worldPos;
				#if defined(POI_PASS_LILFUR)
				poiCam.worldDirection.w = dot(PoiWorldToClipPos(poiMesh.worldPos.xyz), CalculateFrustumCorrection());
				#else
				poiCam.worldDirection.w = i.worldDir;
				#endif
				#if POI_PIPE == POI_URP
				InputData inputData;
				PoiInitStruct(InputData, inputData);
				inputData.positionWS = poiMesh.worldPos;
				inputData.normalWS = poiMesh.normals[1];
				inputData.viewDirectionWS = poiCam.eyeViewDir;
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(i.pos);
				#endif
				applyMainColor(poiFragData, poiMesh, poiCam, poiMods, mainTexture);
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				#ifndef POI_PASS_LILFUR
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.alpha = 1.0 ? 1 : poiFragData.alpha;
				#else
				poiFragData.alpha = _AlphaForceOpaque2 ? 1 : poiFragData.alpha;
				#endif
				#endif
				if (0.0 == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				clip(poiFragData.alpha - 0.5);
				#if POI_PIPE == POI_URP
				float3 normalWS = NormalizeNormalPerPixel(poiMesh.normals[0]);
				outNormalWS = half4(normalWS, 0.0) + POI_SAFE_RGB0;
				#ifdef _WRITE_RENDERING_LAYERS
				outRenderingLayers = EncodeMeshRenderingLayer();
				#endif
				#else
				return float4(0, 1, 0, 1);
				#endif
			}
			ENDHLSL
		}
		Pass
		{
			Name "META"
			Tags { "LightMode" = "Meta" }
			ZWrite [_ZWrite]
			Cull Off
			ZTest [_ZTest]
			ColorMask RGBA
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend], [_SrcBlendAlpha] [_DstBlendAlpha]
			HLSLPROGRAM
 #define VIGNETTE_MASKED 
 #define _LIGHTINGMODE_FLAT 
 #define _STOCHASTICMODE_DELIOT_HEITZ 
 #define PROP_BUMPMAP 
 #define OPTIMIZER_ENABLED 
			#pragma target 5.0
			#define POI_WORLD
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#if POI_PIPE == POI_BIRP
			#pragma multi_compile_fragment _ VERTEXLIGHT_ON
			#endif
			#define POI_PASS_META
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/MetaPass.hlsl"
			CBUFFER_START(UnityPerMaterial)
			float _GrabMode;
			float _Mode;
			#ifndef _STOCHASTICMODE_NONE
			#ifdef _STOCHASTICMODE_DELIOT_HEITZ
			float _StochasticDeliotHeitzDensity;
			#endif
			#endif
			float4 _LightingAOMaps_ST;
			float2 _LightingAOMapsPan;
			float _LightingAOMapsUV;
			float _LightDataAOStrengthR;
			float _LightDataAOStrengthG;
			float _LightDataAOStrengthB;
			float _LightDataAOStrengthA;
			half _LightDataAOGlobalMaskR;
			float _LightDataAOGlobalMaskBlendTypeR;
			float4 _LightingDetailShadowMaps_ST;
			float2 _LightingDetailShadowMapsPan;
			float _LightingDetailShadowMapsUV;
			half _LightingDetailShadowStrengthR;
			half _LightingDetailShadowStrengthG;
			half _LightingDetailShadowStrengthB;
			half _LightingDetailShadowStrengthA;
			half _LightingAddDetailShadowStrengthR;
			half _LightingAddDetailShadowStrengthG;
			half _LightingAddDetailShadowStrengthB;
			half _LightingAddDetailShadowStrengthA;
			half _LightDataDetailShadowGlobalMaskR;
			float _LightDataDetailShadowGlobalMaskBlendTypeR;
			float4 _LightingShadowMasks_ST;
			float2 _LightingShadowMasksPan;
			float _LightingShadowMasksUV;
			half _LightingShadowMaskStrengthR;
			half _LightingShadowMaskStrengthG;
			half _LightingShadowMaskStrengthB;
			half _LightingShadowMaskStrengthA;
			half _LightDataShadowMaskGlobalMaskR;
			float _LightDataShadowMaskGlobalMaskBlendTypeR;
			half _Unlit_Intensity;
			float _LightingColorMode;
			float _LightingMapMode;
			#if defined(PROP_LIGHTDATASDFMAP)
			float4 _LightDataSDFMap_ST;
			float2 _LightDataSDFMapPan;
			float _LightDataSDFMapUV;
			float _LightDataSDFMapLOD;
			float _LightDataSDFBlendY;
			#endif
			float _LightingDirectionMode;
			float3 _LightngForcedDirection;
			float _LightingViewDirOffsetPitch;
			float _LightingViewDirOffsetYaw;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			half _LightingForceColorEnabled;
			half3 _LightingForcedColor;
			float _LightingForcedColorThemeIndex;
			half _LightingCastedShadows;
			half _LightingShadowSoftness;
			float _LightingMonochromatic;
			half _LightingMinLightBrightness;
			float _LightingAdditiveEnable;
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			half _LightingAdditiveCastedShadows;
			float _LightingAdditiveMonochromatic;
			float _LightingAdditivePassthrough;
			float4 _LightingAdditiveAttenCurve;
			float _DisableDirectionalInAdd;
			float _LightingVertexLightingEnabled;
			float _LightingMirrorVertexLightingEnabled;
			float _LightingEnableLightVolumes;
			float _LightingLightVolumesIntensity;
			float _LightingLightVolumesNormalBias;
			float _LightingLightVolumesSpecular;
			float _LightingLightVolumesShadows;
			float _LightDataDebugEnabled;
			float _LightingDebugVisualize;
			half4 _Color;
			float _ColorThemeIndex;
			float _MainPixelMode;
			float4 _MainTex_ST;
			float4 _MainTex_TexelSize;
			float2 _MainTexPan;
			float _MainTexUV;
			float _MainTexStochastic;
			half _MainIgnoreTexAlpha;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			float _BumpMapStochastic;
			float4 _AlphaMask_ST;
			float2 _AlphaMaskPan;
			float _AlphaMaskUV;
			half _AlphaMaskInvert;
			float _MainAlphaMaskMode;
			half _AlphaMaskR;
			half _AlphaMaskG;
			half _AlphaMaskB;
			half _AlphaMaskA;
			float _AlphaMaskChannelBlendMode;
			half2 _AlphaMaskMinMax;
			half _AlphaMaskGamma;
			half _AlphaMaskBlendStrength;
			half _AlphaMaskValue;
			float _Cutoff;
			half _AlphaForceOpaque;
			half _AlphaMod;
			half _AlphaPremultiply;
			half _AlphaBoostFA;
			half _AlphaGlobalMask;
			float _AlphaGlobalMaskBlendType;
			#ifdef POI_WORLD
			half _GIEmissionMultiplier;
			half _BakeryMode;
			#endif
			float4 _GlobalThemeColor0;
			float4 _GlobalThemeColor1;
			float4 _GlobalThemeColor2;
			float4 _GlobalThemeColor3;
			float _GlobalThemeHueShiftColorSpace0;
			float _GlobalThemeHueShiftColorSpace1;
			float _GlobalThemeHueShiftColorSpace2;
			float _GlobalThemeHueShiftColorSpace3;
			float _GlobalThemeHue0;
			float _GlobalThemeHue1;
			float _GlobalThemeHue2;
			float _GlobalThemeHue3;
			float _GlobalThemeHueSpeed0;
			float _GlobalThemeHueSpeed1;
			float _GlobalThemeHueSpeed2;
			float _GlobalThemeHueSpeed3;
			float _GlobalThemeSaturationMethod0;
			float _GlobalThemeSaturationMethod1;
			float _GlobalThemeSaturationMethod2;
			float _GlobalThemeSaturationMethod3;
			float _GlobalThemeSaturation0;
			float _GlobalThemeSaturation1;
			float _GlobalThemeSaturation2;
			float _GlobalThemeSaturation3;
			float _GlobalThemeValue0;
			float _GlobalThemeValue1;
			float _GlobalThemeValue2;
			float _GlobalThemeValue3;
			float _GlobalThemeBrightness0;
			float _GlobalThemeBrightness1;
			float _GlobalThemeBrightness2;
			float _GlobalThemeBrightness3;
			int _GlobalMaskVertexColorLinearSpace;
			float2 _UVSettingsTiling0;
			float2 _UVSettingsOffset0;
			float _UVSettingsAngle0;
			float2 _UVSettingsPan0;
			float _UVSettingsRotate0;
			float2 _UVSettingsTiling1;
			float2 _UVSettingsOffset1;
			float _UVSettingsAngle1;
			float2 _UVSettingsPan1;
			float _UVSettingsRotate1;
			float2 _UVSettingsTiling2;
			float2 _UVSettingsOffset2;
			float _UVSettingsAngle2;
			float2 _UVSettingsPan2;
			float _UVSettingsRotate2;
			float2 _UVSettingsTiling3;
			float2 _UVSettingsOffset3;
			float _UVSettingsAngle3;
			float2 _UVSettingsPan3;
			float _UVSettingsRotate3;
			float _ScreenSpaceUVObjectScale;
			float _ScreenSpaceUVWorldSize;
			float _UVSettingsShiftBackfaceUV;
			int _StereoEnabled;
			int _PanoUseBothEyes;
			float _PolarUV;
			float _PolarMode;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _UVModWorldPos0;
			float _UVModWorldPos1;
			float _UVModLocalPos0;
			float _UVModLocalPos1;
			float _ShadingRampedLightMapApplyGlobalMaskIndex;
			half _ShadingRampedLightMapApplyGlobalMaskStrength;
			float _ShadingRampedLightMapApplyGlobalMaskBlendType;
			float _ShadingRampedLightMapInverseApplyGlobalMaskIndex;
			half _ShadingRampedLightMapInverseApplyGlobalMaskStrength;
			float _ShadingRampedLightMapInverseApplyGlobalMaskBlendType;
			half _ShadowStrength;
			half _LightingIgnoreAmbientColor;
			half3 _LightingShadowColor;
			#ifdef _LIGHTINGMODE_FLAT
			float _ForceFlatRampedLightmap;
			#endif
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			CBUFFER_END
			uint _UdonForceSceneLighting;
			#if defined(PROP_LIGHTINGAOMAPS)
			Texture2D _LightingAOMaps;
			#endif
			#if defined(PROP_LIGHTINGDETAILSHADOWMAPS)
			Texture2D _LightingDetailShadowMaps;
			#endif
			#if defined(PROP_LIGHTINGSHADOWMASKS)
			Texture2D _LightingShadowMasks;
			#endif
			#if defined(PROP_LIGHTDATASDFMAP)
			Texture2D _LightDataSDFMap;
			#endif
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			int _FlipBackfaceNormals;
			float _AddBlendOp;
			float _Cull;
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define STEREO_UV(uv) float3(uv, unity_StereoEyeIndex)
			#else
			#define STEREO_UV(uv) uv
			#endif
			#if POI_PIPE == POI_BIRP
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			Texture2DArray<float> _CameraDepthTexture;
			#else
			Texture2D<float> _CameraDepthTexture;
			#endif
			#endif
			#if POI_PIPE == POI_URP
			TEXTURE2D_X_FLOAT(_CameraDepthTexture);
			float4 _CameraDepthTexture_TexelSize;
			#endif
			float SampleScreenDepth(float2 uv)
			{
				uv.y = _ProjectionParams.x * 0.5 + 0.5 - uv.y * _ProjectionParams.x;
				return _CameraDepthTexture.SampleLevel(sampler_point_clamp, STEREO_UV(uv), 0).r;
			}
			bool DepthTextureExists()
			{
				float3 dTexDim = 0;
				#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y, dTexDim.z);
				#else
				_CameraDepthTexture.GetDimensions(dTexDim.x, dTexDim.y);
				#endif
				return dTexDim.x > 16;
			}
			UNITY_DECLARE_TEX2D(_MainTex);
			#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BumpMap;
			#endif
			#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaMask;
			#endif
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				half4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				#ifdef POI_PASS_MOTION_VECTORS
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
				float3 alembicMotionVector : TEXCOORD5;
				#endif
				#endif
				#ifdef POI_RAYMARCHING_DATA
				float4 poiBindPosition : TEXCOORD5;
				half4 poiBindNormal : TEXCOORD6;
				half4 poiBindTangent : TEXCOORD7;
				#endif
				#ifdef POI_TESSELLATED
				uint vertexId : TEXCOORD6;
				#else
				uint vertexId : SV_VertexID;
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct VertexOut
			{
				float4 pos : SV_POSITION;
				float4 uv[2] : TEXCOORD0;
				half4 normal : TEXCOORD2;
				half4 tangent : TEXCOORD3;
				float4 worldPos : TEXCOORD4;
				float4 localPos : TEXCOORD5;
				half4 vertexColor : TEXCOORD6;
				float4 lightmapUV : TEXCOORD7;
				float worldDir : TEXCOORD8;
				float fogData: TEXCOORD10;
				POI_SHADOW_COORDS(9)
				#ifdef POI_SQUISH
				half squishAmount : TEXCOORD11;
				#endif
				#ifdef POIBS_BLOOMFOG
				float2 bsFogScreenUV : TEXCOORD12;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD13;
				float4 LightCoord : TEXCOORD14;
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				float4 positionCSNoJitter         : POSITION_CS_NO_JITTER;
				float4 previousPositionCSNoJitter : PREV_POSITION_CS_NO_JITTER;
				#endif
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(POI_DEVICE_QUEST)
				uint gl_Layer : SV_RenderTargetArrayIndex;
				#endif
			};
			float2 vertexUV(in VertexOut o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in appdata v, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return v.uv0.xy * w0 + v.uv1.xy * w1 + v.uv2.xy * w2 + v.uv3.xy * w3;
			}
			#ifdef POI_PASS_LILFUR
			float2 vertexUV(in PoiGeoToFragLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			float2 vertexUV(in PoiVertToGeoLilFur o, int index)
			{
				float i = index;
				float w0 = saturate(1 - abs(i - 0));
				float w1 = saturate(1 - abs(i - 1));
				float w2 = saturate(1 - abs(i - 2));
				float w3 = saturate(1 - abs(i - 3));
				return o.uv[0].xy * w0 + o.uv[0].zw * w1 + o.uv[1].xy * w2 + o.uv[1].zw * w3;
			}
			#endif
			half3 poiThemeColor(in PoiMods poiMods, in half3 srcColor, in half themeIndex)
			{
				half3 outputColor = srcColor;
				if (themeIndex != 0)
				{
					themeIndex = max(themeIndex - 1, 0);
					if (themeIndex <= 3)
					{
						outputColor = poiMods.globalColorTheme[themeIndex].rgb;
					}
					else
					{
						#ifdef POI_AUDIOLINK
						if (poiMods.audioLinkAvailable)
						{
							outputColor = poiMods.globalColorTheme[themeIndex].rgb;
						}
						#endif
					}
				}
				return outputColor;
			}
			struct PoiSpriteSheetConfig
			{
				float columns;
				float rows;
				float totalFrames;
				float frameSelection;
				float fps;
				float randomStart;
				float inset;
				float2 textureST;
			};
			float poiSpriteSheetFrameIndex(PoiSpriteSheetConfig config, float progress, float seed)
			{
				float totalFrames = (config.totalFrames > 0) ? config.totalFrames : (config.columns * config.rows);
				float frameIndex = 0;
				if (config.frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (config.frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (config.frameSelection == 2)
				{
					float timeOffset = config.randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * config.fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float poiSpriteSheetFrameIndex(float columns, float rows, float configTotalFrames, float frameSelection, float fps, float randomStart, float progress, float seed)
			{
				float totalFrames = (configTotalFrames > 0) ? configTotalFrames : (columns * rows);
				float frameIndex = 0;
				if (frameSelection == 0)
				frameIndex = floor(seed * totalFrames);
				else if (frameSelection == 1)
				frameIndex = floor(progress * totalFrames);
				else if (frameSelection == 2)
				{
					float timeOffset = randomStart ? seed * totalFrames : 0;
					frameIndex = floor(fmod(POI_TIME.y * fps + timeOffset, totalFrames));
				}
				return clamp(frameIndex, 0, totalFrames - 1);
			}
			float2 poiSpriteSheetUV(float2 uv, float columns, float rows, float frameIndex, float inset, float2 textureST)
			{
				float invCols = 1.0 / columns;
				float invRows = 1.0 / rows;
				float2 frameSize = float2(invCols, invRows);
				float column = fmod(frameIndex, columns);
				float row = floor(frameIndex * invCols);
				row = rows - 1 - row;
				float2 lookupUV = (uv * frameSize) + float2(column, row) * frameSize;
				if (inset > 0)
				{
					float2 texelInset = inset * frameSize / max(textureST, 1e-6);
					lookupUV = lerp(lookupUV, float2(column + 1, row + 1) * frameSize, texelInset);
				}
				return lookupUV;
			}
			float2 poiSpriteSheetUV(float2 uv, PoiSpriteSheetConfig config, float frameIndex)
			{
				return poiSpriteSheetUV(uv, config.columns, config.rows, frameIndex, config.inset, config.textureST);
			}
			void applyReducedRenderClipDistance(inout VertexOut o)
			{
				if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
				{
					#if defined(UNITY_REVERSED_Z) // DirectX
					o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					#else // OpenGL
					o.pos.z = o.pos.z * 0.0001 - o.pos.w * 0.999;
					#endif
				}
			}
			VertexOut vert(appdata v
			#ifdef POI_TRIPLE_OUTLINE
			, uint poiOutlineLayer
			#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				VertexOut o;
				PoiInitStruct(VertexOut, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				POI_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				#if defined(POI_PASS_OUTLINETWO)
				if (0.0 < 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#elif defined(POI_PASS_OUTLINE)
				if (0.0 > 0.5)
				{
					return (VertexOut)POI_NAN;
				}
				#endif
				#ifdef POI_AUDIOLINK
				float vertexAudioLink[5];
				vertexAudioLink[0] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 0))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 0))[0];
				vertexAudioLink[1] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 1))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 1))[0];
				vertexAudioLink[2] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 2))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 2))[0];
				vertexAudioLink[3] = 0.0 == 0 ? AudioLinkData(ALPASS_AUDIOLINK + float2(0, 3))[0] : AudioLinkData(ALPASS_FILTEREDAUDIOLINK + float2((1 - 0.0) * 15.95, 3))[0];
				vertexAudioLink[4] = AudioLinkData(ALPASS_GENERALVU + float2(8, 0))[0];
				#endif
				o.uv[0] = float4(v.uv0.xy, v.uv1.xy);
				o.uv[1] = float4(v.uv2.xy, v.uv3.xy);
				o.normal.w = length(mul((float3x3)unity_ObjectToWorld, v.normal));
				#if POI_PIPE == POI_BIRP
				o.normal.xyz = PoiObjectToWorldNormal(v.normal);
				o.tangent.xyz = UnityObjectToWorldDir(v.tangent);
				#elif  POI_PIPE == POI_URP
				VertexNormalInputs vertexNormalInput = GetVertexNormalInputs(v.normal, v.tangent);
				o.normal.xyz = vertexNormalInput.normalWS;
				o.tangent.xyz = vertexNormalInput.tangentWS;
				#endif
				o.tangent.w = v.tangent.w;
				o.vertexColor = v.color;
				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV(v.uv1.xy, unity_LightmapST, o.lightmapUV.xy);
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.xyz += localOffset;
				o.worldPos.xyz += worldOffset;
				o.pos = PoiObjectToClipPos(o.localPos.xyz);
				o.fogData = o.pos.z;
				#if !defined(POI_PASS_SHADOW)
				POI_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				v.vertex.xyz = o.localPos.xyz;
				POI_TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				o.worldDir = dot(o.pos, CalculateFrustumCorrection());
				if (0.0 >= 0.5)
				{
					applyReducedRenderClipDistance(o);
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#ifdef EDITOR_VISUALIZATION
				UnityEditorVizData(v.vertex.xyz, o.uv[0].xy, o.uv[0].zw, o.uv[1].xy, o.VizUV, o.LightCoord);
				#endif
				#endif
				#ifdef POI_PASS_MOTION_VECTORS
				#if UNITY_VERSION >= 202100
				#if defined(APPLICATION_SPACE_WARP_MOTION)
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				o.pos = o.positionCSNoJitter;
				#else
				o.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, o.localPos));
				#endif
				float4 prevPos = (unity_MotionVectorsParams.x == 1) ? float4(v.positionOld, 1) : o.localPos;
				#if _ADD_PRECOMPUTED_VELOCITY
				prevPos = prevPos - float4(v.alembicMotionVector, 0);
				#endif
				o.previousPositionCSNoJitter = mul(_PrevViewProjMatrix, mul(UNITY_PREV_MATRIX_M, prevPos));
				#endif
				#endif
				#ifdef POI_PASS_LILFUR
				#endif
				return o;
			}
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			#define POI2D_SAMPLER_STOCHASTIC(tex, texSampler, uv, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, uv) : POI2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_SAMPLER_PAN_STOCHASTIC(tex, texSampler, uv, pan, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan)) : POI2D_SAMPLER_PAN(tex, texSampler, uv, pan))
			#define POI2D_SAMPLER_PANGRAD_STOCHASTIC(tex, texSampler, uv, pan, dx, dy, useStochastic) (useStochastic ? DeliotHeitzSampleTexture(tex, sampler##texSampler, POI_PAN_UV(uv, pan), dx, dy) : POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, dx, dy))
			#endif
			#if !defined(_STOCHASTICMODE_NONE)
			float2 StochasticHash2D2D(float2 s)
			{
				return frac(sin(float2(dot(s, float2(127.1, 311.7)), dot(s, float2(269.5, 183.3)))) * 43758.5453);
			}
			#endif
			#if defined(_STOCHASTICMODE_DELIOT_HEITZ)
			float3x3 DeliotHeitzStochasticUVBW(float2 uv)
			{
				const float2x2 stochasticSkewedGrid = float2x2(1.0, -0.57735027, 0.0, 1.15470054);
				float2 skewUV = mul(stochasticSkewedGrid, uv * 3.4641 * 1.0);
				float2 vxID = floor(skewUV);
				float3 bary = float3(frac(skewUV), 0);
				bary.z = 1.0 - bary.x - bary.y;
				float3x3 pos = float3x3(
				float3(vxID, bary.z),
				float3(vxID + float2(0, 1), bary.y),
				float3(vxID + float2(1, 0), bary.x)
				);
				float3x3 neg = float3x3(
				float3(vxID + float2(1, 1), -bary.z),
				float3(vxID + float2(1, 0), 1.0 - bary.y),
				float3(vxID + float2(0, 1), 1.0 - bary.x)
				);
				return (bary.z > 0) ? pos : neg;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv, float2 dx, float2 dy)
			{
				float3x3 UVBW = DeliotHeitzStochasticUVBW(uv);
				return mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[0].xy), dx, dy), UVBW[0].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[1].xy), dx, dy), UVBW[1].z) +
				mul(tex.SampleGrad(texSampler, uv + StochasticHash2D2D(UVBW[2].xy), dx, dy), UVBW[2].z) ;
			}
			float4 DeliotHeitzSampleTexture(Texture2D tex, SamplerState texSampler, float2 uv)
			{
				float2 dx = ddx(uv), dy = ddy(uv);
				return DeliotHeitzSampleTexture(tex, texSampler, uv, dx, dy);
			}
			#endif // defined(_STOCHASTICMODE_DELIOT_HEITZ)
			half PoiDirectionalShadowBlur(
			half attenShadows,
			float3 posWS,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			float3 lightDir,
			float2 screenUV)
			{
				#if POI_PIPE == POI_BIRP
				#if defined(SHADOWS_SCREEN) && !defined(UNITY_NO_SCREENSPACE_SHADOWS)
				
				if (0.0 > 0 && 0.0 > 0)
				{
					float4 poiShadowCoord = i._ShadowCoord;
					float poiCamDist = distance(posWS, _WorldSpaceCameraPos);
					float poiRadiusPx = 0.0 * (108.0 / max(poiCamDist * 1.8, 2.0));
					float2 poiStep = (_ScreenParams.zw - 1.0) * (poiShadowCoord.w * poiRadiusPx);
					float2 poiPix = (poiShadowCoord.xy / max(poiShadowCoord.w, 1e-5)) * _ScreenParams.xy;
					#ifdef POI_PASS_LILFUR
					float poiRot = PoiBayer8(floor(poiPix)) * 6.2831853;
					#else
					float poiRot = frac(52.9829189 * frac(dot(poiPix, float2(0.06711056, 0.00583715)))) * 6.2831853;
					#endif
					float poiSinR, poiCosR;
					sincos(poiRot, poiSinR, poiCosR);
					half poiShadowSum = attenShadows; // center tap (r=0)
					[unroll] for (int poiT = 0; poiT < 4; poiT++)
					{
						float poiR = sqrt((poiT + 0.5) / 4.0);
						float poiC = poiT * 2.3999632;
						float2 poiBase = float2(cos(poiC), sin(poiC)) * poiR; // compile-time constant
						float2 poiDir = float2(poiCosR * poiBase.x - poiSinR * poiBase.y, poiSinR * poiBase.x + poiCosR * poiBase.y);
						float4 sc = poiShadowCoord;
						sc.xy += poiDir * poiStep;
						poiShadowSum += UNITY_SAMPLE_SCREEN_SHADOW(_ShadowMapTexture, sc);
					}
					attenShadows = poiShadowSum / 5.0; // 4 disk taps + center
				}
				#endif
				#elif POI_PIPE == POI_URP
				#if defined(_MAIN_LIGHT_SHADOWS) || defined(_MAIN_LIGHT_SHADOWS_CASCADE) || defined(_MAIN_LIGHT_SHADOWS_SCREEN)
				
				if (0.0 > 0 && 0.0 > 0)
				{
					float3 poiLdir = lightDir;
					float3 poiShadowT = normalize(cross(poiLdir, float3(0.0, 1.0, 0.001)));
					float3 poiShadowB = cross(poiLdir, poiShadowT);
					float poiShadowRadius = 0.0 * 0.06;
					float2 poiPix = screenUV * _ScreenParams.xy;
					#ifdef POI_PASS_LILFUR
					float poiRot = PoiBayer8(floor(poiPix)) * 6.2831853;
					#else
					float poiRot = frac(52.9829189 * frac(dot(poiPix, float2(0.06711056, 0.00583715)))) * 6.2831853;
					#endif
					float poiSinR, poiCosR;
					sincos(poiRot, poiSinR, poiCosR);
					half poiShadowSum = attenShadows; // center tap (r=0)
					[unroll] for (int poiT = 0; poiT < 4; poiT++)
					{
						float poiR = sqrt((poiT + 0.5) / 4.0);
						float poiC = poiT * 2.3999632;
						float2 poiBase = float2(cos(poiC), sin(poiC)) * poiR; // compile-time constant
						float2 poiOff = float2(poiCosR * poiBase.x - poiSinR * poiBase.y, poiSinR * poiBase.x + poiCosR * poiBase.y) * poiShadowRadius;
						float3 op = posWS + poiShadowT * poiOff.x + poiShadowB * poiOff.y;
						poiShadowSum += MainLightRealtimeShadow(TransformWorldToShadowCoord(op));
					}
					attenShadows = poiShadowSum / 5.0; // 4 disk taps + center
				}
				#endif
				#endif
				return attenShadows;
			}
			#if POI_PIPE == POI_BIRP
			void PoiGetLightAttenuation(
			float3 posWS,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			out half attenShadows, out float attenDistance, out half3 lightCookie)
			{
				attenShadows = UNITY_SHADOW_ATTENUATION(i, posWS);
				attenShadows = PoiDirectionalShadowBlur(attenShadows, posWS, i, 0, 0);
				#if defined(SPOT)
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1));
				attenDistance = (lightCoord.z > 0) ? UnitySpotAttenuate(lightCoord.xyz) : 0.0;
				attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), attenDistance);
				lightCookie = UnitySpotCookie(lightCoord).rrr;
				#elif defined(POINT_COOKIE)
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1)).xyz;
				attenDistance = tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r;
				attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), attenDistance);
				lightCookie = texCUBE(_LightTexture0, lightCoord).www;
				#elif defined(POINT)
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1)).xyz;
				attenDistance = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), attenDistance);
				lightCookie = 1.0;
				#elif defined(DIRECTIONAL_COOKIE)
				unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(posWS, 1)).xy;
				attenDistance = 1.0;
				lightCookie = tex2D(_LightTexture0, lightCoord).www;
				#else
				attenDistance = 1.0;
				lightCookie = 1.0;
				#endif
			}
			#endif
			void PoiLightDataSetupAdd(
			inout PoiLight poiLight,
			inout PoiFragData poiFragData,
			in PoiMesh poiMesh,
			in PoiCam poiCam,
			in PoiMods poiMods,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			inout PoiShadingParams params)
			{
				if (1.0 < 0.5)
				{
					params.exitCode = 1;
					return;
				}
				#if POI_PIPE == POI_BIRP
				#if !defined(POINT) && !defined(SPOT) && !defined(POINT_COOKIE)
				if (0.0 >= 0.5)
				{
					params.exitCode = 1;
					return;
				}
				#endif
				#elif POI_PIPE == POI_URP
				if (0.0 >= 0.5 && poiLight.lightType == POI_DIRECTIONAL)
				{
					params.exitCode = 1;
					return;
				}
				#endif
				poiLight.isAdditive = 1;
				#if POI_PIPE == POI_BIRP
				#if defined(POINT) || defined(SPOT) || defined(POINT_COOKIE)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - poiMesh.worldPos.xyz);
				#else
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz);
				#endif
				#elif POI_PIPE == POI_URP
				poiLight.direction = poiLight.unityLight.direction.xyz;
				#endif
				poiLight.attenStrength = 1.0;
				#if POI_PIPE == POI_BIRP
				PoiGetLightAttenuation(poiMesh.worldPos, i, poiLight.attenShadows, poiLight.attenDistance, poiLight.lightCookie);
				#elif POI_PIPE == POI_URP
				poiLight.attenShadows = poiLight.unityLight.shadowAttenuation;
				poiLight.attenDistance = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), poiLight.unityLight.distanceAttenuation);
				#if defined(_LIGHT_COOKIES)
				#if USE_CLUSTER_LIGHT_LOOP
				int lightBufferIndex = params.lightIndex;
				#else
				int lightBufferIndex = GetPerObjectLightIndex(params.lightIndex);
				#endif
				poiLight.lightCookie = SampleAdditionalLightCookie(lightBufferIndex, poiMesh.worldPos);
				#else
				poiLight.lightCookie = 1;
				#endif
				#endif
				poiLight.attenShadowsStrength = lerp(1, poiLight.attenShadows, poiLight.attenStrength);
				half3 additiveColorNoShadows = poiLight.unityLight.color * poiLight.attenDistance;
				poiLight.directColor = 1.0 ? MaxLuminance(additiveColorNoShadows, 1.0) : additiveColorNoShadows;
				poiLight.indirectColor = lerp(0, additiveColorNoShadows, 0.0);
				poiLight.indirectColor = 1.0 ? MaxLuminance(poiLight.indirectColor, 1.0) : poiLight.indirectColor;
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), 0.0);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), 0.0);
				poiLight.halfDir = normalize(poiLight.direction + poiCam.eyeViewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.eyeViewDir));
				poiLight.nDotVCentered = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.eyeViewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.eyeViewDir));
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				[flatten]
				switch ((int)0.0)
				{
					case 2:
					{
						poiLight.lightMap = poiLight.nDotLSaturated;
						break;
					}
					case 3:
					{
						poiLight.lightMap = 1;
						break;
					}
					default:
					{
						poiLight.lightMap = poiLight.nDotLNormalized;
						break;
					}
				}
				poiLight.lightMap *= poiLight.detailShadow;
				poiLight.lightMapNoAttenuation = poiLight.lightMap;
				poiLight.lightMap *= CalculateLuminance(poiLight.lightCookie) * poiLight.attenShadowsStrength;
				poiLight.attenuation = poiLight.lightMap;
				poiLight.additiveShadow = poiLight.lightMap;
				params.exitCode = 0;
			}
			void PoiLightDataSetup(
			inout PoiLight poiLight,
			inout PoiFragData poiFragData,
			in PoiMesh poiMesh,
			in PoiCam poiCam,
			in PoiMods poiMods,
			#ifdef POI_PASS_LILFUR
			in PoiGeoToFragLilFur i,
			#else
			in VertexOut i,
			#endif
			inout PoiShadingParams params)
			{
				bool lightExists = false;
				if (any(poiLight.unityLight.color.rgb >= 0.002))
				{
					lightExists = true;
				}
				if (1.0 >= 0.5)
				{
					poiFragData.toggleVertexLights = 1;
				}
				if (IsInMirror() && 1.0 < 0.5)
				{
					poiFragData.toggleVertexLights = 0;
				}
				#if POI_PIPE == POI_BIRP
				if (1.0 >= 0.5)
				{
					#if defined(VERTEXLIGHT_ON)
					float4 toLightX = unity_4LightPosX0 - poiMesh.worldPos.x;
					float4 toLightY = unity_4LightPosY0 - poiMesh.worldPos.y;
					float4 toLightZ = unity_4LightPosZ0 - poiMesh.worldPos.z;
					float4 lengthSq = 0;
					lengthSq += toLightX * toLightX;
					lengthSq += toLightY * toLightY;
					lengthSq += toLightZ * toLightZ;
					float4 lightAttenSq = unity_4LightAtten0;
					float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
					half4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
					poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
					poiLight.vDotNL = 0;
					poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
					poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
					poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
					float4 corr = rsqrt(lengthSq);
					poiLight.vDotNL *= corr;
					poiLight.vertexVDotNL = max(0, poiLight.vDotNL);
					poiLight.vSaturatedDotNL = saturate(poiLight.vDotNL);
					[unroll]
					for (int index = 0; index < 4; index++)
					{
						poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
						poiLight.vDirection[index] = float3(toLightX[index], toLightY[index], toLightZ[index]) * corr[index];
						poiLight.vAttenuation[index] = poiSampleCurve4(float4(0,0.3333333,0.6666667,1), poiLight.vAttenuation[index]);
						float3 col = unity_LightColor[index].rgb * poiLight.vAttenuation[index];
						poiLight.vColor[index] = 1.0 ? MaxLuminance(col, 1.0) : col;
						poiLight.vColor[index] = lerp(poiLight.vColor[index], dot(poiLight.vColor[index], float3(0.299,0.587,0.114)), 0.0);
						poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.eyeViewDir);
						poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
						poiLight.vDotNH[index] = dot(poiMesh.normals[1], poiLight.vHalfDir[index]);
						poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
						poiLight.vertexVDotNH[index] = saturate(dot(poiMesh.normals[0], poiLight.vHalfDir[index]));
					}
					#endif
				}
				#endif
				poiLight.attenStrength = 0.0;
				#if POI_PIPE == POI_BIRP
				PoiGetLightAttenuation(poiMesh.worldPos, i, poiLight.attenShadows, poiLight.attenDistance, poiLight.lightCookie);
				#elif POI_PIPE == POI_URP
				poiLight.attenShadows = poiLight.unityLight.shadowAttenuation;
				poiLight.attenDistance = poiLight.unityLight.distanceAttenuation;
				#if defined(_LIGHT_COOKIES)
				poiLight.lightCookie = SampleMainLightCookie(poiMesh.worldPos);
				#else
				poiLight.lightCookie = 1;
				#endif
				poiLight.attenShadows = PoiDirectionalShadowBlur(poiLight.attenShadows, poiMesh.worldPos, i, poiLight.unityLight.direction, poiCam.screenUV);
				#endif
				#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
				half bakedAtten = UnitySampleBakedOcclusion(poiMesh.lightmapUV.xy, poiMesh.worldPos);
				float zDist = dot(poiMesh.worldPos - poiCam.worldPos, poiCam.forwardDir);
				float fadeDist = UnityComputeShadowFadeDistance(poiMesh.worldPos, zDist);
				poiLight.attenShadows = UnityMixRealtimeAndBakedShadows(poiLight.attenShadows, bakedAtten, UnityComputeShadowFade(fadeDist));
				#endif
				poiLight.attenShadowsStrength = lerp(1, poiLight.attenShadows, poiLight.attenStrength);
				[flatten]
				switch ((int)0.0)
				{
					case 0: // Poi Custom Light Color
					{
						float3 magic = max(BetterSH9(normalize(PoiSHAr + PoiSHAg + PoiSHAb)), 0);
						float3 normalLight = poiLight.unityLight.color.rgb * poiLight.attenDistance + BetterSH9(float4(0, 0, 0, 1));
						float magiLumi = CalculateLuminance(magic);
						float normaLumi = CalculateLuminance(normalLight);
						float maginormalumi = magiLumi + normaLumi;
						float magiratio = magiLumi / maginormalumi;
						float normaRatio = normaLumi / maginormalumi;
						float target = CalculateLuminance(magic * magiratio + normalLight * normaRatio);
						half3 properLightColor = magic + normalLight;
						half properLuminance = CalculateLuminance(magic + normalLight);
						poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
						{
							float3 indirectSampleNormal = lerp(0, poiMesh.normals[1], 0.0);
							#ifdef POI_BENTNORMALMAP
							if (poiMesh.hasBentNormal > 0.5 && 1.0 > 0.5)
							{
								indirectSampleNormal = lerp(indirectSampleNormal, poiMesh.bentNormal, 0.0);
							}
							#endif
							poiLight.indirectColor = BetterSH9(float4(indirectSampleNormal, 1));
						}
						break;
					}
					case 1: // More standard approach to light color
					{
						half3 indirectNormal = poiMesh.normals[1];
						#ifdef POI_BENTNORMALMAP
						if (poiMesh.hasBentNormal > 0.5 && 1.0 > 0.5)
						{
							indirectNormal = poiMesh.bentNormal;
						}
						#endif
						half3 indirectColor = BetterSH9(half4(indirectNormal, 1));
						if (lightExists)
						{
							poiLight.directColor = poiLight.unityLight.color.rgb * poiLight.attenDistance;
							poiLight.indirectColor = indirectColor;
						}
						else
						{
							poiLight.directColor = indirectColor * 0.6;
							poiLight.indirectColor = indirectColor * 0.5;
						}
						break;
					}
					case 2: // UTS style
					{
						poiLight.indirectColor = saturate(max(half3(0.05, 0.05, 0.05) * 1.0, max(PoiShadeSH9(half4(0.0, 0.0, 0.0, 1.0)), PoiShadeSH9(half4(0.0, -1.0, 0.0, 1.0)).rgb) * 1.0));
						poiLight.directColor = max(poiLight.indirectColor, poiLight.unityLight.color.rgb * poiLight.attenDistance);
						break;
					}
					case 3: // OpenLit
					{
						float3 lightDirectionForSH9 = OpenLitLightingDirectionForSH9(poiLight.unityLight);
						OpenLitShadeSH9ToonDouble(lightDirectionForSH9, poiLight.directColor, poiLight.indirectColor);
						poiLight.directColor += poiLight.unityLight.color.rgb * poiLight.attenDistance;
						break;
					}
				}
				int lightMapMode = 0.0;
				[flatten]
				switch ((int)0.0)
				{
					case 0:
					{
						poiLight.direction = CalculateLuminance(poiLight.unityLight.color.rgb) * poiLight.unityLight.direction.xyz;
						#if !(defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
						poiLight.direction += (PoiSHAr.xyz + PoiSHAg.xyz + PoiSHAb.xyz) / 3.0;
						#else
						poiLight.direction += EstimateAPVDominantDirection(poiMesh.worldPos, poiCam.viewDir);
						#endif
						break;
					}
					case 1:
					{
						poiLight.direction = mul((float3x3)unity_ObjectToWorld, float4(0,0,0,1)).xyz;
						if (lightMapMode == 0) lightMapMode = 1;
						break;
					}
					case 2:
					{
						poiLight.direction = float4(0,0,0,1);
						if (lightMapMode == 0) lightMapMode = 1;
						break;
					}
					case 3: // UTS
					{
						float3 defaultLightDirection = normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
						float3 lightDirection = normalize(lerp(defaultLightDirection, poiLight.unityLight.direction.xyz, any(poiLight.unityLight.direction.xyz)));
						poiLight.direction = lightDirection;
						break;
					}
					case 4: // OpenLit
					{
						poiLight.direction = OpenLitLightingDirection(poiLight.unityLight); // float4 customDir = 0; // Do we want to give users to alter this (OpenLit always does!)?
						break;
					}
					case 5: // View Direction
					{
						float3 upViewDir = UNITY_MATRIX_V[1].xyz;
						float3 rightViewDir = UNITY_MATRIX_V[0].xyz;
						float yawOffset_Rads = radians(!IsInMirror() ? - 0.0 : 0.0);
						float3 rotatedViewYaw = normalize(RotateAroundAxis(rightViewDir, upViewDir, yawOffset_Rads));
						float3 rotatedViewCameraMeshOffset = RotateAroundAxis((poiCam.worldPos - poiMesh.worldPos), upViewDir, yawOffset_Rads);
						float pitchOffset_Rads = radians(!IsInMirror() ? 0.0 : - 0.0);
						float3 rotatedViewPitch = RotateAroundAxis(rotatedViewCameraMeshOffset, rotatedViewYaw, pitchOffset_Rads);
						poiLight.direction = normalize(rotatedViewPitch);
						break;
					}
				}
				if (!any(poiLight.direction))
				{
					poiLight.direction = float3(.4, 1, .4);
				}
				poiLight.direction = normalize(poiLight.direction);
				if (!any(poiLight.directColor) && !any(poiLight.indirectColor) && lightMapMode == 0)
				{
					lightMapMode = 1;
					if (0.0 == 0)
					{
						poiLight.direction = normalize(float3(.4, 1, .4));
					}
				}
				poiLight.halfDir = normalize(poiLight.direction + poiCam.eyeViewDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				half rawNDotV = dot(poiMesh.normals[1], poiCam.eyeViewDir);
				poiLight.nDotV = abs(rawNDotV);
				poiLight.nDotVSaturated = saturate(rawNDotV);
				poiLight.nDotVCentered = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.eyeViewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				poiLight.lDotv = dot(poiLight.direction, poiCam.eyeViewDir);
				poiLight.lDotH = max(0.00001, dot(poiLight.direction, poiLight.halfDir));
				float lightCookieLuminance = CalculateLuminance(poiLight.lightCookie);
				[flatten]
				switch (lightMapMode)
				{
					case 0:
					{
						float3 ShadeSH9Plus = GetSHLength();
						float3 ShadeSH9Minus = float3(PoiSHAr.w, PoiSHAg.w, PoiSHAb.w) + float3(PoiSHBr.z, PoiSHBg.z, PoiSHBb.z) / 3.0;
						float3 SH9_N1 = PoiShadeSH9(float4(poiMesh.normals[1], 1));
						float3 greyScaleVector = float3(.33333, .33333, .33333);
						half bw_lightColor = dot(poiLight.directColor, greyScaleVector);
						float bw_directLighting = (poiLight.nDotLNormalized * bw_lightColor * poiLight.attenShadowsStrength) * lightCookieLuminance + dot(SH9_N1, greyScaleVector);
						float bw_directLightingNoAtten = poiLight.nDotLNormalized * bw_lightColor + dot(SH9_N1, greyScaleVector);
						float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
						float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
						float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
						poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting);
						poiLight.lightMapNoAttenuation = smoothstep(0, lightDifference, bw_directLightingNoAtten - bw_bottomIndirectLighting);
						break;
					}
					case 1:
					{
						poiLight.lightMapNoAttenuation = poiLight.nDotLNormalized;
						poiLight.lightMap = poiLight.nDotLNormalized * poiLight.attenShadowsStrength * lightCookieLuminance;
						break;
					}
					case 2:
					{
						poiLight.lightMapNoAttenuation = poiLight.nDotLSaturated;
						poiLight.lightMap = poiLight.nDotLSaturated * poiLight.attenShadowsStrength * lightCookieLuminance;
						break;
					}
					case 3:
					{
						poiLight.lightMapNoAttenuation = 1;
						poiLight.lightMap = poiLight.attenShadowsStrength * lightCookieLuminance;
						break;
					}
					case 4:
					{
						#if defined(PROP_LIGHTDATASDFMAP)
						float2 lightDataSDFMap = 1;
						if (0.0 > 0)
						{
							float sdfLod = pow(0.0, 4.0);
							lightDataSDFMap = POI2D_SAMPLER_PANGRAD(_LightDataSDFMap, _linear_repeat, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0), max(poiMesh.dx, sdfLod), max(poiMesh.dy, sdfLod)).rg;
						}
						else
						{
							lightDataSDFMap = POI2D_SAMPLER_PAN(_LightDataSDFMap, _linear_repeat, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0)).rg;
						}
						poiLight.lightMapNoAttenuation = poiLight.nDotLSaturated;
						float3 faceR = mul((float3x3)unity_ObjectToWorld, float3(-1.0, 0.0, 0.0));
						float LdotR = dot(poiLight.direction.xz, faceR.xz);
						float sdf = LdotR < 0 ? lightDataSDFMap.g : lightDataSDFMap.r;
						float3 faceF = mul((float3x3)unity_ObjectToWorld, float3(0.0, 0.0, 1.0)).xyz;
						faceF.y *= 1.0;
						faceF = dot(faceF, faceF) == 0 ? 0 : normalize(faceF);
						float3 faceL = poiLight.direction;
						faceL.y *= 1.0;
						faceL = dot(faceL, faceL) == 0 ? 0 : normalize(faceL);
						float lnSDF = dot(faceL, faceF);
						poiLight.lightMapNoAttenuation = saturate(lnSDF * 0.5 + sdf * 0.5 + 0.25);
						poiLight.lightMap = saturate(lnSDF * 0.5 + sdf * 0.5 + 0.25) * poiLight.attenShadowsStrength * lightCookieLuminance;
						#else
						poiLight.lightMapNoAttenuation = poiLight.nDotLNormalized;
						poiLight.lightMap = poiLight.nDotLNormalized * poiLight.attenShadowsStrength * lightCookieLuminance;
						#endif
						break;
					}
				}
				poiLight.lightMapNoAttenuation *= poiLight.detailShadow;
				poiLight.lightMap *= poiLight.detailShadow;
				poiLight.attenuation = poiLight.lightMap;
				poiLight.additiveShadow = poiLight.lightMap;
				poiLight.directColor = max(poiLight.directColor, 0.0001);
				poiLight.indirectColor = max(poiLight.indirectColor, 0.0001);
				if (0.0 == 3)
				{
					poiLight.directColor = max(poiLight.directColor, poiLight.lightingMinLightBrightness);
				}
				else
				{
					poiLight.directColor = PoiMinBrightness(poiLight.directColor, poiLight.lightingMinLightBrightness);
					poiLight.indirectColor = PoiMinBrightness(poiLight.indirectColor, poiLight.lightingMinLightBrightness);
				}
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), poiLight.lightingMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), poiLight.lightingMonochromatic);
				if (poiLight.lightingCapEnabled)
				{
					poiLight.directColor = min(poiLight.directColor, _LightingCap);
					poiLight.indirectColor = min(poiLight.indirectColor, _LightingCap);
				}
				if (0.0 >= 0.5)
				{
					poiLight.directColor = poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				}
				#if defined(POI_PASS_BASE) || defined(POI_PASS_OUTLINE)
				poiLight.directColor = max(poiLight.directColor * 1.0, 0);
				poiLight.directColor = max(poiLight.directColor + 0.0, 0);
				poiLight.indirectColor = max(poiLight.indirectColor * 1.0, 0);
				poiLight.indirectColor = max(poiLight.indirectColor + 0.0, 0);
				#endif
				#ifdef POI_PASS_ADD
				PoiLightDataSetupAdd(poiLight, poiFragData, poiMesh, poiCam, poiMods, i, params);
				if (params.exitCode != 0) return;
				#endif
				params.exitCode = 0;
			}
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + 0.0);
				if (0.0 > 0)
				{
					poiFragData.alpha = maskBlend(poiFragData.alpha, poiMods.globalMask[0.0 - 1], 2.0);
				}
			}
			#ifdef POI_WORLD
			float4 PoiCubicWeights(float v)
			{
				float4 n = float4(1.0, 2.0, 3.0, 4.0) - v;
				float4 s = n * n * n;
				float x = s.x;
				float y = s.y - 4.0 * s.x;
				float z = s.z - 4.0 * s.y + 6.0 * s.x;
				float w = 6.0 - x - y - z;
				return float4(x, y, z, w);
			}
			float4 PoiSampleTex2DBicubic(Texture2D tex, SamplerState smp, float2 uv)
			{
				float texW, texH;
				tex.GetDimensions(texW, texH);
				float2 texSize = float2(texW, texH);
				float2 invTexSize = 1.0 / texSize;
				float2 coord = uv * texSize - 0.5;
				float2 f = frac(coord);
				coord -= f;
				float4 xcubic = PoiCubicWeights(f.x);
				float4 ycubic = PoiCubicWeights(f.y);
				float4 c = float4(coord.x - 0.5, coord.x + 1.5, coord.y - 0.5, coord.y + 1.5);
				float4 s = float4(xcubic.x + xcubic.y, xcubic.z + xcubic.w, ycubic.x + ycubic.y, ycubic.z + ycubic.w);
				float4 offset = c + float4(xcubic.y, xcubic.w, ycubic.y, ycubic.w) / s;
				float4 sample0 = tex.Sample(smp, float2(offset.x, offset.z) * invTexSize);
				float4 sample1 = tex.Sample(smp, float2(offset.y, offset.z) * invTexSize);
				float4 sample2 = tex.Sample(smp, float2(offset.x, offset.w) * invTexSize);
				float4 sample3 = tex.Sample(smp, float2(offset.y, offset.w) * invTexSize);
				float sx = s.x / (s.x + s.y);
				float sy = s.z / (s.z + s.w);
				return lerp(lerp(sample3, sample2, sx), lerp(sample1, sample0, sx), sy);
			}
			float3 PoiSampleBakedLightmap(float2 lightmapUV, float3 worldNormal, float3 tangentNormal)
			{
				#if defined(_LIGHTMAP_BICUBIC)
				float4 rawLM = PoiSampleTex2DBicubic(unity_Lightmap, samplerunity_Lightmap, lightmapUV);
				#else
				float4 rawLM = UNITY_SAMPLE_TEX2D(unity_Lightmap, lightmapUV);
				#endif
				float3 L0 = DecodeLightmap(rawLM);
				
				if (3.0 == 3)
				{
					#if defined(DIRLIGHTMAP_COMBINED)
					#if defined(_LIGHTMAP_BICUBIC)
					float3 nL1 = PoiSampleTex2DBicubic(unity_LightmapInd, samplerunity_Lightmap, lightmapUV).xyz * 2.0 - 1.0;
					#else
					float3 nL1 = UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd, unity_Lightmap, lightmapUV).xyz * 2.0 - 1.0;
					#endif
					float3 L1x = nL1.x * L0 * 2.0;
					float3 L1y = nL1.y * L0 * 2.0;
					float3 L1z = nL1.z * L0 * 2.0;
					return L0 + worldNormal.x * L1x + worldNormal.y * L1y + worldNormal.z * L1z;
					#else
					return L0;
					#endif
				}
				return L0;
			}
			float3 PoiSampleDynamicLightmap(float2 lightmapUV, float3 worldNormal)
			{
				#if defined(_LIGHTMAP_BICUBIC)
				float4 rawDyn = PoiSampleTex2DBicubic(unity_DynamicLightmap, samplerunity_DynamicLightmap, lightmapUV);
				#else
				float4 rawDyn = UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, lightmapUV);
				#endif
				half3 dynDiffuse = DecodeRealtimeLightmap(rawDyn);
				#if defined(DIRLIGHTMAP_COMBINED)
				#if defined(_LIGHTMAP_BICUBIC)
				float4 dirDyn = PoiSampleTex2DBicubic(unity_DynamicDirectionality, samplerunity_DynamicLightmap, lightmapUV);
				#else
				float4 dirDyn = UNITY_SAMPLE_TEX2D_SAMPLER(unity_DynamicDirectionality, unity_DynamicLightmap, lightmapUV);
				#endif
				return DecodeDirectionalLightmap(dynDiffuse, dirDyn, worldNormal);
				#else
				return dynDiffuse;
				#endif
			}
			#endif
			void poiApplyAlphaMask(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				if (2.0)
				{
					half4 alphaMaskTex = 1;
					#if defined(PROP_ALPHAMASK) || !defined(OPTIMIZER_ENABLED)
					alphaMaskTex = POI2D_SAMPLER_PAN(_AlphaMask, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0).xy);
					#endif
					half alphaMask = poiSampleMask(alphaMaskTex, float4(1.0, 0.0, 0.0, 0.0), 2.0, 0.0, float4(0,1,0,1), 1.0, 1.0, 0.0);
					switch ((int)2.0)
					{
						case 1: poiFragData.alpha = alphaMask; break;
						case 2: poiFragData.alpha *= alphaMask; break;
						case 3: poiFragData.alpha = saturate(poiFragData.alpha + alphaMask); break;
						case 4: poiFragData.alpha = saturate(poiFragData.alpha - alphaMask); break;
					}
				}
			}
			void applyMainColor(inout PoiFragData poiFragData, inout PoiMesh poiMesh, inout PoiCam poiCam, inout PoiMods poiMods, inout float4 mainTexture)
			{
				poiFragData.baseColor = mainTexture.rgb;
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				#else
				if(_TwoPassOverrideFirstPassColor == 1)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, _TwoPassColor.rgb, _TwoPassColorThemeIndex);
					poiFragData.alpha = mainTexture.a * _TwoPassColor.a;
				}
				else if(_TwoPassOverrideFirstPassColor == 2)
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * _TwoPassAlphaOverride;
				}
				else
				{
					poiFragData.baseColor *= poiThemeColor(poiMods, float4(1,1,1,1).rgb, 0.0);
					poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				}
				#endif
				poiApplyAlphaMask(poiFragData, poiMesh);
			}
			void applyMainNormal(inout PoiMesh poiMesh)
			{
				#if defined(PROP_BUMPMAP) || !defined(OPTIMIZER_ENABLED)
				poiMesh.tangentSpaceNormal = PoiUnpackNormalScale(POI2D_SAMPLER_PAN_STOCHASTIC(_BumpMap, _MainTex, poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0)), float4(0,0,0,0), 0.0), 1.0);
				#else
				poiMesh.tangentSpaceNormal = float3(0, 0, 1);
				#endif
			}
			half3 poiThemeSaturation(half3 color, half amount)
			{
				if (amount <= 0.0)
				{
					return PoiApplyChromatize(color, amount);
				}
				half minRgb = min(color.r, min(color.g, color.b));
				half maxRgb = max(color.r, max(color.g, color.b));
				half rangeRgb = maxRgb - minRgb;
				half3 pureHue = (rangeRgb > 0.0001) ? ((color - minRgb) / rangeRgb) * maxRgb : color;
				half3 saturated = lerp(color, pureHue, saturate(amount));
				return saturated / (1.0 + 0.35 * max(amount - 1.0, 0.0));
			}
			void calculateGlobalThemes(inout PoiMods poiMods)
			{
				half4 themeColorExposures = 0;
				half4 themeColor0, themeColor1, themeColor2, themeColor3 = 0;
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor0.rgb, themeColorExposures.x);
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor1.rgb, themeColorExposures.y);
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor2.rgb, themeColorExposures.z);
				DecomposeHDRColor(float4(1,1,1,1).rgb, themeColor3.rgb, themeColorExposures.w);
				float themeHue0 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor0.rgb = ModifyViaHSV(themeColor0.rgb, 0.0, 0.0, 0.0);
						themeColor0.rgb = hueShift(themeColor0.rgb, themeHue0, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor0.rgb = hueShift(themeColor0.rgb, themeHue0, 0.0, 1.0);
						themeColor0.rgb = max(0.0, themeColor0.rgb);
						themeColor0.rgb = poiThemeSaturation(themeColor0.rgb, 0.0);
						themeColorExposures.x += log2(max(0.0 + 1.0, 0.0001));
						themeColor0.rgb = max(0.0, themeColor0.rgb);
						break;
					}
					default:
					{
						themeColor0.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor0.rgb = max(0.0, themeColor0.rgb);
				themeColor0.rgb /= max(1.0, max(themeColor0.r, max(themeColor0.g, themeColor0.b)));
				poiMods.globalColorTheme[0] = float4(ApplyHDRExposure(themeColor0.rgb, themeColorExposures.x), float4(1,1,1,1).a);
				float themeHue1 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor1.rgb = ModifyViaHSV(themeColor1.rgb, 0.0, 0.0, 0.0);
						themeColor1.rgb = hueShift(themeColor1.rgb, themeHue1, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor1.rgb = hueShift(themeColor1.rgb, themeHue1, 0.0, 1.0);
						themeColor1.rgb = max(0.0, themeColor1.rgb);
						themeColor1.rgb = poiThemeSaturation(themeColor1.rgb, 0.0);
						themeColorExposures.y += log2(max(0.0 + 1.0, 0.0001));
						themeColor1.rgb = max(0.0, themeColor1.rgb);
						break;
					}
					default:
					{
						themeColor1.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor1.rgb = max(0.0, themeColor1.rgb);
				themeColor1.rgb /= max(1.0, max(themeColor1.r, max(themeColor1.g, themeColor1.b)));
				poiMods.globalColorTheme[1] = float4(ApplyHDRExposure(themeColor1.rgb, themeColorExposures.y), float4(1,1,1,1).a);
				float themeHue2 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor2.rgb = ModifyViaHSV(themeColor2.rgb, 0.0, 0.0, 0.0);
						themeColor2.rgb = hueShift(themeColor2.rgb, themeHue2, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor2.rgb = hueShift(themeColor2.rgb, themeHue2, 0.0, 1.0);
						themeColor2.rgb = max(0.0, themeColor2.rgb);
						themeColor2.rgb = poiThemeSaturation(themeColor2.rgb, 0.0);
						themeColorExposures.z += log2(max(0.0 + 1.0, 0.0001));
						themeColor2.rgb = max(0.0, themeColor2.rgb);
						break;
					}
					default:
					{
						themeColor2.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor2.rgb = max(0.0, themeColor2.rgb);
				themeColor2.rgb /= max(1.0, max(themeColor2.r, max(themeColor2.g, themeColor2.b)));
				poiMods.globalColorTheme[2] = float4(ApplyHDRExposure(themeColor2.rgb, themeColorExposures.z), float4(1,1,1,1).a);
				float themeHue3 = frac(0.0 + 0.0 * POI_TIME.x);
				[flatten]
				switch((int)1.0)
				{
					case 0:
					{
						themeColor3.rgb = ModifyViaHSV(themeColor3.rgb, 0.0, 0.0, 0.0);
						themeColor3.rgb = hueShift(themeColor3.rgb, themeHue3, 0.0, 1.0);
						break;
					}
					case 1:
					{
						themeColor3.rgb = hueShift(themeColor3.rgb, themeHue3, 0.0, 1.0);
						themeColor3.rgb = max(0.0, themeColor3.rgb);
						themeColor3.rgb = poiThemeSaturation(themeColor3.rgb, 0.0);
						themeColorExposures.w += log2(max(0.0 + 1.0, 0.0001));
						themeColor3.rgb = max(0.0, themeColor3.rgb);
						break;
					}
					default:
					{
						themeColor3.rgb = float3(1.0, 0.0, 0.0);
						break;
					}
				}
				themeColor3.rgb = max(0.0, themeColor3.rgb);
				themeColor3.rgb /= max(1.0, max(themeColor3.r, max(themeColor3.g, themeColor3.b)));
				poiMods.globalColorTheme[3] = float4(ApplyHDRExposure(themeColor3.rgb, themeColorExposures.w), float4(1,1,1,1).a);
			}
			void ApplyGlobalMaskModifiers(in PoiMesh poiMesh, inout PoiMods poiMods, in PoiCam poiCam)
			{
			}
			float2 applyUVSettings(float2 uv, float2 tiling, float2 offset, float angle, float2 pan, float rotate)
			{
				uv = uv * tiling + offset;
				float angleRad = angle * (UNITY_PI / 180.0);
				float rotateRad = rotate * (UNITY_PI / 180.0);
				float totalAngle = angleRad + rotateRad * POI_TIME.y;
				if (totalAngle != 0)
				{
					float2 pivot = float2(0.5, 0.5);
					float cosA = cos(totalAngle);
					float sinA = sin(totalAngle);
					uv -= pivot;
					uv = float2(
					uv.x * cosA - uv.y * sinA,
					uv.x * sinA + uv.y * cosA
					);
					uv += pivot;
				}
				uv += pan * POI_TIME.y;
				return uv;
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[0.0] - float4(0.5,0.5,0,0);
				float dist = length(delta);
				float radius;
				
				if (0.0 == 0) // Standard
				{
					radius = dist * 2 * 1.0;
				}
				else if (0.0 == 1) // Log Polar - preserves texture scale
				{
					radius = log(dist + 0.001) * 1.0 + 1;
				}
				else // Square Polar
				{
					radius = max(abs(delta.x), abs(delta.y)) * 2 * 1.0;
				}
				float angle = atan2(delta.x, delta.y);
				float phi = angle / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				angle = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				angle *= 1.0;
				return float2(radius, angle + dist * 0.0);
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0, 1.0 / UNITY_PI);
				return float2(1.0, 1.0) - sphereCoords;
			}
			float2 StereoPanoProjection(float3 coords, int stereoLayout)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float phi = longitude / (UNITY_PI * 2.0);
				float phi_frac = frac(phi);
				longitude = fwidth(phi) - 0.0001 < fwidth(phi_frac) ? phi : phi_frac;
				longitude *= 2;
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				if (stereoLayout == 2)
				return float2(sphereCoords.x * 0.5 + unity_StereoEyeIndex * 0.5, sphereCoords.y);
				return float2(sphereCoords.x, sphereCoords.y * 0.5 + (1 - unity_StereoEyeIndex) * 0.5);
			}
			float2 calculateWorldUV(in PoiMesh poiMesh)
			{
				return float2(0.0 != 3 ? poiMesh.worldPos[ 0.0] : 0.0f, 2.0 != 3 ? poiMesh.worldPos[2.0] : 0.0f);
			}
			float2 calculatelocalUV(in PoiMesh poiMesh)
			{
				float localUVs[8];
				localUVs[0] = poiMesh.localPos.x;
				localUVs[1] = poiMesh.localPos.y;
				localUVs[2] = poiMesh.localPos.z;
				localUVs[3] = 0;
				localUVs[4] = poiMesh.vertexColor.r;
				localUVs[5] = poiMesh.vertexColor.g;
				localUVs[6] = poiMesh.vertexColor.b;
				localUVs[7] = poiMesh.vertexColor.a;
				return float2(localUVs[0.0],localUVs[1.0]);
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh, int panoUseBothEyes, int stereoLayout)
			{
				bool useCenterEye = panoUseBothEyes <= 0;
				float3 panoCameraPosition = getCameraPosition(useCenterEye);
				float3 viewDirection = normalize(poiMesh.worldPos.xyz - panoCameraPosition);
				if (stereoLayout != 0)
				return StereoPanoProjection(viewDirection, stereoLayout);
				else
				return MonoPanoProjection(viewDirection);
			}
			float2 calculateViewNormalUV(in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
				float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				return float2(dot(worldViewRight, poiMesh.normals[0]), dot(worldViewUp, poiMesh.normals[0])) * 0.5 + 0.5;
			}
			float2 calculateScreenSpaceUV(float4 clipPos)
			{
				float4 poiScreenSpaceUV = poiTransformClipSpacetoScreenSpaceFrag(clipPos);
				float2 screenUV = poiScreenSpaceUV.xy / poiScreenSpaceUV.w;
				#ifdef UNITY_SINGLE_PASS_STEREO
				screenUV.x -= unity_StereoEyeIndex;
				#endif
				float2 poiEyeOpticalCenter = 0.5 - 0.5 * float2(UNITY_MATRIX_P._m02, UNITY_MATRIX_P._m12);
				#if UNITY_UV_STARTS_AT_TOP
				poiEyeOpticalCenter.y = 1.0 - poiEyeOpticalCenter.y;
				#endif
				float poiViewAspect = abs(UNITY_MATRIX_P._m11) / max(abs(UNITY_MATRIX_P._m00), 0.000001);
				float2 poiScreenSquareScale = float2(1.0 / max(poiViewAspect, 1.0), min(poiViewAspect, 1.0));
				screenUV = (screenUV - poiEyeOpticalCenter) / poiScreenSquareScale + 0.5;
				if (0.0 >= 0.5)
				{
					float3 pivotView = mul(UNITY_MATRIX_V, mul(unity_ObjectToWorld, float4(0, 0, 0, 1))).xyz;
					float pivotDepth = unity_OrthoParams.w > 0.5 ? 1.0 : max(abs(pivotView.z), 0.0001);
					float projectionScale = max(max(abs(UNITY_MATRIX_P._m00), abs(UNITY_MATRIX_P._m11)), 0.0001);
					float worldSize = 1.0;
					float2 pivotPlane = pivotView.xy * float2(UNITY_MATRIX_P._m00 < 0 ? -1 : 1, UNITY_MATRIX_P._m11 < 0 ? -1 : 1);
					#if UNITY_UV_STARTS_AT_TOP
					pivotPlane.y = -pivotPlane.y;
					#endif
					screenUV = ((screenUV - 0.5) * (2.0 * pivotDepth / projectionScale) - pivotPlane) / worldSize + 0.5;
				}
				return screenUV;
			}
			void PoiShadingGlobalMasks(inout PoiMods poiMods, in PoiLight poiLight)
			{
				if (0.0 > 0)
				{
					applyToGlobalMask(poiMods, 0.0 - 1, 2.0, saturate(poiMax(poiLight.rampedLightMap * 1.0)));
				}
				if (0.0 > 0)
				{
					applyToGlobalMask(poiMods, 0.0 - 1, 2.0, (1 - saturate(poiMax(poiLight.rampedLightMap * 1.0))));
				}
			}
			#ifdef VIGNETTE_MASKED
			float GetRemapMinValue(float scale, float offset)
			{
				return clamp(-offset / scale, -0.01f, 1.01f); // Remap min
			}
			float GetRemapMaxValue(float scale, float offset)
			{
				return clamp((1.0f - offset) / scale, -0.01f, 1.01f); // Remap Max
			}
			#if POI_PIPE == POI_URP
			void PoiAdditionalLightCopy(inout PoiLight poiLight, in PoiLight mainLight, in Light additionalLight, uint lightType, float detailShadow)
			{
				PoiInitStruct(PoiLight, poiLight);
				poiLight.lightType = lightType;
				poiLight.unityLight = additionalLight;
				poiLight.detailShadow = detailShadow;
				poiLight.toonShadowMask = mainLight.toonShadowMask;
				poiLight.occlusion = mainLight.occlusion;
				poiLight.brdfData = mainLight.brdfData;
				poiLight.brdfDataClearCoat = mainLight.brdfDataClearCoat;
				poiLight.lightingMinLightBrightness = mainLight.lightingMinLightBrightness;
				poiLight.lightingCapEnabled = mainLight.lightingCapEnabled;
				poiLight.lightingMonochromatic = mainLight.lightingMonochromatic;
			}
			#endif
			void PoiCalculateShading(inout PoiLight poiLight, inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				half3 litColor = poiLight.directColor * poiLight.lightCookie;
				half3 passthroughColor = poiLight.indirectColor * poiLight.lightCookie;
				half3 ambientColor = poiLight.isAdditive ? passthroughColor : poiLight.indirectColor;
				half ignoreAmbientColor = poiLight.isAdditive ? 0 : 1.0;
				#if (POI_PIPE == POI_BIRP && defined(POI_PASS_ADD)) || (POI_PIPE == POI_URP)
				if (poiLight.isAdditive)
				{
					if (3.0 == 3)
					{
						#if defined(_LIGHTINGMODE_REALISTIC) || defined(_LIGHTINGMODE_CLOTH) || defined(_LIGHTINGMODE_WRAPPED)
						poiLight.rampedLightMap = poiLight.nDotLSaturated;
						poiLight.rampedLightMap *= poiLight.attenDistance;
						#if POI_PIPE == POI_BIRP
						poiLight.finalLighting = litColor * poiLight.nDotLSaturated * poiLight.detailShadow * poiLight.attenShadowsStrength;
						#elif POI_PIPE == POI_URP
						poiLight.finalLighting = LightingPhysicallyBased(poiLight.brdfData, poiLight.brdfDataClearCoat, litColor, poiLight.direction, poiLight.detailShadow * poiLight.attenShadowsStrength, poiMesh.normals[1], poiCam.eyeViewDir, 1.0, false);
						#endif
						poiLight.finalLighting = max(poiLight.finalLighting, passthroughColor);
						return;
						#endif
					}
					if (3.0 == 0)
					{
						poiLight.rampedLightMap = poiLight.nDotLSaturated;
						poiLight.rampedLightMap *= poiLight.attenDistance;
						#if POI_PIPE == POI_BIRP
						poiLight.finalLighting = litColor * poiLight.nDotLSaturated * poiLight.detailShadow * poiLight.attenShadowsStrength;
						#elif POI_PIPE == POI_URP
						poiLight.finalLighting = LightingPhysicallyBased(poiLight.brdfData, poiLight.brdfDataClearCoat, litColor, poiLight.direction, poiLight.detailShadow * poiLight.attenShadowsStrength, poiMesh.normals[1], poiCam.eyeViewDir, 1.0, false);
						#endif
						poiLight.finalLighting = max(poiLight.finalLighting, passthroughColor);
						return;
					}
					if (3.0 == 1)
					{
						float2 ToonAddGradient = float2(0.0, 0.5);
						if (ToonAddGradient.x == ToonAddGradient.y) ToonAddGradient.y += 0.0001;
						poiLight.rampedLightMap = smoothstep(ToonAddGradient.y, ToonAddGradient.x, 1 - poiLight.nDotLNormalized);
						poiLight.rampedLightMap *= poiLight.attenDistance;
						poiLight.finalLighting = lerp(litColor * poiLight.detailShadow * poiLight.attenShadowsStrength, passthroughColor,
						smoothstep(ToonAddGradient.x, ToonAddGradient.y, 1 - poiLight.nDotLNormalized));
						return;
					}
				}
				#endif
				half shadowStrength = 1.0 * poiLight.toonShadowMask.r;
				#ifdef POI_PASS_OUTLINE
				shadowStrength = lerp(0, shadowStrength, POI_OUTLINE_VALUE(0.0, poiMesh.outlineLayer));
				#endif
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = litColor * poiLight.attenShadowsStrength;
				if (1.0 >= 0.5)
				{
					poiLight.rampedLightMap = smoothstep(0.4, 0.6, poiLight.nDotLNormalized);
				}
				else
				{
					poiLight.rampedLightMap = 1;
				}
				if (poiLight.isAdditive)
				{
					poiLight.finalLighting = lerp(passthroughColor, poiLight.finalLighting, poiLight.rampedLightMap);
				}
				#endif
				#if POI_PIPE == POI_BIRP
				if (poiFragData.toggleVertexLights)
				{
					#if defined(VERTEXLIGHT_ON)
					float3 vertexLighting = float3(0, 0, 0);
					for (int index = 0; index < 4; index++)
					{
						float lightingMode = 3.0;
						if (lightingMode == 3)
						{
							#if defined(_LIGHTINGMODE_REALISTIC)
							lightingMode = 0;
							#else
							lightingMode = 1;
							#endif
						}
						if (lightingMode == 0)
						{
							vertexLighting += poiLight.vColor[index] * poiLight.vSaturatedDotNL[index] * poiLight.detailShadow; // Realistic
						}
						if (lightingMode == 1)
						{
							float2 ToonAddGradient = float2(0.0, 0.5);
							if (ToonAddGradient.x == ToonAddGradient.y) ToonAddGradient.y += 0.0001;
							vertexLighting += lerp(poiLight.vColor[index] * poiLight.detailShadow, poiLight.vColor[index] * 0.0, smoothstep(ToonAddGradient.x, ToonAddGradient.y, 1 - (.5 * poiLight.vDotNL[index] + .5)));
						}
					}
					poiLight.finalLighting += vertexLighting;
					#endif
				}
				#endif
				poiLight.rampedLightMap *= poiLight.attenDistance;
				PoiShadingGlobalMasks(poiMods, poiLight);
			}
			#endif
			void PoiLightingNoLoopModules(inout PoiLight poiLight, inout PoiFragData poiFragData,
			in PoiMesh poiMesh, in PoiCam poiCam, inout PoiMods poiMods)
			{
			}
			void PoiLightingDependantModules(inout PoiLight poiLight, inout PoiFragData poiFragData, inout MochieBRDFData mochieBRDFData,
			in PoiMesh poiMesh, in PoiCam poiCam, inout PoiMods poiMods)
			{
			}
			float4 frag(VertexOut i, bool facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiSHAr = unity_SHAr;
				PoiSHAg = unity_SHAg;
				PoiSHAb = unity_SHAb;
				PoiSHBr = unity_SHBr;
				PoiSHBg = unity_SHBg;
				PoiSHBb = unity_SHBb;
				PoiSHC =  unity_SHC;
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				#if POI_PIPE == POI_URP
				PoiLightOut poiLightOut;
				PoiInitStruct(PoiLightOut, poiLightOut);
				#endif
				PoiFragData poiFragData;
				PoiInitStruct(PoiFragData, poiFragData);
				poiFragData.smoothness = 1;
				poiFragData.smoothness2 = 1;
				poiFragData.metallic = 1;
				poiFragData.specularMask = 1;
				poiFragData.reflectionMask = 1;
				poiFragData.alpha = 1;
				MochieBRDFData mochieBRDFData;
				PoiInitStruct(MochieBRDFData, mochieBRDFData);
				poiMesh.objectPosition = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				poiMesh.objNormal = mul((float3x3)unity_WorldToObject, i.normal.xyz);
				poiMesh.normals[0] = i.normal.xyz;
				poiMesh.objectScale = i.normal.w;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				#ifdef POI_TRIPLE_OUTLINE
				poiMesh.outlineLayer = i.poiOutlineLayer;
				#else
				poiMesh.outlineLayer = 0;
				#endif
				#if defined(POI_PASS_LILFUR)
				float3 newTan = i.tangent.xyz - poiMesh.normals[0] * dot(poiMesh.normals[0], i.tangent.xyz);
				poiMesh.tangent[0] = normalize(newTan);
				poiMesh.binormal[0] = normalize(cross(poiMesh.normals[0], poiMesh.tangent[0])) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = (i.tangent.w * unity_WorldTransformParams.w) > 0.0;
				poiMesh.localPos = mul(unity_WorldToObject, float4(i.worldPos.xyz, 1)).xyz;
				#else
				poiMesh.tangent[0] = i.tangent.xyz;
				poiMesh.binormal[0] = cross(i.normal.xyz, i.tangent.xyz) * (i.tangent.w * unity_WorldTransformParams.w);
				poiMesh.isRightHand = i.tangent.w > 0.0;
				poiMesh.localPos = i.localPos.xyz;
				#endif
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace && 1 >= 0.5)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent[0] *= -1;
					poiMesh.binormal[0] *= -1;
				}
				#endif
				poiCam.eyeViewDir = !IsOrthographicCamera() ? (getCameraPosition(false) - i.worldPos.xyz) : UNITY_MATRIX_I_V._m02_m12_m22;
				poiCam.eyeViewDir = normalize(poiCam.eyeViewDir);
				float3 poiCenterCameraPosition = getCameraPosition();
				float3 poiCenterViewDelta = poiCenterCameraPosition - i.worldPos.xyz;
				float poiCenterViewDistanceSq = dot(poiCenterViewDelta, poiCenterViewDelta);
				float poiCenterViewInvDistance = rsqrt(max(poiCenterViewDistanceSq, 1e-12));
				poiCam.viewDir = !IsOrthographicCamera() ? poiCenterViewDelta * poiCenterViewInvDistance : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				half3 tanToWorld0 = half3(poiMesh.tangent[0].x, poiMesh.binormal[0].x, poiMesh.normals[0].x);
				half3 tanToWorld1 = half3(poiMesh.tangent[0].y, poiMesh.binormal[0].y, poiMesh.normals[0].y);
				half3 tanToWorld2 = half3(poiMesh.tangent[0].z, poiMesh.binormal[0].z, poiMesh.normals[0].z);
				half3 ase_tanViewDir = tanToWorld0 * poiCam.eyeViewDir.x + tanToWorld1 * poiCam.eyeViewDir.y + tanToWorld2 * poiCam.eyeViewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0].xy;
				poiMesh.uv[1] = i.uv[0].zw;
				poiMesh.uv[2] = i.uv[1].xy;
				poiMesh.uv[3] = i.uv[1].zw;
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.uv[0];
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[8] = poiMesh.uv[0];
				poiMesh.dx = ddx(poiMesh.uv[0]);
				poiMesh.dy = ddy(poiMesh.uv[0]);
				poiMesh.uv[0] = applyUVSettings(poiMesh.uv[0], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[1] = applyUVSettings(poiMesh.uv[1], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[2] = applyUVSettings(poiMesh.uv[2], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				poiMesh.uv[3] = applyUVSettings(poiMesh.uv[3], float4(1,1,0,0), float4(0,0,0,0), 0.0, float4(0,0,0,0), 0.0);
				if (0.0 >= 0.5 && !poiMesh.isFrontFace)
				{
					poiMesh.uv[0].x += 1.0;
					poiMesh.uv[1].x += 1.0;
					poiMesh.uv[2].x += 1.0;
					poiMesh.uv[3].x += 1.0;
				}
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh, 1, 0);
				poiMesh.uv[5] = calculateWorldUV(poiMesh);
				poiMesh.uv[8] = calculatelocalUV(poiMesh);
				poiMesh.uv[9] = calculateViewNormalUV(poiMesh, poiCam);
				poiMesh.uv[10] = calculateScreenSpaceUV(i.pos);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				poiMods.globalMask[0] = 1;
				poiMods.globalMask[1] = 1;
				poiMods.globalMask[2] = 1;
				poiMods.globalMask[3] = 1;
				poiMods.globalMask[4] = 1;
				poiMods.globalMask[5] = 1;
				poiMods.globalMask[6] = 1;
				poiMods.globalMask[7] = 1;
				poiMods.globalMask[8] = 1;
				poiMods.globalMask[9] = 1;
				poiMods.globalMask[10] = 1;
				poiMods.globalMask[11] = 1;
				poiMods.globalMask[12] = 1;
				poiMods.globalMask[13] = 1;
				poiMods.globalMask[14] = 1;
				poiMods.globalMask[15] = 1;
				ApplyGlobalMaskModifiers(poiMesh, poiMods, poiCam);
				float2 mainUV = poiUV(poiMesh.uv[0.0].xy, float4(1,1,0,0));
				if (0.0 >= 0.5)
				{
					mainUV = sharpSample(float4(0.0004882813,0.0004882813,2048,2048), mainUV);
				}
				float4 mainTexture = POI2D_SAMPLER_PAN_STOCHASTIC(_MainTex, _MainTex, mainUV, float4(0,0,0,0), 0.0);
				mainTexture.a = max(mainTexture.a, 0.0);
				applyMainNormal(poiMesh);
				poiMesh.normals[0] = normalize(poiMesh.normals[0]);
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent[0] +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal[0] +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				poiMesh.tangent[1] = normalize(cross(poiMesh.binormal[0], -poiMesh.normals[1]));
				poiMesh.binormal[1] = normalize(cross(-poiMesh.normals[1], poiMesh.tangent[0]));
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = poiCenterCameraPosition;
				poiCam.reflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.eyeViewDir, poiMesh.normals[0]);
				poiCam.clipPos = i.pos;
				poiCam.distanceToVert = poiCenterViewDistanceSq * poiCenterViewInvDistance;
				poiCam.posScreenSpace = poiTransformClipSpacetoScreenSpaceFrag(poiCam.clipPos);
				#ifdef UNITY_SINGLE_PASS_STEREO
				poiCam.posScreenSpace.x = poiCam.posScreenSpace.x * 0.5;
				#endif
				poiCam.screenUV = poiCam.posScreenSpace.xy / poiCam.posScreenSpace.w;
				poiCam.posScreenPixels = calcPixelScreenUVs(poiCam.posScreenSpace);
				poiCam.vDotN = abs(dot(poiCam.eyeViewDir, poiMesh.normals[1]));
				poiCam.vDotNCentered = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.worldDirection.xyz = poiMesh.worldPos.xyz - poiCam.worldPos;
				#if defined(POI_PASS_LILFUR)
				poiCam.worldDirection.w = dot(PoiWorldToClipPos(poiMesh.worldPos.xyz), CalculateFrustumCorrection());
				#else
				poiCam.worldDirection.w = i.worldDir;
				#endif
				#if POI_PIPE == POI_URP
				InputData inputData;
				PoiInitStruct(InputData, inputData);
				inputData.positionWS = poiMesh.worldPos;
				inputData.normalWS = poiMesh.normals[1];
				inputData.viewDirectionWS = poiCam.eyeViewDir;
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(i.pos);
				#endif
				calculateGlobalThemes(poiMods);
				if (_UdonForceSceneLighting)
				{
					poiLight.lightingMinLightBrightness = 0;
					poiLight.lightingCapEnabled = 0;
					poiLight.lightingMonochromatic = 0;
				}
				else
				{
					poiLight.lightingMinLightBrightness = _LightingMinLightBrightness;
					poiLight.lightingCapEnabled = _LightingCapEnabled;
					poiLight.lightingMonochromatic = _LightingMonochromatic;
				}
				#if defined(POI_PASS_BASE) || defined(POI_PASS_OUTLINE)
				float3 L0 = float3(0, 0, 0);
				float3 L1r = float3(0, 0, 0);
				float3 L1g = float3(0, 0, 0);
				float3 L1b = float3(0, 0, 0);
				#if POI_PIPE == POI_BIRP
				if (_UdonLightVolumeEnabled && 1.0 >= 0.5)
				{
					LightVolumeSH(poiMesh.worldPos, L0, L1r, L1g, L1b, poiMesh.normals[1] * 0.0, poiMesh.normals[1]);
					float lightVolumeIntensity = saturate(1.0);
					PoiSHAr = lerp(PoiSHAr, float4(L1r, L0.r), lightVolumeIntensity);
					PoiSHAg = lerp(PoiSHAg, float4(L1g, L0.g), lightVolumeIntensity);
					PoiSHAb = lerp(PoiSHAb, float4(L1b, L0.b), lightVolumeIntensity);
					PoiSHBr = lerp(PoiSHBr, 0, lightVolumeIntensity);
					PoiSHBg = lerp(PoiSHBg, 0, lightVolumeIntensity);
					PoiSHBb = lerp(PoiSHBb, 0, lightVolumeIntensity);
					PoiSHC = lerp(PoiSHC, 0, lightVolumeIntensity);
				}
				#endif
				#if POI_PIPE == POI_URP
				#ifdef PROBE_VOLUMES_L1
				if (1.0 >= 0.5)
				{
					APVResources apvRes = FillAPVResources();
					float3 posWS = GetAbsolutePositionWS(poiMesh.worldPos + poiMesh.normals[1] * 0.0);
					posWS = AddNoiseToSamplingPosition(posWS, poiCam.clipPos.xy, poiCam.viewDir);
					APVSample apvSample = SampleAPV(posWS, poiMesh.normals[1], GetMeshRenderingLayer(), poiCam.viewDir);
					if (apvSample.status != APV_SAMPLE_STATUS_INVALID)
					{
						apvSample.Decode();
						PoiSHAr = float4(apvSample.L1_R, apvSample.L0.r);
						PoiSHAg = float4(apvSample.L1_G, apvSample.L0.g);
						PoiSHAb = float4(apvSample.L1_B, apvSample.L0.b);
						#ifdef PROBE_VOLUMES_L2
						PoiSHBr = float4(apvSample.L2_R, apvSample.L0.r);
						PoiSHBg = float4(apvSample.L2_G, apvSample.L0.g);
						PoiSHBb = float4(apvSample.L2_B, apvSample.L0.b);
						PoiSHC = float4(apvSample.L2_C, 0);
						#else
						PoiSHBr = 0;
						PoiSHBg = 0;
						PoiSHBb = 0;
						PoiSHC = 0;
						#endif
					}
				}
				#endif
				#endif
				PoiApplyMinBrightnessToSH(poiLight.lightingMinLightBrightness);
				#endif
				#if defined(PROP_LIGHTINGDETAILSHADOWMAPS)
				half4 DetailShadows = POI2D_SAMPLER_PAN(_LightingDetailShadowMaps, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0));
				half poiDetailShadowAdditional = lerp(1, DetailShadows.r, 1.0) * lerp(1, DetailShadows.g, 0.0) * lerp(1, DetailShadows.b, 0.0) * lerp(1, DetailShadows.a, 0.0);
				half poiDetailShadowMain = lerp(1, DetailShadows.r, 1.0) * lerp(1, DetailShadows.g, 0.0) * lerp(1, DetailShadows.b, 0.0) * lerp(1, DetailShadows.a, 0.0);
				#else
				half poiDetailShadowAdditional = 1;
				half poiDetailShadowMain = 1;
				#endif
				if (0.0 > 0)
				{
					poiDetailShadowAdditional = maskBlend(poiDetailShadowAdditional, poiMods.globalMask[0.0 - 1], 2.0);
					poiDetailShadowMain = maskBlend(poiDetailShadowMain, poiMods.globalMask[0.0 - 1], 2.0);
				}
				#ifndef POI_PASS_ADD
				poiLight.detailShadow = poiDetailShadowMain;
				#else
				poiLight.detailShadow = poiDetailShadowAdditional;
				#endif
				#if defined(PROP_LIGHTINGSHADOWMASKS)
				half4 ShadowMasks = POI2D_SAMPLER_PAN(_LightingShadowMasks, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.toonShadowMask = lerp(1, ShadowMasks.r, 1.0) * lerp(1, ShadowMasks.g, 0.0) * lerp(1, ShadowMasks.b, 0.0) * lerp(1, ShadowMasks.a, 0.0);
				#else
				poiLight.toonShadowMask = 1;
				#endif
				if (0.0 > 0)
				{
					poiLight.toonShadowMask = maskBlend(poiLight.toonShadowMask.r, poiMods.globalMask[0.0 - 1], 2.0);
				}
				#if defined(PROP_LIGHTINGAOMAPS)
				float4 AOMaps = POI2D_SAMPLER_PAN(_LightingAOMaps, _MainTex, poiUV(poiMesh.uv[0.0], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.occlusion = min(min(min(lerp(1, AOMaps.r, 1.0), lerp(1, AOMaps.g, 0.0)), lerp(1, AOMaps.b, 0.0)), lerp(1, AOMaps.a, 0.0));
				#else
				poiLight.occlusion = 1;
				#endif
				if (0.0 > 0)
				{
					poiLight.occlusion = maskBlend(poiLight.occlusion, poiMods.globalMask[0.0 - 1], 2.0);
				}
				#if POI_PIPE == POI_URP
				#if UNITY_VERSION >= 202100
				poiLight.aoFactor = CreateAmbientOcclusionFactor(poiCam.screenUV, poiLight.occlusion);
				#else
				poiLight.aoFactor = GetScreenSpaceAmbientOcclusion(poiCam.screenUV);
				poiLight.aoFactor.indirectAmbientOcclusion = min(poiLight.aoFactor.indirectAmbientOcclusion, poiLight.occlusion);
				#endif
				#endif
				Light mainLight;
				PoiInitStruct(Light, mainLight);
				#if POI_PIPE == POI_BIRP
				mainLight.direction = _WorldSpaceLightPos0.xyz;
				mainLight.color = _LightColor0.rgb;
				#elif POI_PIPE == POI_URP
				half4 poiBakedShadowMask = PoiCalculateShadowMask(i.lightmapUV.xy);
				mainLight = PoiGetMainLight(TransformWorldToShadowCoord(poiMesh.worldPos), poiMesh.worldPos, poiBakedShadowMask, poiLight.aoFactor);
				#ifdef _LIGHT_LAYERS
				uint poiMeshRenderingLayers = GetMeshRenderingLayer();
				if (!IsMatchingLightLayer(mainLight.layerMask, poiMeshRenderingLayers))
				mainLight.color = 0;
				#endif
				BRDFData brdfData;
				InitializeBRDFData(1, 0.0, 0.0, 0.0, poiFragData.alpha, brdfData);
				brdfData.diffuse = 1.0;
				BRDFData brdfDataClearCoat;
				InitializeBRDFDataClearCoat(0.0, 0.5, brdfData, brdfDataClearCoat);
				poiLight.brdfData = brdfData;
				poiLight.brdfDataClearCoat = brdfDataClearCoat;
				#endif
				#if POI_PIPE == POI_BIRP && defined(POI_PASS_ADD) && (defined(POINT) || defined(SPOT) || defined(POINT_COOKIE))
				poiLight.lightType = POI_POINT_SPOT;
				#else
				poiLight.lightType = POI_DIRECTIONAL;
				#endif
				poiLight.unityLight = mainLight;
				PoiShadingParams poiShadingParams;
				PoiInitStruct(PoiShadingParams, poiShadingParams);
				PoiLightDataSetup(poiLight, poiFragData, poiMesh, poiCam, poiMods, i, poiShadingParams);
				if (poiShadingParams.exitCode != 0) return POI_SAFE_RGB1;
				#if POI_PIPE == POI_BIRP
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				if (0.0 >= 0.5) return poiShadingParams.debugColor;
				#endif
				#elif POI_PIPE == POI_URP
				if (0.0 >= 0.5) poiFragData.finalColor = poiShadingParams.debugColor;
				#endif
				applyMainColor(poiFragData, poiMesh, poiCam, poiMods, mainTexture);
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				#ifndef POI_PASS_OUTLINE
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				#endif
				bool skipShading = false;
				#if defined(POI_PASS_OUTLINE)
				if (POI_OUTLINE_VALUE(1.0, poiMesh.outlineLayer) < 0.5) skipShading = true;
				#endif
				#if defined(VIGNETTE_MASKED) && !defined(POI_PASS_META)
				if (!skipShading)
				{
					PoiCalculateShading(poiLight, poiFragData, poiMods, poiMesh, poiCam);
					PoiLightingNoLoopModules(poiLight, poiFragData, poiMesh, poiCam, poiMods);
					PoiLightingDependantModules(poiLight, poiFragData, mochieBRDFData, poiMesh, poiCam, poiMods);
					#if defined(_ADDITIONAL_LIGHTS)
					#if USE_CLUSTER_LIGHT_LOOP
					uint poiForwardPlusLightCount = 0;
					UNITY_LOOP for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, POI_MAX_VISIBLE_LIGHTS); lightIndex++)
					{
						CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK
						++poiForwardPlusLightCount;
						Light additionalLight = PoiGetAdditionalLight(lightIndex, inputData, poiBakedShadowMask, poiLight.aoFactor);
						#ifdef _LIGHT_LAYERS
						if (!IsMatchingLightLayer(additionalLight.layerMask, poiMeshRenderingLayers)) continue;
						#endif
						PoiLight poiLightAdd;
						PoiAdditionalLightCopy(poiLightAdd, poiLight, additionalLight, POI_DIRECTIONAL, poiDetailShadowAdditional);
						poiShadingParams.lightIndex = lightIndex;
						PoiLightDataSetupAdd(poiLightAdd, poiFragData, poiMesh, poiCam, poiMods, i, poiShadingParams);
						poiLightOut.totalLightMap = saturate(poiLightOut.totalLightMap + poiLightAdd.lightMap * poiLightAdd.attenDistance);
						if (poiShadingParams.exitCode != 0) continue;
						PoiCalculateShading(poiLightAdd, poiFragData, poiMods, poiMesh, poiCam);
						poiLightOut.totalRampedLightMap = poiLightOut.totalRampedLightMap + poiLightAdd.rampedLightMap - poiLightOut.totalRampedLightMap * poiLightAdd.rampedLightMap;
						PoiLightingDependantModules(poiLightAdd, poiFragData, mochieBRDFData, poiMesh, poiCam, poiMods);
						poiLightOut.totalLighting += poiLightAdd.finalLighting;
						poiLightOut.totalLightAdd += poiLightAdd.finalLightAdd;
						if (0.0 >= 0.5) poiFragData.finalColor += poiShadingParams.debugColor;
					}
					#endif
					uint pixelLightCount = GetAdditionalLightsCount();
					LIGHT_LOOP_BEGIN(pixelLightCount)
					#if USE_CLUSTER_LIGHT_LOOP
					if (poiForwardPlusLightCount >= POI_MAX_VISIBLE_LIGHTS) break;
					++poiForwardPlusLightCount;
					#endif
					Light additionalLight = PoiGetAdditionalLight(lightIndex, inputData, poiBakedShadowMask, poiLight.aoFactor);
					#ifdef _LIGHT_LAYERS
					if (!IsMatchingLightLayer(additionalLight.layerMask, poiMeshRenderingLayers)) continue;
					#endif
					PoiLight poiLightAdd;
					PoiAdditionalLightCopy(poiLightAdd, poiLight, additionalLight, POI_POINT_SPOT, poiDetailShadowAdditional);
					poiShadingParams.lightIndex = lightIndex;
					PoiLightDataSetupAdd(poiLightAdd, poiFragData, poiMesh, poiCam, poiMods, i, poiShadingParams);
					poiLightOut.totalLightMap = saturate(poiLightOut.totalLightMap + poiLightAdd.lightMap * poiLightAdd.attenDistance);
					if (poiShadingParams.exitCode != 0) continue;
					PoiCalculateShading(poiLightAdd, poiFragData, poiMods, poiMesh, poiCam);
					poiLightOut.totalRampedLightMap = poiLightOut.totalRampedLightMap + poiLightAdd.rampedLightMap - poiLightOut.totalRampedLightMap * poiLightAdd.rampedLightMap;
					PoiLightingDependantModules(poiLightAdd, poiFragData, mochieBRDFData, poiMesh, poiCam, poiMods);
					poiLightOut.totalLighting += poiLightAdd.finalLighting;
					poiLightOut.totalLightAdd += poiLightAdd.finalLightAdd;
					if (0.0 >= 0.5) poiFragData.finalColor += poiShadingParams.debugColor;
					LIGHT_LOOP_END
					#endif
					if (0.0 >= 0.5) return float4(poiFragData.finalColor, 1.0);
				}
				else
				{
					poiLight.finalLighting = 1;
					poiLight.rampedLightMap = 1;
					poiLight.lightMap = 1;
					PoiLightingNoLoopModules(poiLight, poiFragData, poiMesh, poiCam, poiMods);
				}
				#else
				poiLight.finalLighting = 1;
				poiLight.rampedLightMap = poiEdgeNonLinear(poiLight.nDotL, 0.1, .1);
				poiLight.lightMap = poiLight.nDotLNormalized;
				PoiLightingNoLoopModules(poiLight, poiFragData, poiMesh, poiCam, poiMods);
				#endif
				poiLight.directLuminance = dot(poiLight.directColor, float3(0.299, 0.587, 0.114));
				poiLight.indirectLuminance = dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114));
				poiLight.finalLuminance = dot(poiLight.finalLighting, float3(0.299, 0.587, 0.114));
				#ifdef POI_GRABPASS
				poiLight.finalLighting = max(poiLight.finalLighting, 0.0001);
				#endif
				#if POI_PIPE == POI_URP
				poiLight.lightMap = saturate(poiLightOut.totalLightMap + poiLight.lightMap);
				poiLight.rampedLightMap = poiLight.rampedLightMap + poiLightOut.totalRampedLightMap - poiLight.rampedLightMap * poiLightOut.totalRampedLightMap;
				#endif
				
				if (0.0 >= 0.5)
				{
					poiFragData.baseColor *= saturate(poiFragData.alpha);
				}
				poiFragData.finalColor = poiFragData.baseColor;
				#if POI_PIPE == POI_URP
				poiLight.finalLighting += poiLightOut.totalLighting;
				#endif
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				#if POI_PIPE == POI_URP
				poiLight.finalLightAdd += poiLightOut.totalLightAdd;
				#endif
				poiFragData.finalColor += poiLight.finalLightAdd;
				#ifndef POI_PASS_LILFUR
				#if !defined(POI_PASS_BASETWO) && !defined(POI_PASS_ADDTWO)
				poiFragData.alpha = 1.0 ? 1 : poiFragData.alpha;
				#else
				poiFragData.alpha = _AlphaForceOpaque2 ? 1 : poiFragData.alpha;
				#endif
				#endif
				if (0.0 == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				clip(poiFragData.alpha - 0.5);
				#ifdef POI_PASS_META
				UnityMetaInput meta;
				PoiInitStruct(UnityMetaInput, meta);
				meta.Albedo = saturate(poiFragData.finalColor.rgb);
				meta.Emission = poiFragData.emission * 1.0 * poiMods.globalEmission;
				#if POI_PIPE == POI_BIRP
				meta.SpecularColor = poiLight.finalLightAdd;
				#endif
				#ifdef EDITOR_VISUALIZATION
				meta.VizUV = i.VizUV;
				meta.LightCoord = i.LightCoord;
				#endif
				return UnityMetaFragment(meta) + POI_SAFE_RGB0;
				#endif
				poiFragData.finalColor += poiFragData.emission * poiMods.globalEmission;
				applyUnityFog(poiFragData.finalColor, i.fogData, 0.0);
				return float4(poiFragData.finalColor, poiFragData.alpha) + POI_SAFE_RGB0;
			}
			ENDHLSL
		}
	}
	CustomEditor "Thry.ShaderEditor"
}
