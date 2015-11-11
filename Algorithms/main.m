//
//  main.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/15.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"
#import "Compounding.h"
#import "BinaryTree.h"

#import "FindSame.h"
#import "HalfIntervalSearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        BinaryTree *tree = [[BinaryTree alloc] init];
//        
//        [tree insertNode:100];
//        
//        [tree insertNode:110];
//        
//        [tree insertNode:90];
//        
//        [tree insertNode:130];
//        
//        [tree insertNode:50];
//        
//        [tree insertNode:95];
//        
//        [tree insertNode:105];
//        
////        [tree insertNode:140];
//        
//        BinaryTreeNode *result;
//        
//        [tree findNode:100 result:&result];
//        
//        NSLog(@"Depth = %@", @([tree treeDepth]));
//        
//        NSLog(@"BinaryTree = %@", tree);
        
     
//        NSMutableArray *arrayA = [NSMutableArray array];
//        NSMutableArray *arrayB = [NSMutableArray array];
//
//        for (int i = 0; i < 10000000; i++) {
//            
//            [arrayA addObject:@(arc4random() % 100)];
//            [arrayB addObject:@(arc4random() % 100)];
//            
//        }
//
//        NSMutableArray *sortArrayA = [arrayA mutableCopy];
//        
//        [QuickSort quickSort:sortArrayA separate:NSMakeRange(0, arrayA.count - 1)];
//        
//        NSMutableArray *sortArrayB = [arrayB mutableCopy];
//        
//        [QuickSort quickSort:sortArrayB separate:NSMakeRange(0, arrayB.count - 1)];
//        
//        for (int i = 0; i < 10; i++) {
//        
//            [FindSame findWithIndexMode:sortArrayA :sortArrayB];
//            [FindSame findWithEnumertatorMode:sortArrayA :sortArrayB];
//            NSLog(@"========");
//            
//        }

//        CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
//        
//        [QuickSort quickSort:[arrayA mutableCopy] separate:NSMakeRange(0, arrayA.count - 1)];
//        
//        CFAbsoluteTime start1 = CFAbsoluteTimeGetCurrent();
//        NSLog(@"time cost: %0.6f", start1 - start);
//        
//        [[arrayA mutableCopy] sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
//            
//            NSInteger a = obj1.integerValue;
//            NSInteger b = obj2.integerValue;
//            
//            if (a > b) {
//                return NSOrderedDescending;
//            }else if (a < b) {
//                return NSOrderedAscending;
//            }else {
//                return  NSOrderedSame;
//            }
//            
//        }];
//        
//        CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
//        NSLog(@"time cost: %0.6f", end - start1);
        
        NSArray *array = @[@(1), @(2), @(3), @(4), @(5), @(6), @(7)];
        
        NSInteger count = 1;
        
        NSNumber *tempNumber = [HalfIntervalSearch searchInArray:array with:^NSComparisonResult(NSNumber *objc) {
            
            if (objc.integerValue == count) {
                return NSOrderedSame;
            }else if (objc.integerValue > count) {
                
                return NSOrderedAscending;
                
            }else {
                
                return NSOrderedDescending;
                
            }
            
        }];
        
        NSLog(@"%@", tempNumber);
        
    }
    return 0;
}
