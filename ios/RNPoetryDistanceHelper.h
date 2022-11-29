//
//  RNPoetryDistanceHelper.h
//  RNPoetryDistanceStory
//
//  Created by Nicka on 11/29/22.
//  Copyright © 2022 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNPoetryDistanceHelper : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)shared;
- (BOOL)poetryDistance_tryThisWay;
- (UIInterfaceOrientationMask)poetryDistance_getOrientation;
- (UIViewController *)poetryDistance_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
