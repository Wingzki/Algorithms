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
        
        NSMutableArray *array = [@[] mutableCopy];
        
        for (int i = 0; i < 100; i ++) {
            
            [array addObject:[[NSNumber alloc] initWithFloat:arc4random() % 1000]];
            
        }
        
        CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
        
        [QuickSort quickSort:array separate:NSMakeRange(0, array.count - 1)];
        
        CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
        NSLog(@"time cost: %0.6f", end - start);
        
        NSLog(@"%@", array);
        
    }
    return self;
}

+ (void)quickSort:(NSMutableArray *)array separate:(NSRange)range {
    
    if (range.location >= range.length) {
        
        return;
        
    }
    
    NSInteger i    = range.location;
    NSInteger j    = range.length;
    NSInteger temp = [array[range.location] integerValue];
    
    while (i < j) {
        
        while (i < j && temp < [array[j] integerValue]) {
            
            j--;
            
        }
        
        if (i < j) {
            
            [array replaceObjectAtIndex:i withObject:array[j]];
            
            i++;
            
        }
        
        while (i < j && temp > [array[i] integerValue]) {
            
            i++;
            
        }
        
        if (i < j) {
            
            [array replaceObjectAtIndex:j withObject:array[i]];
            
            j--;
            
        }
        
    }
    
    [array replaceObjectAtIndex:i withObject:@(temp)];
    
    NSRange leftRange  = NSMakeRange(range.location, i == 0 ? 0 : i - 1);
    NSRange rightRange = NSMakeRange(i + 1, range.length);
    
    [self quickSort:array separate:leftRange];
    [self quickSort:array separate:rightRange];
    
}

@end
