using UnityEngine;

[HelpURL("https://geom.io/bakery/wiki/index.php?title=Manual#Bakery_Named_Section_Selector")]
[ExecuteInEditMode]
public class BakeryNamedSectionSelector : MonoBehaviour
{
#if UNITY_EDITOR
	public static bool any = false;
	void OnEnable()
	{
		any = true;
	}
#endif

	public Object sectionAsset;
}

