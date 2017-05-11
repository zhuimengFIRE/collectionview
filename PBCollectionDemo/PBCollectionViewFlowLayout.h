//
//  PBCollectionViewFlowLayout.h
//  PBCollectionDemo
//
//  Created by Playboy on 17/5/10.
//  Copyright © 2017年 Playboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PBCollectionViewFlowLayout : UICollectionViewFlowLayout

// 每行显示几个
@property (nonatomic) NSUInteger itemCountRow;
// 显示多少行
@property (nonatomic) NSUInteger rowCount;

@property (strong, nonatomic) NSMutableArray *allAttributes;

@end
