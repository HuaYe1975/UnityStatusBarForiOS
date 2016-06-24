using UnityEngine;
using System.Collections;

public class SampleManager : MonoBehaviour {

	private bool statusBarHide = true;
	private int style = 0;

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
	}

	public void OnClickStyle()
	{
		style += 1;
		if (style > 3) {
			style = 0;
		}
		StatusBarManager.BarStyle (style);
	}
}
