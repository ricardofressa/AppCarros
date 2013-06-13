//
//  SobreViewController.h
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SobreViewController : UIViewController <UIWebViewDelegate>{
    
}
@property(retain, nonatomic) IBOutlet UIWebView *webView;
@property(retain, nonatomic) IBOutlet UIActivityIndicatorView *progress;



@end
