using UnityEditor;
using UnityEngine;

namespace Thry.ThryEditor.Drawers
{
	// [ThryHeader]        _prop ("Heading Text", Int) = 0   - bold heading at the editor's default font size
	// [ThryHeader(size)]  _prop ("Heading Text", Int) = 0   - bold heading at the given font size
	//
	// Unlike [ThryHeaderLabel(text,size)] - a decorator drawn on top of another property - this is a
	// Drawer attached to a real material property. The heading text is the property's display name.
	// Because it is a real property it flows through the normal ShaderPart.Draw pipeline, so it supports
	// the usual property options. In particular it can be shown conditionally, exactly like a [Helpbox],
	// and take extra spacing above/below:
	//   [ThryHeader] _prop ("Heading--{condition_showS:(_SomeProp==2)}", Int) = 0
	//   [ThryHeader] _prop ("Heading with a gap above it--{margin_top:8}", Int) = 0
	public class ThryHeaderDrawer : MaterialPropertyDrawer
	{
		readonly int _size;
		GUIStyle _style;

		public ThryHeaderDrawer() : this(EditorStyles.standardFont.fontSize) { }

		public ThryHeaderDrawer(float size)
		{
			this._size = (int)size;
		}

		public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
		{
			// Reserve nothing here; the label and its margins are allocated via layout in OnGUI (like
			// [Helpbox] / [ThryDescription]) so margin_top / margin_bottom can add space around it.
			ShaderProperty.RegisterDrawer(this);
			return 0;
		}

		public override void OnGUI(Rect position, MaterialProperty prop, GUIContent label, MaterialEditor editor)
		{
			// Built lazily so Unity doesn't warn about creating GUIStyles outside of a GUI callback
			if (_style == null)
			{
				_style = new GUIStyle(EditorStyles.boldLabel);
				_style.richText = true;
				_style.fontSize = this._size;
			}

			PropertyOptions options = ShaderEditor.Active?.CurrentProperty?.Options;
			if (options != null && options.margin_top > 0)
				GUILayout.Space(options.margin_top);

			int xOffset = ShaderEditor.Active?.CurrentProperty?.XOffset ?? 0;
			float leftX = GUILib.GetPropertyX(xOffset);
			Rect r = EditorGUILayout.GetControlRect(false, _size + 6);
			float rightEdge = r.x + r.width - GUILib.SectionContentRightPadding - 1;
			r.x = leftX;
			r.width = Mathf.Max(1, rightEdge - leftX);
			GUI.Label(r, label.text, _style);

			if (options != null && options.margin_bottom > 0)
				GUILayout.Space(options.margin_bottom);
		}
	}
}
