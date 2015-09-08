//
//  AlipayManager.m
//  AliSDK2D3D3Swift1D2Demo
//
//  Created by 张青明 on 15/9/8.
//  Copyright (c) 2015年 极客栈. All rights reserved.
//

#import "AlipayManager.h"
#import "DataSigner.h"

@implementation AlipayManager

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

//+ (NSString *)orderSpec
//{
//    
//    return @"";
//}

+ (NSString *)signedStringWithPrivateKey:(NSString *)privateKey orderSpec:(NSString *)orderSpec
{
    id<DataSigner> signer = CreateRSADataSigner(privateKey);
    NSString *signedString = [signer signString:orderSpec];
    return signedString;
}

@end
