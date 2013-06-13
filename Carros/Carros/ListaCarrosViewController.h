//
//  ListaCarrosViewController.h
//  Carros
//
//  Created by Ricardo Cardoso on 08/06/13.
//  Copyright (c) 2013 Ricardo Cardoso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListaCarrosViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *carros;
}

@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *carros;

@end
