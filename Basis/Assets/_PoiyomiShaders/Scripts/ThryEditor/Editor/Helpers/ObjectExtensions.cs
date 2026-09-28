namespace Thry.ThryEditor.Helpers
{
    public static class ObjectExtensions
    {
        /// <summary>
        /// Returns a stable per-session integer id for a Unity object, using the non-obsolete
        /// EntityId API on Unity 6.5+ and falling back to GetInstanceID() on older versions.
        /// </summary>
        public static int GetObjectId(this UnityEngine.Object obj)
        {
            if (obj == null) return 0;
#if UNITY_6000_5_OR_NEWER
            return obj.GetEntityId().GetHashCode();
#else
            return obj.GetInstanceID();
#endif
        }
    }
}
