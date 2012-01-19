//
//  ScoreKeeperPlusViewController.m
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScoreKeeperPlusViewController.h"
#import "AddPlayerViewController.h"
#import "AddScoreViewController.h"
#import "Player.h"

@interface ScoreKeeperPlusViewController()

@property (nonatomic, strong) NSMutableArray *playerArray;

@end

@implementation ScoreKeeperPlusViewController

@synthesize playerArray = _playerArray;
@synthesize currentPlayer = _currentPlayer;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.playerArray = [[NSMutableArray alloc]init];
        self.title = @"Scoreboard";
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
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addPlayer)];
    self.navigationItem.rightBarButtonItem = addButton;
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.playerArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [[self.playerArray objectAtIndex:indexPath.row]name];
    int score = [[self.playerArray objectAtIndex:indexPath.row]finalScore];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", score];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.playerArray removeObjectAtIndex:indexPath.row];
        [self.tableView reloadData];
        self.editing = NO;
    }
}

- (void)addPlayer
{
    AddPlayerViewController *addpvc = [[AddPlayerViewController alloc]init];
    addpvc.delegate = self;
    UINavigationController *adduinav = [[UINavigationController alloc]initWithRootViewController:addpvc];
    [self.navigationController presentModalViewController:adduinav animated:YES];
    
}

- (void)addPlayer:(NSString *)name initialScore:(int)score
{
    Player *newPlayer = [[Player alloc]init];
    newPlayer.name = name;
    newPlayer.finalScore = score;
    [self.playerArray addObject:newPlayer];
    [self.tableView reloadData];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AddScoreViewController *asvc = [[AddScoreViewController alloc]init];
    asvc.delegate = self;
    self.currentPlayer = indexPath.row;
    [self.navigationController pushViewController:asvc animated:YES];
    
}

- (void) addScore:(int)score forPlayer:(int)index;
{
    Player *currentPlayer = [self.playerArray objectAtIndex:index];
    [currentPlayer updateScore:score];
    [self.tableView reloadData];
}
@end
