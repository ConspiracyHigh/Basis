using UnityEditor;
using UnityEngine;

namespace Thry.ThryEditor.Drawers
{
	// [ThryDescription]        _prop ("Wrapped paragraph text", Int) = 0   - word-wrapped paragraph at the default font size
	// [ThryDescription(size)]  _prop ("Wrapped paragraph text", Int) = 0   - word-wrapped paragraph at the given font size
	//
	// A Drawer attached to a real material property. The paragraph text is the property's display name and
	// is word-wrapped to the width of the section. Because it is a real property it flows through the normal
	// ShaderPart.Draw pipeline, so - exactly like a [Helpbox] - it supports the usual property options, e.g.
	// conditional visibility and extra spacing above/below:
	//   [ThryDescription] _prop ("Some longer explanation...--{condition_showS:(_SomeProp==2)}", Int) = 0
	//   [ThryDescription] _prop ("Text with a gap below it--{margin_bottom:8}", Int) = 0
	public class ThryDescriptionDrawer : MaterialPropertyDrawer
	{
		// Fraction of the normal label opacity used for the paragraph, so it reads as secondary text
		// and separates from headings / property fields around it. 1 = same as normal text.
		const float DIM_ALPHA = 0.6f;

		readonly int _size;
		GUIStyle _style;

		public ThryDescriptionDrawer() : this(EditorStyles.standardFont.fontSize) { }

		public ThryDescriptionDrawer(float size)
		{
			this._size = (int)size;
		}

		public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
		{
			// Height is dynamic (depends on how the text wraps), so reserve nothing here and allocate the
			// real layout space in OnGUI via EditorGUILayout.GetControlRect - the same approach as [Helpbox].
			ShaderProperty.RegisterDrawer(this);
			return 0;
		}

		public override void OnGUI(Rect position, MaterialProperty prop, GUIContent label, MaterialEditor editor)
		{
			// Built lazily so Unity doesn't warn about creating GUIStyles outside of a GUI callback
			if (_style == null)
			{
				_style = new GUIStyle(EditorStyles.label);
				_style.wordWrap = true;
				_style.richText = true;
				_style.alignment = TextAnchor.UpperLeft;
				_style.fontSize = this._size;
			}

			// Recomputed each draw so it tracks the current editor skin (and the baseline label color
			// restored by ShaderPart's animated-label tinting). Only the alpha is lowered, keeping the
			// hue correct in both the light and dark themes; rich-text <color> tags still override it.
			Color baseColor = EditorStyles.label.normal.textColor;
			Color dimColor = new Color(baseColor.r, baseColor.g, baseColor.b, baseColor.a * DIM_ALPHA);
			// Apply to every state so the dim stays constant - otherwise IMGUI swaps to the label's
			// (full-opacity) hover text color when the cursor is over the paragraph.
			_style.normal.textColor = dimColor;
			_style.hover.textColor = dimColor;
			_style.active.textColor = dimColor;
			_style.focused.textColor = dimColor;
			_style.onNormal.textColor = dimColor;
			_style.onHover.textColor = dimColor;
			_style.onActive.textColor = dimColor;
			_style.onFocused.textColor = dimColor;

			PropertyOptions options = ShaderEditor.Active?.CurrentProperty?.Options;
			if (options != null && options.margin_top > 0)
				GUILayout.Space(options.margin_top);

			int xOffset = ShaderEditor.Active?.CurrentProperty?.XOffset ?? 0;
			float leftX = GUILib.GetPropertyX(xOffset);

			// Use one width for both the height calculation and the draw rect so the number of wrapped lines
			// we measure matches exactly what gets rendered (avoids clipping the last line).
			float width = EditorGUIUtility.currentViewWidth - leftX - GUILib.SectionContentRightPadding - 1;
			if (width < 1) width = 1;

			GUIContent content = new GUIContent(label.text);
			float height = Mathf.Max(_style.CalcHeight(content, width), _size + 4);

			Rect r = EditorGUILayout.GetControlRect(false, height);
			r.x = leftX;
			r.width = width;
			GUI.Label(r, content, _style);

			if (options != null && options.margin_bottom > 0)
				GUILayout.Space(options.margin_bottom);
		}
	}
}
