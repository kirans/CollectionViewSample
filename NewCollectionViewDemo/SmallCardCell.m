//
//  BaseCardCell.m
//  NewCollectionViewDemo
//
//  Created by KiranSanka on 8/29/14.
//  Copyright (c) 2014 Kiran Sanka. All rights reserved.
//

#import "SmallCardCell.h"

@implementation SmallCardCell

- (id) initWithCoder:(NSCoder *)aDecoder
{
	self = [super initWithCoder:aDecoder];
	if (self) {
    self.layer.cornerRadius = 5;
	}
	return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
			self.layer.cornerRadius = 5;
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
