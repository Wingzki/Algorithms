//
//  BinaryTree.h
//  Algorithms
//
//  Created by Dai Qinfu on 15/9/16.
//  Copyright (c) 2015年 Wingzki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

/**
 *  节点值
 */
@property (assign, nonatomic) NSInteger value;
/**
 *  左子树
 */
@property (strong, nonatomic) BinaryTreeNode *leftNode;
/**
 *  右子树
 */
@property (strong, nonatomic) BinaryTreeNode *rightNode;

- (instancetype)initWithValue:(NSInteger)value;

@end

@interface BinaryTree : NSObject

/**
 *  根节点
 */
@property (strong, nonatomic, readonly) BinaryTreeNode *root;

/**
 *  插入节点
 *
 *  @param value 节点值
 */
- (void)insertNode:(NSInteger)value;

/**
 *  删除节点
 *
 *  @param value 节点值
 *
 *  @return 是否删除成功
 */
- (BOOL)deleteNode:(NSInteger)value;

/**
 *  查找节点
 *
 *  @param value  节点值
 *  @param result 储存找到节点的指针地址
 *
 *  @return 是否找到节点
 */
- (BOOL)findNode:(NSInteger)value
          result:(BinaryTreeNode **)result;

/**
 *  向左旋转树
 */
- (void)rotationLeft;

/**
 *  向右旋转树
 */
- (void)rotationRight;

@end
