using UnityEditor;
using Thry.ThryEditor.DataStructs;
using Thry.ThryEditor.Helpers;

namespace Thry.ThryEditor.Decorators
{
    // Shared plumbing for the stencil decorators. They take the same ten property names and
    // differ only in the view they host, so the constructor ladder lives here.
    //
    // Subclass arities are 0 / 1 / 10 on purpose. Unity binds a shader attribute to a constructor
    // by argument count and every parameter is a string, so two overloads with adjacent counts
    // would let a miscounted attribute bind silently to the wrong one and shift the meaning of
    // every name.
    public abstract class StencilDecoratorBase : MaterialPropertyDrawer
    {
        protected readonly StencilCalculatorModel Model;

        protected StencilDecoratorBase(StencilConfig config)
        {
            Model = new StencilCalculatorModel(config);
        }

        // Call from GetPropertyHeight, never OnGUI: ShaderProperty's registration probe
        // (ShaderProperty.InitializeDrawers) only ever calls GetPropertyHeight.
        // These properties drive an editor-side simulation, so animating them creates clip
        // entries that do nothing.
        protected void RegisterWithHostProperty()
        {
            ShaderProperty.RegisterDecorator(this);
            ShaderProperty.DisallowAnimation();
        }
    }
}
