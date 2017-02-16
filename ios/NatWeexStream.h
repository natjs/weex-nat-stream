//
//  NatWeexStream.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import <Foundation/Foundation.h>

#import <WeexSDK/WeexSDK.h>

@protocol NatWeexStreamPro <WXModuleProtocol>
- (void)fetch:(NSDictionary *)params :(WXModuleCallback)callback;
@end

@interface NatWeexStream : NSObject<NatWeexStreamPro>

@end
