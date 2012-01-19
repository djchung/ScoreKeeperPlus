//
//  ScoreKeeperPlusViewController.h
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddPlayerViewController.h"
#import "AddScoreViewController.h"

@interface ScoreKeeperPlusViewController : UITableViewController <AddPlayerViewControllerDelegate, AddScoreViewControllerDelegate>

@property (nonatomic, assign) int currentPlayer;

@end
