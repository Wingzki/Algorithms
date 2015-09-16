//
//  Compounding.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/15.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import "Compounding.h"

@implementation Compounding

- (NSInteger)compounding:(NSInteger)money
                   years:(NSInteger)years
                    rate:(CGFloat)rate {
    
    NSInteger max = 0;
    
    for (int i = 0; i <= years; i ++) {
        
        max += money * pow((1 + rate), i);
        
    }
    
    return max;
    
}

@end
