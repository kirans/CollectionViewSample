//
//  ViewController.m
//  NewCollectionViewDemo
//
//  Created by KiranSanka on 8/29/14.
//  Copyright (c) 2014 Kiran Sanka. All rights reserved.
//

#import "ViewController.h"
#import "SmallCardLayout.h"
#import "LargeCardViewController.h"
#import "SmallCardViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
		
//	[self addChildViewController:self.smallCardViewController];
//	[self.view addSubview:self.smallCardViewController.collectionView];
//	[self.smallCardViewController didMoveToParentViewController:self];
	
	[self.navigationController pushViewController:[self smallCardViewController] animated:NO];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (SmallCardViewController*) smallCardViewController
{
	if (!_smallCardViewController) {
    _smallCardViewController = [[SmallCardViewController alloc] initWithCollectionViewLayout:[[SmallCardLayout alloc] init]];
		_smallCardViewController.collectionView.frame = self.view.bounds;
	}
	return _smallCardViewController;
}

@end
