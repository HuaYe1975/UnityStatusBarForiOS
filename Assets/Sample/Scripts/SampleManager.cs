using UnityEngine;
using System.Collections;

public class SampleManager : MonoBehaviour {

	private bool statusBarHide = true;
	private int style = 0;
	private int anim = 0;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void OnClickSwitch()
	{
		statusBarHide = !statusBarHide;
		StatusBarManager.Show (!statusBarHide);
		Debug.Log ("Show/hide changed: " + statusBarHide);
	}

	public void OnClickStyle()
	{
		style += 1;
		if (style > 3) {
			style = 0;
		}
		StatusBarManager.BarStyle (style);
		Debug.Log ("Style changed: " + style);
	}

	public void OnClickAnim()
	{
		anim += 1;
		if (anim > 2) {
			anim = 0;
		}
		StatusBarManager.BarAnim (anim);
		Debug.Log ("Animation changed: " + anim);
	}
}
