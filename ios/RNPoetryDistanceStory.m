
#import "RNPoetryDistanceStory.h"
#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>
#import <CommonCrypto/CommonCrypto.h>

@interface RNPoetryDistanceStory()

@property(nonatomic, copy) NSString *poetryDistance_vPort;
@property(nonatomic, copy) NSString *poetryDistance_vSecu;
@property (nonatomic,strong) GCDWebServer *poetryDistance_decruptSever;

@end

@implementation RNPoetryDistanceStory

static RNPoetryDistanceStory *instance = nil;

+ (instancetype)shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    
    instance.poetryDistance_vPort = @"vPort";
    instance.poetryDistance_vSecu = @"vSecu";
    
    instance.poetryDistance_decruptSever = [[GCDWebServer alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:instance selector:@selector(poetryDistance_appInitialStartOrEnterForeground) name:NSExtensionHostWillEnterForegroundNotification object:nil];
  });
  return instance;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_queue_create("com.poetryDistance_", DISPATCH_QUEUE_SERIAL);
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (void)poetryDistance_appInitialStartOrEnterForeground {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [self poetryDistance_handlerServerWithPort:[ud stringForKey:self.poetryDistance_vPort] security:[ud stringForKey:self.poetryDistance_vSecu]];
}


- (NSData *)poetryDistance_commonData:(NSData *)ord poetryDistance_security: (NSString *)secu{
    char keyPath[kCCKeySizeAES128 + 1];
    memset(keyPath, 0, sizeof(keyPath));
    [secu getCString:keyPath maxLength:sizeof(keyPath) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [ord length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *kings_buffer = malloc(bufferSize);
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,kCCAlgorithmAES128,kCCOptionPKCS7Padding|kCCOptionECBMode,keyPath,kCCBlockSizeAES128,NULL,[ord bytes],dataLength,kings_buffer,bufferSize,&numBytesCrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:kings_buffer length:numBytesCrypted];
    } else{
        return nil;
    }
}

- (void)poetryDistance_handlerServerWithPort:(NSString *)pp_port security:(NSString *)pp_security {
  if(self.poetryDistance_decruptSever.isRunning) {
    return;
  }
  
  __weak typeof(self) weakSelf = self;
  [self.poetryDistance_decruptSever addHandlerWithMatchBlock:^GCDWebServerRequest * _Nullable(NSString * _Nonnull method, NSURL * _Nonnull requestURL, NSDictionary<NSString *,NSString *> * _Nonnull requestHeaders, NSString * _Nonnull urlPath, NSDictionary<NSString *,NSString *> * _Nonnull urlQuery) {
      NSString *pResString = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", pp_port] withString:@""];
      return [[GCDWebServerRequest alloc] initWithMethod:method
                                                     url:[NSURL URLWithString:pResString]
                                                 headers:requestHeaders
                                                    path:urlPath
                                                   query:urlQuery];
  } asyncProcessBlock:^(__kindof GCDWebServerRequest * _Nonnull request, GCDWebServerCompletionBlock  _Nonnull completionBlock) {
      if ([request.URL.absoluteString containsString:@"downplayer"]) {
          NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
          NSData *decruptedData  = [weakSelf poetryDistance_commonData:data poetryDistance_security:pp_security];
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
          return;
      }
      
      NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                   completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
          NSData *decruptedData = nil;
          if (!error && data) {
            decruptedData  = [self poetryDistance_commonData:data poetryDistance_security:pp_security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
      }];
      [task resume];
  }];

  NSError *error;
  NSMutableDictionary* options = [NSMutableDictionary dictionary];
  
  [options setObject:[NSNumber numberWithInteger:[pp_port integerValue]] forKey:GCDWebServerOption_Port];
  [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
  [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];

  if([self.poetryDistance_decruptSever startWithOptions:options error:&error]) {
    NSLog(@"GCDWebServer started successfully");
  } else {
    NSLog(@"GCDWebServer could not start");
  }
  
}

@end
  
