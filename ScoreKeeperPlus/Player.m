//
//  Player.m
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize finalScore = _finalScore;
@synthesize name = _name;

- (void) updateScore:(int)score
{
    self.finalScore += score;
}
@end
