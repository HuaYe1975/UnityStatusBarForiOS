using UnityEngine;
using System.Collections;

public class SampleManager : MonoBehaviour {

	private bool statusBarHide = true;

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
}
