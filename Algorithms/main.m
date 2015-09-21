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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BinaryTree *tree = [[BinaryTree alloc] init];
        
        [tree insertNode:100];
        
        [tree insertNode:110];
        
        [tree insertNode:90];
        
        [tree insertNode:130];
        
        [tree insertNode:50];
        
        BinaryTreeNode *result;
        
        BOOL find = [tree findNode:100 result:&result];
        
        [tree deleteNode:100];
        
        NSLog(@"%@", find ? result : @"没有找到");
        
    }
    return 0;
}
