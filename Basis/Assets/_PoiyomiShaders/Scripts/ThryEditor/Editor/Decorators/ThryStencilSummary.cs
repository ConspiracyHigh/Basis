using UnityEditor;
using UnityEngine;
using Thry.ThryEditor.DataStructs;
using Thry.ThryEditor.Helpers;

namespace Thry.ThryEditor.Decorators
{
    public class ThryStencilSummaryDecorator : StencilDecoratorBase
    {
        private readonly StencilSummaryView _view;

        public ThryStencilSummaryDecorator() : this(StencilConfig.WithDefaults())
        {
        }

        public ThryStencilSummaryDecorator(string variant)
            : this(StencilConfig.WithVariant(variant, "ThryStencilSummary"))
        {
        }

        // Every property name spelled out, nothing defaulted. See StencilDecoratorBase for why this
        // jumps from one argument to ten.
        public ThryStencilSummaryDecorator(string bufferValueProp, string stencilRefProp, string readMaskProp,
            string writeMaskProp, string compareFunctionProp, string passOpProp, string failOpProp,
            string zFailOpProp, string checkResultProp, string isOccludedProp)
            : this(StencilConfig.WithDefaults(bufferValueProp, stencilRefProp, readMaskProp, writeMaskProp,
                compareFunctionProp, passOpProp, failOpProp, zFailOpProp, checkResultProp, isOccludedProp))
        {
        }

        private ThryStencilSummaryDecorator(StencilConfig config) : base(config)
        {
            _view = new StencilSummaryView(Model);
        }

        public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
        {
            if (editor == null) return 0;
            RegisterWithHostProperty();
            // Reserves nothing because Draw claims its own rect once the real width is known,
            // following the [Helpbox] / [LocalMessage] idiom.
            return 0;
        }

        public override void OnGUI(Rect position, MaterialProperty prop, string label, MaterialEditor editor)
        {
            if (ShaderEditor.Active == null) return;
            // These controls edit secondary properties, so they must not trip the host's change check.
            bool changedBeforeDraw = GUI.changed;
            _view.Draw();
            GUI.changed = changedBeforeDraw;
        }
    }
}
