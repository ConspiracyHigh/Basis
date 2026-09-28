using UnityEditor;
using UnityEngine;
using Thry.ThryEditor.DataStructs;
using Thry.ThryEditor.Helpers;

namespace Thry.ThryEditor.Decorators
{
    public class ThryStencilCalculatorDecorator : StencilDecoratorBase
    {
        private readonly StencilCalculatorView _view;

        public ThryStencilCalculatorDecorator() : this(StencilConfig.WithDefaults())
        {
        }

        public ThryStencilCalculatorDecorator(string variant)
            : this(StencilConfig.WithVariant(variant, "ThryStencilCalculator"))
        {
        }

        // Every property name spelled out, nothing defaulted. See StencilDecoratorBase for why this
        // jumps from one argument to ten.
        public ThryStencilCalculatorDecorator(string bufferValueProp, string stencilRefProp, string readMaskProp,
            string writeMaskProp, string compareFunctionProp, string passOpProp, string failOpProp,
            string zFailOpProp, string checkResultProp, string isOccludedProp)
            : this(StencilConfig.WithDefaults(bufferValueProp, stencilRefProp, readMaskProp, writeMaskProp,
                compareFunctionProp, passOpProp, failOpProp, zFailOpProp, checkResultProp, isOccludedProp))
        {
        }

        private ThryStencilCalculatorDecorator(StencilConfig config) : base(config)
        {
            _view = new StencilCalculatorView(config.StencilBufferValuePropertyName, Model);
        }

        public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
        {
            if (editor == null) return 0;
            RegisterWithHostProperty();
            return _view.GetCalculatorHeight();
        }

        public override void OnGUI(Rect position, MaterialProperty prop, string label, MaterialEditor editor)
        {
            if (ShaderEditor.Active == null) return;
            // These controls edit secondary properties, so they must not trip the host's change check.
            bool changedBeforeDraw = GUI.changed;
            _view.SetEditor(editor);
            _view.Draw(EditorGUI.IndentedRect(position));
            GUI.changed = changedBeforeDraw;
        }
    }
}
