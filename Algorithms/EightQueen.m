//
//  EightQueen.m
//  EightQueen
//
//  Created by Dai Qinfu on 15/8/20.
//  Copyright © 2015年 Wingzki. All rights reserved.
//

#import "EightQueen.h"

@interface EightQueen ()

@end

@implementation EightQueen

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self allQueen:6 dic:[NSMutableArray array]];
        
    }
    return self;
}

- (void)allQueen:(NSInteger)count dic:(NSMutableArray *)array {
    
    if (array.count == count) {
        
        NSLog(@"%@", array);
        
        return;
        
    }
    
    for (int i = 0; i < count; i++) {
        
        if ([self check:i array:array]) {
            
            NSMutableArray *tempArray = [array mutableCopy];
            
            [tempArray addObject:@(i).stringValue];
            
            [self allQueen:count dic:[tempArray mutableCopy]];
            
        }
        
    }
    
}

- (BOOL)check:(NSInteger)index array:(NSArray *)array {
    
    for (int i = 0; i < array.count; i++) {
        
        NSInteger count = array.count;
        
        if ((labs(count - i) == labs(index - [array[i] integerValue])) || index == [array[i] integerValue]) {
            
            return NO;
            
        }
        
    }
    
    return YES;
}

@end
