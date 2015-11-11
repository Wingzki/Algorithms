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

+ (NSArray *)findSame:(NSArray *)arrayA :(NSArray *)arrayB mode:(NSInteger)mode {
    
    if (arrayA.count == 0 || arrayB.count == 0) {
        return nil;
    }
    
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
    
    if (mode == 0) {
        
        return [FindSame findWithEnumertatorMode:sortArrayA :sortArrayB];
        
    }else {
        
        return [FindSame findWithIndexMode:sortArrayA :sortArrayB];
        
    }
    
}

+ (NSArray *)findWithIndexMode:(NSArray *)arrayA :(NSArray *)arrayB {
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    NSInteger indexA = 0;
    NSInteger indexB = 0;
    
    NSInteger countA = arrayA.count;
    NSInteger countB = arrayB.count;
    
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    
    while (indexA < countA && indexB < countB) {
        
        NSInteger numA = [arrayA[indexA] integerValue];
        NSInteger numB = [arrayB[indexB] integerValue];
        
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
    
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"time cost: %0.9f", end - start);

    return tempArray;
    
}

+ (NSArray *)findWithEnumertatorMode:(NSArray *)arrayA :(NSArray *)arrayB {
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    NSEnumerator *enumeratorA = arrayA.objectEnumerator;
    NSEnumerator *enumeratorB = arrayB.objectEnumerator;
    
    NSNumber *objcA = enumeratorA.nextObject;
    NSNumber *objcB = enumeratorB.nextObject;
    
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    
    while (objcA && objcB) {
        
        NSInteger numA = objcA.integerValue;
        NSInteger numB = objcB.integerValue;
        
        if (numB == numA) {
            
            [tempArray addObject:objcA];
            
            objcA = enumeratorA.nextObject;
            objcB = enumeratorB.nextObject;
            
        }else if (numA < numB) {
            
            objcA = enumeratorA.nextObject;
            
        }else if (numA > numB) {
            
            objcB = enumeratorB.nextObject;
            
        }
        
    }
    
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"time cost: %0.9f", end - start);
    
    return tempArray;
    
}

@end
