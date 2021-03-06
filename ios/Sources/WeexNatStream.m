//
//  WeexNatStream.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import "WeexNatStream.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatStream/NatStream.h>

@implementation WeexNatStream

WX_PlUGIN_EXPORT_MODULE(nat/stream, WeexNatStream)
WX_EXPORT_METHOD(@selector(fetch::))

- (void)fetch:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatStream singletonManger] fetch:params :^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

@end
