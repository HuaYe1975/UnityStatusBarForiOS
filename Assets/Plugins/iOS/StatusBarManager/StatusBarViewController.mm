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

#define HIDE_BAR_TAG 999

#include "UnityViewControllerBaseiOS.h"

@interface StatusBarViewController : NSObject
{
}
@end

@implementation StatusBarViewController
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
    return self.view.tag == HIDE_BAR_TAG ? NO:YES;
}
@end

@implementation UnityPortraitUpsideDownOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return self.view.tag == HIDE_BAR_TAG ? NO:YES;
}

@end
@implementation UnityLandscapeLeftOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return self.view.tag == HIDE_BAR_TAG ? NO:YES;
}

@end
@implementation UnityLandscapeRightOnlyViewController(StatusBar)

- (BOOL)prefersStatusBarHidden
{
    return self.view.tag == HIDE_BAR_TAG ? NO:YES;
}

@end

@implementation UnityDefaultViewController(StatusBar)
- (BOOL)prefersStatusBarHidden
{
    return self.view.tag == HIDE_BAR_TAG ? NO:YES;
}

@end

extern "C"
{
    void _ShowStatusBar(bool isShow)
    {
        UIViewController* parent = UnityGetGLViewController();
        parent.view.tag = isShow ? 0 : HIDE_BAR_TAG;
        [parent setNeedsStatusBarAppearanceUpdate];
    }
}
