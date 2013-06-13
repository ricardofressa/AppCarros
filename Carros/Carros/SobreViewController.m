//
//  SobreViewController.m
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import "SobreViewController.h"

#define URL_SOBRE @"http://www.livroiphone.com.br/carros/sobre.htm"

@interface SobreViewController ()

@end

@implementation SobreViewController

@synthesize webView, progress;


#pragma mark - View LifeCycle
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //Titulo
    self.title = @"Sobre";
    
    //Inicia a animação do activity indicator
    [self.progress startAnimating];
    
    //Carrega a URL no webView
    NSURL *url = [NSURL URLWithString:URL_SOBRE];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
    //Informa o delegate para receber os eventos
    //[self.webView setDelegate:self];
}

#pragma mark - UIWebViewDelegate
- (void) webViewDidFinishLoad:(UIWebView *)webView{
    [progress stopAnimating];
}

#pragma mark dealloc
- (void)dealloc{
    [super dealloc];
    [self.webView dealloc];
    [self.progress dealloc];
}


@end
