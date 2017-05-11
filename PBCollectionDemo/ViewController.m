//
//  ViewController.m
//  PBCollectionDemo
//
//  Created by Playboy on 17/5/10.
//  Copyright © 2017年 Playboy. All rights reserved.
//

#import "ViewController.h"
#import "PBCollectionViewFlowLayout.h"
#import "PBCollectionViewCell.h"

static NSString * const kPBCollectionViewCell = @"PBCollectionViewCell";

// 屏幕高度
#define kScreenHeight           [[UIScreen mainScreen] bounds].size.height
// 屏幕宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width
#define kScreenScale            ([ UIScreen mainScreen ].bounds.size.width/320)


@interface ViewController ()<UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView  *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configure];
}

- (void)configure {
    [self configureView];
    [self configureData];
}
- (void)configureView {
    UICollectionViewFlowLayout *layout =[[PBCollectionViewFlowLayout alloc]init];
    
    layout.itemSize = CGSizeMake(kScreenWidth/3, kScreenWidth/4);
    layout.minimumInteritemSpacing = 0*kScreenScale;
    layout.minimumLineSpacing = 0*kScreenScale;
    layout.headerReferenceSize = CGSizeMake(0*kScreenScale, 0*kScreenScale);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    UICollectionView *collectionView =[[UICollectionView alloc] initWithFrame:CGRectMake(0,100, kScreenWidth,kScreenWidth/2)
                                                         collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.dataSource = self;
    collectionView.pagingEnabled = YES;
    self.collectionView = collectionView;
    [self.view addSubview:self.collectionView];
    
    [collectionView registerNib:[UINib nibWithNibName:kPBCollectionViewCell bundle:nil] forCellWithReuseIdentifier:kPBCollectionViewCell];
    
}
- (void)configureData {
    
}
#pragma mark - UICollectionViewDataSource methods

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return 12;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    PBCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kPBCollectionViewCell forIndexPath:indexPath];
    cell.backgroundColor = [UIColor orangeColor];
    [cell refreshWithIndexPath:indexPath];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
