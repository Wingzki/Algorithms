//
//  BinaryTree.m
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/16.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import "BinaryTree.h"

struct BinaryTreeNode {
    
    NSInteger value;
    struct BinaryTreeNode *leftNode;
    struct BinaryTreeNode *rightNode;
    
};

struct BinaryTreeNode BinaryTreeNodeMake(NSInteger value, struct BinaryTreeNode *left, struct BinaryTreeNode *right) {
    
    struct BinaryTreeNode node;
    
    node.value     = value;
    node.leftNode  = left;
    node.rightNode = right;
    
    return node;
    
}

//二叉树节点
@implementation BinaryTreeNode

- (void)dealloc
{
    NSLog(@"%@ %@ Dealloc", [self class], @(self.value));
}

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

//二叉树
@interface BinaryTree ()

@property (strong, nonatomic, readwrite) BinaryTreeNode *root;

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
        
        return [NSString stringWithFormat:@"BinaryTree"];
        
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

//插入节点
- (void)insertNode:(NSInteger)value {
    
    if (self.root) {
        
        [self insertNode:value node:self.root];
        
    }else {
        
        self.root = [[BinaryTreeNode alloc] initWithValue:value];
        
    }
    
}

//删除节点
- (BOOL)deleteNode:(NSInteger)value {
    
    return [self deleteNode:value node:self.root];
    
}

//查找节点
- (BOOL)findNode:(NSInteger)value result:(BinaryTreeNode **)result {
    
    return [self findNode:value node:self.root result:result parentNode:nil];
    
}

#pragma mark - Private

- (BOOL)findNode:(NSInteger)value node:(BinaryTreeNode *)node result:(BinaryTreeNode **)result parentNode:(BinaryTreeNode **)parentNode{
    
    if (!node) {
        
        return NO;
        
    }
    
    if (node.value == value) {
        
        *result = node;
        
        return YES;
        
    }else {
        
        *parentNode = node;
        
        return [self findNode:value node:node.leftNode result:result parentNode:parentNode] || [self findNode:value node:node.rightNode result:result parentNode:parentNode];
        
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

- (BOOL)deleteNode:(NSInteger)value node:(BinaryTreeNode *)node {
    
    if (!node) {
        
        return NO;
        
    }
    
    BinaryTreeNode *result;
    BinaryTreeNode *parentNode;
    
    if ([self findNode:value node:node result:&result parentNode:&parentNode]) {
        
        if (result.rightNode && !result.leftNode) {
            
            result.value     = result.rightNode.value;
            result.leftNode  = result.rightNode.leftNode;
            result.rightNode = result.rightNode.rightNode;
            
        }
        
        if (!result.rightNode && result.leftNode) {
            
            result.value     = result.leftNode.value;
            result.rightNode = result.leftNode.rightNode;
            result.leftNode  = result.leftNode.leftNode;
            
        }
        
        if (!result.rightNode && !result.leftNode) {
            
            if (parentNode.leftNode.value == result.value) {
                
                parentNode.leftNode = nil;
                
            }else if (parentNode.rightNode.value == result.value) {
                
                parentNode.rightNode = nil;
                
            }
            
        }
        
        if (result.rightNode && result.leftNode) {
            
            BinaryTreeNode *leftNode;
            
            [self leftNode:result.rightNode result:&leftNode];
            
            result.value = leftNode.value;
            
            [self deleteNode:leftNode.value node:leftNode];
            
        }
        
        return YES;
        
    }else {
        
        return NO;
        
    }
    
}


- (BOOL)leftNode:(BinaryTreeNode *)node result:(BinaryTreeNode **)result {
    
    if (!node) {
        
        return NO;
        
    }
    
    if (node.leftNode) {
        
        return [self leftNode:node.leftNode result:result];
        
    }else {
        
        *result = node;
        
        return YES;
        
    }
    
}

@end
