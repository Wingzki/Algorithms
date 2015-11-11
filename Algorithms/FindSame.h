//
//  FindSame.h
//  Algorithms
//
//  Created by Dai Qinfu on 15/11/6.
//  Copyright © 2015年 Wingzki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FindSame : NSObject

+ (NSArray *)findSame:(NSArray *)arrayA :(NSArray *)arrayB mode:(NSInteger)mode;

+ (NSArray *)findWithIndexMode:(NSArray *)arrayA :(NSArray *)arrayB;
+ (NSArray *)findWithEnumertatorMode:(NSArray *)arrayA :(NSArray *)arrayB;

@end
