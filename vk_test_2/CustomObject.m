//
//  CustomObject.m
//  vk_test_2
//
//  Created by ILN on 08/05/2019.
//  Copyright © 2019 ILN. All rights reserved.
//

#import "CustomObject.h"

@implementation CustomObject

- (void) someMethod {
    NSLog(@"SomeMethod Ran");
    
//    VKSdk *sdkInstance = [VKSdk initializeWithAppId:@"1231232"];
    
//    VKSdkUIDelegate uiDelegate = VKSdkUIDelegate();
//
//    [sdkInstance registerDelegate:uiDelegate];
//    [sdkInstance setUiDelegate:delegate];
    
//    [[VKSdk initializeWithAppId:@"1231232"] registerDelegate:delegate];
//    [VKSdk authorize:@[@"friends"]];
}

//iOS 9 workflow
//- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
//    [VKSdk processOpenURL:url fromApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]];
//    return YES;
//}
//
////iOS 8 and lower
//-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
//{
//    [VKSdk processOpenURL:url fromApplication:sourceApplication];
//    return YES;
//}

@end
