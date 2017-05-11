//
//  PBCollectionViewCell.m
//  PBCollectionDemo
//
//  Created by Playboy on 17/5/10.
//  Copyright © 2017年 Playboy. All rights reserved.
//

#import "PBCollectionViewCell.h"

@interface PBCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation PBCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)refreshWithIndexPath:(NSIndexPath *)indexPath {
    self.label.text = [NSString stringWithFormat:@"%zd",indexPath.row];
}

@end
