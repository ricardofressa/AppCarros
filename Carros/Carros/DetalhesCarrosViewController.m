//
//  DetalhesCarrosViewController.m
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "DetalhesCarrosViewController.h"


@interface DetalhesCarrosViewController ()

@end

@implementation DetalhesCarrosViewController

@synthesize carro;
@synthesize img, tDesc;


#pragma mark - View LifeCycle
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Titulo da Navigation Bar é o nome do Carro
    self.title = carro.nome;
    
    //Atualiza o texto das views
    self.tDesc.text = carro.desc;
    self.img.image = [UIImage imageNamed:carro.url_foto];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - dealloc
- (void)dealloc{
    [super dealloc];
    [carro release];
    [img release];
    [tDesc release];
}

@end
