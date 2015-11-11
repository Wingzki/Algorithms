//
//  HalfIntervalSearch.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/11/11.
//  Copyright © 2015年 Wingzki. All rights reserved.
//

#import "HalfIntervalSearch.h"

@implementation HalfIntervalSearch

+ (id)searchInArray:(NSArray *)array with:(NSComparisonResult(^)(id objc))block {
    
    if (array.count == 0) {
        
        return nil;
        
    }else if (array.count == 1) {
        
        if (block(array.firstObject) == NSOrderedSame) {
            
            return array.firstObject;
            
        }else {
            
            return nil;
            
        }
        
    }
    
    NSInteger halfCount = (array.count - 1)/2;
    
    NSComparisonResult result = block(array[halfCount]);
    
    if (result == NSOrderedSame) {
        
        return array[halfCount];
        
    }else if (result == NSOrderedAscending) {
        
        return [HalfIntervalSearch searchInArray:[array subarrayWithRange:NSMakeRange(0, halfCount)] with:block];
        
    }else {
        
        return [HalfIntervalSearch searchInArray:[array subarrayWithRange:NSMakeRange(halfCount + 1, array.count - halfCount - 1)] with:block];
        
    }
    
}

@end
