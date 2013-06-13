//
//  CarroService.m
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "CarroService.h"
#import "Carro.h"

@interface CarroService ()

@end

@implementation CarroService

+ (NSMutableArray *) getCarros{
    NSMutableArray *carros = [[[NSMutableArray alloc]init]autorelease];
    for (int i = 0; i < 20; i++) {
        Carro *c = [[Carro alloc] init];
        [c setNome:[NSString stringWithFormat:@"Carro %d", i]];
        [c setDesc:[NSString stringWithFormat:@"Desc Carro %d", i]];
        [c setUrl_foto:@"Ferrari.png"];
        [c setUrl_info:@"http://www.google.com.br"];
        
        //Adiciona o carro no Array e faz o release
        [carros addObject:c];
        [c release];
    }
    return carros;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}


@end
