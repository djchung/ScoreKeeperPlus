//
//  AddScoreViewController.m
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddScoreViewController.h"
#import "ScoreKeeperPlusViewController.h"

@implementation AddScoreViewController
@synthesize addScoreField = _addScoreField;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.addScoreField becomeFirstResponder];
}

- (void)viewDidUnload
{
    [self setAddScoreField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)updateScoreButton {
    int currentPlayer = [self.delegate currentPlayer];
    int score = [self.addScoreField.text intValue];
    
    [self.delegate addScore:score forPlayer:currentPlayer];
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
