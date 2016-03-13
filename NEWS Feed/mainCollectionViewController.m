//
//  mainCollectionViewController.m
//  NEWS Feed
//
//  Created by anurag gupta on 12/03/16.
//  Copyright © 2016 hemant. All rights reserved.
//

#import "mainCollectionViewController.h"
#import "homeCollectionViewCell.h"
#import "SIPhoto.h"
@interface mainCollectionViewController ()
{
    NSMutableArray *arr;
}
@end

@implementation mainCollectionViewController

static NSString * const reuseIdentifier = @"channel";

- (void)viewDidLoad {
    [super viewDidLoad];
    arr = [NSMutableArray new];
    [arr addObjectsFromArray:@[
                               [SIPhoto photoWithObjectURL:[NSURL URLWithString:@"http://www.faroo.com/api?q=world&start=1&length=9&l=en&src=news&f=rss"]
                                                     title:@"World"
                                                     image:[UIImage imageNamed:@"world"]],
                               [SIPhoto photoWithObjectURL:[NSURL URLWithString:@"http://www.faroo.com/api?q=world&start=1&length=9&l=en&src=news&f=rss"]
                                                     title:@"World"
                                                     image:[UIImage imageNamed:@"world.png"]],
                               [SIPhoto photoWithObjectURL:[NSURL URLWithString:@"http://www.faroo.com/api?q=world&start=1&length=9&l=en&src=news&f=rss"]
                                                     title:@"World"
                                                     image:[UIImage imageNamed:@"world.png"]],
                               [SIPhoto photoWithObjectURL:[NSURL URLWithString:@"http://www.faroo.com/api?q=world&start=1&length=9&l=en&src=news&f=rss"]
                                                     title:@"World"
                                                     image:[UIImage imageNamed:@"world.png"]],
                               [SIPhoto photoWithObjectURL:[NSURL URLWithString:@"http://www.faroo.com/api?q=world&start=1&length=9&l=en&src=news&f=rss"]
                                                     title:@"World"
                                                     image:[UIImage imageNamed:@"world.png"]],
                               [SIPhoto photoWithObjectURL:[NSURL URLWithString:@"http://www.faroo.com/api?q=world&start=1&length=9&l=en&src=news&f=rss"]
                                                     title:@"World"
                                                     image:[UIImage imageNamed:@"world.png"]]
                               ]];

    // Uncomment the following line to preserve selection between presentations
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[homeCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
        homeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    cell.imageV.image = [[arr objectAtIndex:indexPath.row] mainimage];
    // Configure the cell
//    [[cell buttonChannel] setBackgroundImage:[[arr objectAtIndex:indexPath.row] mainimage] forState:UIControlStateNormal];
    
    
   
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/



@end
