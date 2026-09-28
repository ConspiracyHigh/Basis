using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class BakeryNamedSection : ScriptableObject
{
	[SerializeField]
	public float texelsPerUnitScale = 1;
}

