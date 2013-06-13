//
//  Carro.h
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carro : NSObject{
    NSString *nome;
    NSString *desc;
    //Url para a foto do carro
    NSString *url_foto;
    //Url com um site com informações do carro
    NSString *url_info;
    //Url com o video do carro
    NSString *url_video;
    //Coordenadas da fábrica ou país de origem do carro
    NSString *latitude;
    NSString *longitude;
}

//Encapsulamento
@property(nonatomic, retain) NSString *nome;
@property(nonatomic, retain) NSString *desc;
@property(nonatomic, retain) NSString *url_foto;
@property(nonatomic, retain) NSString *url_info;
@property(nonatomic, retain) NSString *url_video;
@property(nonatomic, retain) NSString *latitude;
@property(nonatomic, retain) NSString *longitude;

@end
