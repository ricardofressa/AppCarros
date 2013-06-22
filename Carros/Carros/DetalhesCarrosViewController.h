//
//  DetalhesCarrosViewController.h
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carro.h"

@interface DetalhesCarrosViewController : UIViewController{
    Carro *carro;
}

@property (nonatomic, retain) Carro *carro;
@property (nonatomic, retain) IBOutlet UIImageView *img;
@property (nonatomic, retain) IBOutlet UITextView *tDesc;

@end
