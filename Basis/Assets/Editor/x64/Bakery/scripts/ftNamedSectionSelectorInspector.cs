
using UnityEditor;
using UnityEngine;
using System;
using System.IO;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine.SceneManagement;
using UnityEditor.SceneManagement;

[CustomEditor(typeof(BakeryNamedSectionSelector))]
[CanEditMultipleObjects]
public class ftNamedSectionSelectorInspector : UnityEditor.Editor
{
    SerializedProperty ftraceAsset;

    string newName = null;
    float newScale = 1;

    void OnEnable()
    {
        ftraceAsset = serializedObject.FindProperty("sectionAsset");
    }

    void ForceSavePrefabOverride(UnityEngine.Object[] targets)
    {
#if UNITY_2018_3_OR_NEWER
        foreach(ftNamedSectionSelectorInspector obj in targets)
        {
            PrefabUtility.RecordPrefabInstancePropertyModifications(obj);
            EditorUtility.SetDirty(obj);
        }
#endif
    }

    public override void OnInspectorGUI() {
        serializedObject.Update();

        EditorGUILayout.LabelField("Everything under the Named Section and not in a LMGroup will use separate atlases.");

        //if (!ftraceAsset.hasMultipleDifferentValues)
        {
            EditorGUI.BeginChangeCheck();

            EditorGUI.showMixedValue = ftraceAsset.hasMultipleDifferentValues;
            var selectedSection = EditorGUILayout.ObjectField(new GUIContent("Named section", "Select named section asset"),
                    ftraceAsset.objectReferenceValue, typeof(BakeryNamedSection), false);
            var changed = EditorGUI.EndChangeCheck();

            if (ftraceAsset.hasMultipleDifferentValues) EditorGUILayout.LabelField("(Different values in selection)");

            if (changed)
            {
                foreach(BakeryNamedSectionSelector obj in targets)
                {
                    Undo.RecordObject(obj, "Change Named Section");
                    obj.sectionAsset = selectedSection;
                    ForceSavePrefabOverride(targets);
                }
            }

            if (ftraceAsset.objectReferenceValue != null)
            {
                var section = ftraceAsset.objectReferenceValue as BakeryNamedSection;

                var modeString = "Texels per unit scale: " + section.texelsPerUnitScale;
                EditorGUILayout.LabelField(modeString);
            }
            else
            {
                EditorGUILayout.Space();
                EditorGUILayout.LabelField("Create new named section:");
                if (newName == null) newName = "LMSection_" + target.name;
                newName = EditorGUILayout.TextField("Name", newName);
                newScale = EditorGUILayout.FloatField(new GUIContent("Texels per unit scale", "Multiplies Texels Per Unit by this value on anything affected by this section."), newScale);
                if (GUILayout.Button("Create new"))
                {
                    BakeryNamedSection newSection = ScriptableObject.CreateInstance<BakeryNamedSection>();
                    newSection.texelsPerUnitScale = newScale;

                    string fname;
                    var activeScene = SceneManager.GetActiveScene();
                    if (activeScene.path.Length > 0)
                    {
                        fname = Path.GetDirectoryName(activeScene.path) + "/" + newName;
                    }
                    else
                    {
                        fname = "Assets/" + newName;
                    }

                    AssetDatabase.CreateAsset(newSection, fname + ".asset");
                    AssetDatabase.SaveAssets();
                    ftraceAsset.objectReferenceValue = newSection;
                }
            }
        }

        serializedObject.ApplyModifiedProperties();
    }
}

