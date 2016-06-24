//
//  StatusBariOS.mm
//  Unity plugin for Firebase Remote notifications.
//
//  Created by KA YOU on 2016/06/23.
//  Copyright (c) 2016年 Romeo Hua. All rights reserved.
//
#if ! __has_feature(objc_arc)
#error This file must be compiled with ARC. Either turn on ARC for the project or use -fobjc-arc flag
#endif


#include "UnityViewControllerBaseiOS.h"

@interface StatusBarViewController : NSObject
{
}
@end

@implementation StatusBarViewController

static bool _show = false;
static UIStatusBarStyle _style = UIStatusBarStyleDefault;
static UIStatusBarAnimation _animation = UIStatusBarAnimationSlide;

+ (void) hideStatusBar: (BOOL)hide
{
    [[UIApplication sharedApplication] setStatusBarHidden: hide
                                            withAnimation: UIStatusBarAnimationSlide];
    [UnityGetGLViewController() setNeedsStatusBarAppearanceUpdate];
}

@end


@interface UnityPortraitOnlyViewController(StatusBar)
{
}
@end

@interface UnityPortraitUpsideDownOnlyViewController(StatusBar)
{
}
@end

@interface UnityLandscapeLeftOnlyViewController(StatusBar)
{
}
@end

@interface UnityLandscapeRightOnlyViewController(StatusBar)
{
}
@end

@interface UnityDefaultViewController(StatusBar)
{
}
@end



@implementation UnityPortraitOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return (!_show);
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return _style;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return _animation;
}
@end

@implementation UnityPortraitUpsideDownOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return (!_show);
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return _style;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return _animation;
}
@end
@implementation UnityLandscapeLeftOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return (!_show);
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return _style;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return _animation;
}
@end
@implementation UnityLandscapeRightOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return (!_show);
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return _style;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return _animation;
}
@end

@implementation UnityDefaultViewController(StatusBar)
- (BOOL)prefersStatusBarHidden
{
    return (!_show);
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return _style;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return _animation;
}
@end

extern "C"
{
    void _ShowStatusBar(bool isShow)
    {
        UIViewController* parent = UnityGetGLViewController();
        _show = isShow;
        
        [UIView animateWithDuration:UINavigationControllerHideShowBarDuration animations:^{
            [parent setNeedsStatusBarAppearanceUpdate];
        }];
        //[parent setNeedsStatusBarAppearanceUpdate];
    }
    
    void _SetStatusBarStyle(int style)
    {
        UIViewController* parent = UnityGetGLViewController();
        switch (style) {
            case 1:
                _style = UIStatusBarStyleLightContent;
                break;
            case 2:
                _style = UIStatusBarStyleBlackTranslucent;
                break;
            case 3:
                _style = UIStatusBarStyleBlackOpaque;
                break;
            default:
                _style = UIStatusBarStyleDefault;
                break;
        }
        [parent setNeedsStatusBarAppearanceUpdate];
    }
    
    void _SetStatusBarAnimation(int anim)
    {
        UIViewController* parent = UnityGetGLViewController();
        switch (anim) {
            case 1:
                _animation = UIStatusBarAnimationFade;
                break;
            case 2:
                _animation = UIStatusBarAnimationSlide;
                break;
            default:
                _animation = UIStatusBarAnimationNone;
                break;
        }
        [parent setNeedsStatusBarAppearanceUpdate];
    }
}
