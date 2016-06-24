using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;

public static class StatusBarManager {

	#if UNITY_IPHONE
	[DllImport("__Internal")]
	static extern void _ShowStatusBar(bool isShow);
	[DllImport("__Internal")]
	static extern void _SetStatusBarStyle (int style);
	[DllImport("__Internal")]
	static extern void _SetStatusBarAnimation (int anim);
	#endif

	public static void Show(bool isShow)
	{
		#if UNITY_IPHONE && !UNITY_EDITOR
		_ShowStatusBar(isShow);
		#else
		#endif
	}

	// style:
	// 1:UIStatusBarStyleLightContent
	// 2:UIStatusBarStyleBlackTranslucent
	// 3:UIStatusBarStyleBlackOpaque
	// else:UIStatusBarStyleDefault
	public static void BarStyle(int style)
	{
		#if UNITY_IPHONE && !UNITY_EDITOR
		_SetStatusBarStyle(style);
		#else
		#endif
	}

	// anim:
	// 1:UIStatusBarAnimationFade
	// 2:UIStatusBarAnimationSlide
	// else:UIStatusBarAnimationNone
	public static void BarAnim(int anim)
	{
		#if UNITY_IPHONE && !UNITY_EDITOR
		_SetStatusBarAnimation(anim);
		#else
		#endif
	}
}
