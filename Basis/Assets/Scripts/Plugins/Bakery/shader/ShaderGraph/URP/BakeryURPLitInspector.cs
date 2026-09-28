#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;

public class BakeryURPLitInspector : ShaderGUI
{
    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
    {
        EditorGUI.BeginChangeCheck();

        base.OnGUI(materialEditor, properties);

        if (EditorGUI.EndChangeCheck())
        {
            foreach (Material mat in materialEditor.targets)
            {
                ApplyExtraChanges(mat);
            }
        }
    }

    void ApplyExtraChanges(Material mat)
    {
    	// Force _SPECULARHIGHLIGHTS_OFF if volume shadowmask mode to prevent weird faint light from appearing
		if (mat.GetFloat("VOLUME_SHADOWMASK") > 0)
		{
			mat.EnableKeyword("_SPECULARHIGHLIGHTS_OFF");
		}
		else
		{
			mat.DisableKeyword("_SPECULARHIGHLIGHTS_OFF");
		}
    }
}
#endif