//
//  AlipayManager.h
//  AliSDK2D3D3Swift1D2Demo
//
//  Created by 张青明 on 15/9/8.
//  Copyright (c) 2015年 极客栈. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlipayManager : NSObject
- (instancetype)init;
//+ (NSString *)orderSpec;
/**
 *
 *
 *  @param privateKey pkcs8加密后的字符串
 *  @param signString <#signString description#>
 *
 *  @return <#return value description#>
 */
+ (NSString *)signedStringWithPrivateKey:(NSString *)privateKey orderSpec:(NSString *)orderSpec;
@end
