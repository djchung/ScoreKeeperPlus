//
//  AddScoreViewController.h
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddScoreViewControllerDelegate <NSObject>

- (void) addScore:(int)score forPlayer:(int)index;

@end
@interface AddScoreViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *addScoreField;
@property (strong, nonatomic) id delegate;

- (IBAction)updateScoreButton;

@end
