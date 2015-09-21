//
//  BinaryTree.h
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/16.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (assign, nonatomic) NSInteger value;

@property (strong, nonatomic) BinaryTreeNode *leftNode;
@property (strong, nonatomic) BinaryTreeNode *rightNode;

- (instancetype)initWithValue:(NSInteger)value;

@end

@interface BinaryTree : NSObject

@property (strong, nonatomic, readonly) BinaryTreeNode *root;

- (void)insertNode:(NSInteger)value;
- (BOOL)deleteNode:(NSInteger)value;

- (BOOL)findNode:(NSInteger)value
          result:(BinaryTreeNode **)result;

@end
