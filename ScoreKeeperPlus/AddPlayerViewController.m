//
//  AddPlayerViewController.m
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddPlayerViewController.h"

@implementation AddPlayerViewController
@synthesize EnterPlayerNameField = _EnterPlayerNameField;
@synthesize EnterInitialScoreField = _EnterInitialScoreField;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
                                
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
    UIBarButtonItem *cancel = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    self.navigationItem.leftBarButtonItem = cancel;
}

- (void)viewDidUnload
{
    [self setEnterPlayerNameField:nil];
    [self setEnterInitialScoreField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)addPlayerButton {
    NSString *name = self.EnterPlayerNameField.text;
    int initialScore = [self.EnterInitialScoreField.text intValue];
    [self.delegate addPlayer:name initialScore:initialScore];
    [self.delegate dismissModalViewControllerAnimated:YES];
}

- (void)cancel{
    [self.delegate dismissModalViewControllerAnimated:YES];
}
@end
