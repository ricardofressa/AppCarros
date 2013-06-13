//
//  Carro.m
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "Carro.h"

@implementation Carro
@synthesize nome, desc, url_foto, url_info, url_video, latitude, longitude;


#pragma mark - Dealloc
- (void)dealloc{
    [super dealloc];
    [nome release];
    [desc release];
    [url_foto release];
    [url_info release];
    [url_video release];
    [latitude release];
    [longitude release];
}

@end
