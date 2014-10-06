//
//  ViewController.h
//  NewCollectionViewDemo
//
//  Created by KiranSanka on 8/29/14.
//  Copyright (c) 2014 Kiran Sanka. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SmallCardViewController;
@class LargeCardViewController;

@interface ViewController : UIViewController

@property (nonatomic, strong) SmallCardViewController *smallCardViewController;
@property (nonatomic, strong) LargeCardViewController *largeCardViewController;

@end
