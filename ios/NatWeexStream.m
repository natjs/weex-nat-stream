//
//  NatWeexStream.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//

#import "NatWeexStream.h"
#import "NatStream.h"

@implementation NatWeexStream
WX_EXPORT_METHOD(@selector(fetch::))
- (void)fetch:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatStream singletonManger] fetch:params :^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }

    }];
}

@end
