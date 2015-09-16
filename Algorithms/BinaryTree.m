//
//  BinaryTree.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/16.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import "BinaryTree.h"

//typedef struct BinaryTreeNode BinaryTreeNode;

struct BinaryTreeNode BinaryTreeNodeMake(NSInteger value, struct BinaryTreeNode *left, struct BinaryTreeNode *right) {
    
    struct BinaryTreeNode node;
    
    node.value     = value;
    node.leftNode  = left;
    node.rightNode = right;
    
    return node;
    
}
@implementation BinaryTreeNode

- (instancetype)initWithValue:(NSInteger)value
{
    self = [super init];
    if (self) {
        
        _value = value;
        
    }
    return self;
}

- (NSString *)description {
    
    return @(self.value).stringValue;
    
}

@end

@implementation BinaryTree

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSString *)description
{
    
    if (self.root) {
        
        [self logBinaryTree:self.root];
        
        return [NSString stringWithFormat:@"BinaryTree:"];
        
    }else {
        
        return @"NULL";
        
    }
    
}

- (void)logBinaryTree:(BinaryTreeNode *)node {
    
    if (node) {
        
        NSLog(@"%@", node);
        
        if (!node.leftNode && !node.rightNode) {
            
            return;
            
        }
        
        if (node.leftNode) {
            [self logBinaryTree:node.leftNode];
        }else {
            NSLog(@"NULL");
        }
        
        if (node.rightNode) {
            [self logBinaryTree:node.rightNode];
        }else {
            NSLog(@"NULL");
        }
        
        
        
    }else {
        
        return;
        
    }
    
    
    
    
    
    
    
    
}

- (void)insertNode:(NSInteger)value {
    
    if (self.root) {
        
        [self insertNode:value node:self.root];
        
    }else {
        
        self.root = [[BinaryTreeNode alloc] initWithValue:value];
        
    }
    
}

- (void)insertNode:(NSInteger)value node:(BinaryTreeNode *)node {
    
    if (value > node.value) {
        
        if (node.rightNode) {
            
            [self insertNode:value node:node.rightNode];
            
        }else {
            
            node.rightNode = [[BinaryTreeNode alloc] initWithValue:value];
            
            return;
        }
        
    }else {
        
        if (node.leftNode) {
            
            [self insertNode:value node:node.leftNode];
            
        }else {
            
            node.leftNode = [[BinaryTreeNode alloc] initWithValue:value];
            
            return;
        }
        
    }
    
}

@end
