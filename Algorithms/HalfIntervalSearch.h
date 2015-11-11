//
//  HalfIntervalSearch.h
//  Algorithms
//
//  Created by Dai Qinfu on 15/11/11.
//  Copyright © 2015年 Wingzki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HalfIntervalSearch : NSObject

+ (id)searchInArray:(NSArray *)array with:(NSComparisonResult(^)(id objc))block;

@end
