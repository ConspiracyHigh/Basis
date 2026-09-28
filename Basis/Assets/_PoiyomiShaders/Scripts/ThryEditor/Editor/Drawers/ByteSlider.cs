using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;

namespace Thry.ThryEditor.Drawers
{
    public class ByteSliderDrawer : MaterialPropertyDrawer
    {
        private const float ExpandedSpacing = 4f;
        private const float ErrorLines = 2.5f;

        private readonly ByteBitFieldDrawer _byteDrawer = new ByteBitFieldDrawer();
        private bool _isExpanded;

        public override void OnGUI(Rect position, MaterialProperty prop, GUIContent label, MaterialEditor editor)
        {
            if (prop.GetPropertyType() != ShaderPropertyType.Range)
            {
                EditorGUI.HelpBox(position, "[ByteSlider] requires a Range property, e.g. Range(0, 255)", MessageType.Warning);
                return;
            }

            GUILib.SliderFoldout(
                position,
                prop,
                label,
                ref _isExpanded,
                _byteDrawer.GetHeight() + ExpandedSpacing,
                rect => _byteDrawer.OnGUI(rect, prop, GUIContent.none, editor));
        }

        // Takes prop so callers that host this drawer themselves reserve the taller rect the
        // non-Range warning needs, instead of clipping it to a single line.
        public float GetHeight(MaterialProperty prop)
        {
            if (prop.GetPropertyType() != ShaderPropertyType.Range)
                return EditorGUIUtility.singleLineHeight * ErrorLines;
            return GUILib.GetSliderFoldoutHeight(_isExpanded, _byteDrawer.GetHeight() + ExpandedSpacing);
        }

        public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
        {
            if (prop.GetPropertyType() == ShaderPropertyType.Range)
                ShaderProperty.RegisterDrawer(this);
            return GetHeight(prop);
        }
    }
}
