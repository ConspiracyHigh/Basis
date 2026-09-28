#pragma warning disable 0660
#pragma warning disable 0661

using UnityEditor;
using UnityEngine;
using System;
using System.IO;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine.Rendering;

public class ftInstanceID
{
	public static ftInstanceID empty = new ftInstanceID(true);

    bool used;

#if UNITY_6000_5_OR_NEWER

    EntityId id = EntityId.None;
	public static ftInstanceID GetID(UnityEngine.Object obj)
	{
		var t = new ftInstanceID();
		t.id = obj.GetEntityId();
        t.used = true;
		return t;
	}

#else

    int id = -1;
	public static ftInstanceID GetID(UnityEngine.Object obj)
	{
		var t = new ftInstanceID();
		t.id = obj.GetInstanceID();
        t.used = true;
		return t;
	}

#endif

    public ftInstanceID(bool _used = false)
    {
        used = _used;
    }

    public bool NonEmpty()
    {
        return used;
    }

    public static bool operator ==(ftInstanceID left, ftInstanceID right)
    {
    	return left.id == right.id;
    }

    public static bool operator !=(ftInstanceID left, ftInstanceID right)
    {
    	return left.id != right.id;
    }

}



