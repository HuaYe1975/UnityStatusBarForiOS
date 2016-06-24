# UnityStatusBarForiOS
Unity plugin for ios to show/hide status bar 

## How to use it

- Show/Hide Status bar

```
		StatusBarManager.Show (isShow);
```

- Set Status bar's style

```
		// style:
		// 1:UIStatusBarStyleLightContent
		// 2:UIStatusBarStyleBlackTranslucent
		// 3:UIStatusBarStyleBlackOpaque
		// else:UIStatusBarStyleDefault
		StatusBarManager.BarStyle (style);
```

- Set Status bar's Show/Hide animation

```
		// anim:
		// 1:UIStatusBarAnimationFade
		// 2:UIStatusBarAnimationSlide
		// else:UIStatusBarAnimationNone
		StatusBarManager.BarAnim (anim);
```
