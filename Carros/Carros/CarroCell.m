//
//  CarroCell.m
//  Carros
//
//  Created by Ricardo Cardoso on 6/22/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "CarroCell.h"

@implementation CarroCell
@synthesize cellDesc, cellImg;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - dealloc
- (void)dealloc{
    [super dealloc];
    [cellDesc release];
    [cellImg release];
}

@end
