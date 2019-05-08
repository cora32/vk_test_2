//
//  CustomObject.h
//  vk_test_2
//
//  Created by ILN on 08/05/2019.
//  Copyright © 2019 ILN. All rights reserved.
//

#ifndef CustomObject_h
#define CustomObject_h

#import <Foundation/Foundation.h>
//@import VK_ios_sdk;
#import <VKSdk.h>

@interface CustomObject : NSObject

@property (strong, nonatomic) id someProperty;

- (void) someMethod;

@end

#endif /* CustomObject_h */
