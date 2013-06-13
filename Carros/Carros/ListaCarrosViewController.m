//
//  ListaCarrosViewController.m
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "ListaCarrosViewController.h"
#import "Alerta.h"
#import "Carro.h"
#import "CarroService.h"

@interface ListaCarrosViewController ()

@end

@implementation ListaCarrosViewController
@synthesize tableView, carros;

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Titulo
    self.title = @"Carros";
    //Busca os carros
    self.carros = [CarroService getCarros];
}

#pragma mark - TableView
//Retorna a quantidade de linhas para criar a tabela, que é a quantidade de carros
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //Retorna a quantidade de carros no array
    return [carros count];
}

//Retorna a célula que vai ser o conteúdo para a linha solicitada
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Cria a célula desta linha da tabela
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil){
        //Faz cache da célula para evitar criar muitos objetos desnecessários durante o scroll
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //Número da linha (0,1,2,3,4 etc)
    NSInteger linha = indexPath.row;
    Carro *c = [carros objectAtIndex:linha];
    //Texto
    cell.textLabel.text = c.nome;
    
    //Imagem
    cell.imageView.image = [UIImage imageNamed:c.url_foto];
    
    return cell;
}
//Executa ao selecionar a linha do TableView
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //Recupera o indice da linha selecionada
    NSInteger linha = indexPath.row;
    Carro *c = [carros objectAtIndex:linha];
    
    //Cria a mensagem
    NSString *msg = [NSString stringWithFormat:@"Selecionou o Carro %@", c.nome];
    
    //Exibe o alerta
    [Alerta alerta:msg];
}

#pragma dealloc
- (void)dealloc
{
    [super dealloc];
    [tableView release];
    [carros release];
}




@end
