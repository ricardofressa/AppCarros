//
//  Alerta.m
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "Alerta.h"

@implementation Alerta

+ (void) alerta:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alerta" message:msg delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
}
@end
