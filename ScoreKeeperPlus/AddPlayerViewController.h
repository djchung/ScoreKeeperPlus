//
//  AddPlayerViewController.h
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddPlayerViewControllerDelegate <NSObject>

- (void)addPlayer:(NSString *)name initialScore:(int)score;

@end
@interface AddPlayerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *EnterPlayerNameField;

@property (strong, nonatomic) IBOutlet UITextField *EnterInitialScoreField;

@property (strong, nonatomic) id delegate;

- (IBAction)addPlayerButton;


@end
