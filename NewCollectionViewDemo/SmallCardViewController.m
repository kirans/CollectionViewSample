//
//  SmallCardViewController.m
//  NewCollectionViewDemo
//
//  Created by KiranSanka on 8/29/14.
//  Copyright (c) 2014 Kiran Sanka. All rights reserved.
//

#import "SmallCardViewController.h"
#import "SmallCardCell.h"
#import "GTScrollNavigationBar.h"

@interface SmallCardViewController ()

@end

@implementation SmallCardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithCollectionViewLayout:(UICollectionViewLayout *)layout
{
	self = [super initWithCollectionViewLayout:layout];
	if (self) {
		self.collectionView.delegate = self;
		self.collectionView.dataSource = self;
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
		[self.collectionView registerNib:[UINib nibWithNibName:@"SmallCardCell" bundle:nil] forCellWithReuseIdentifier:@"SmallCardCell"];
//		self.navigationController.hidesBarsOnSwipe = YES;
    // Do any additional setup after loading the view.
}


- (void) viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	//self.navigationController.hidesBarsOnSwipe = YES;
	
	[self.navigationController.scrollNavigationBar resetToDefaultPosition:NO];
	self.navigationController.scrollNavigationBar.scrollView = self.collectionView;

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
	return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	SmallCardCell *cardCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SmallCardCell" forIndexPath:indexPath];
	cardCell.backgroundColor = [UIColor colorWithRed:(rand()%255 / 255.0f) green:(rand()%255 / 255.0f) blue:(rand()%255 / 255.0f) alpha:1.0];
	return cardCell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
	return CGSizeMake(CGRectGetWidth(self.collectionView.frame)/2 - 30, 200);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
	return 20;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
	return UIEdgeInsetsMake(20, 20, 20, 20);
}

@end
