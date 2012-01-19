//
//  Player.h
//  ScoreKeeperPlus
//
//  Created by DJ Chung on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) int finalScore;
@property (nonatomic, strong) NSString *name; 

- (void) updateScore:(int)score;


@end
