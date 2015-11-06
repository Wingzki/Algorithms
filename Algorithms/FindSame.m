//
//  FindSame.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/11/6.
//  Copyright © 2015年 Wingzki. All rights reserved.
//

#import "FindSame.h"

#import "QuickSort.h"

@implementation FindSame

+ (NSArray *)findSame:(NSArray *)arrayA :(NSArray *)arrayB {
    
    if (arrayA.count == 0 || arrayB.count == 0) {
        return nil;
    }
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    NSMutableArray *sortArrayA = [arrayA mutableCopy];
    
    [QuickSort quickSort:sortArrayA separate:NSMakeRange(0, arrayA.count)];
    
    NSMutableArray *sortArrayB = [arrayB mutableCopy];
    
    [QuickSort quickSort:sortArrayB separate:NSMakeRange(0, arrayB.count)];
    
    if ([sortArrayA.firstObject integerValue] > [sortArrayB.lastObject integerValue]) {
        
        return nil;
        
    }
    
    if ([sortArrayB.firstObject integerValue] > [sortArrayA.lastObject integerValue]) {
        
        return nil;
        
    }
    
    NSInteger indexA = 0;
    NSInteger indexB = 0;
    
    while (indexA < sortArrayA.count && indexB < sortArrayB.count) {
        
        NSInteger numA = [sortArrayA[indexA] integerValue];
        NSInteger numB = [sortArrayB[indexB] integerValue];
        
        if (numB == numA) {
            
            [tempArray addObject:@(numA)];
            
            indexA++;
            indexB++;
            
        }else if (numA < numB) {
            
            indexA++;
            
        }else if (numA > numB) {
            
            indexB++;
            
        }
        
    }
    
    return [tempArray copy];
}

@end
