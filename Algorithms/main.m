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
        
     
        NSArray *arrayA = @[@(2), @(4), @(6), @(8), @(9)];
        
        NSArray *arrayB = @[@(1), @(3), @(5), @(7), @(9)];
        
        NSLog(@"%@", [FindSame findSame:arrayA :arrayB]);
        
    }
    return 0;
}
