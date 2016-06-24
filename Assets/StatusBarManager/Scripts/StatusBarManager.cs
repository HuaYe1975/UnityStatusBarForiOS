using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;

public static class StatusBarManager {

	#if UNITY_IPHONE
	[DllImport("__Internal")]
	static extern void _ShowStatusBar(bool isShow);
	#endif

	public static void Show(bool isShow)
	{
		#if UNITY_IPHONE && !UNITY_EDITOR
		_ShowStatusBar(isShow);
		#else
		#endif
	}

}
