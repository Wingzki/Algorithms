//
//  QuickSort.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/15.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSMutableArray *array = [@[@(100), @(50), @(2), @(88), @(53), @(64), @(3), @(65), @(32), @(70), @(6)] mutableCopy];
        
        [QuickSort quickSort:array separate:NSMakeRange(0, array.count)];
        
        NSLog(@"%@", array);
        
    }
    return self;
}

+ (void)quickSort:(NSMutableArray *)array separate:(NSRange)range {
    
    if (range.length <= 1) {
        
        return;
        
    }
    
    NSUInteger i    = range.location;
    NSUInteger m    = 0;
    NSInteger  temp = [array[range.location] integerValue];
    
    while (i < (range.location + range.length - 1)) {
        
        i++;
        
        NSNumber *number = [array[i] copy];
        
        if (number.integerValue < temp) {
            
            [array removeObjectAtIndex:i];
            [array insertObject:number atIndex:range.location];
            
            m++;
            
        }
        
    }
    
    NSRange leftRange  = NSMakeRange(range.location, m);
    NSRange rightRange = NSMakeRange(range.location + m + 1, range.length - m - 1);
    
    [self quickSort:array separate:leftRange];
    [self quickSort:array separate:rightRange];
    
}

@end
