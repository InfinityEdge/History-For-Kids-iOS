//
//  Level01.h
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "JSTileMap.h"

@interface Level01 : SKScene
@property BOOL contentCreated;
@property (nonatomic, strong) JSTileMap *map1;
@property (nonatomic, strong) SKSpriteNode *alien;
@property (nonatomic, strong) SKAction *idleAnimation;
@property (nonatomic, strong) SKAction *walkAnimation;
@property (nonatomic, strong) SKAction *walk2Animation;
@property (nonatomic, strong) SKAction *walk3Animation;
@property (nonatomic, strong) SKAction *groupUp;
@property (nonatomic, strong) SKNode *myWorldView;
@property (nonatomic, strong) SKSpriteNode *rightControl;
@property (nonatomic, strong) SKSpriteNode *leftControl;
@property (nonatomic, strong) SKSpriteNode *SelectControl;
@property (nonatomic, strong) SKSpriteNode *SelectControl2;
@property (nonatomic, strong) SKSpriteNode *SelectControl3;
@property (nonatomic, strong) SKSpriteNode *upControl;
@property (nonatomic, strong) SKSpriteNode *upControl2;
@property (nonatomic, strong) SKSpriteNode *downControl;
@property (nonatomic, strong) SKSpriteNode *downControl2;
@property (nonatomic, strong) SKSpriteNode *backControl;
@property  NSTimeInterval touchTime;
@property  NSTimeInterval elapsedTime;
@property BOOL isMovingLeft;
@property BOOL isMovingRight;
@property BOOL isMovingUp;
@property BOOL isMovingUp2;
@property BOOL isMovingDown;
@property BOOL isMovingDown2;
@property int levelReached;
@property (nonatomic, strong) NSString *mapName;
@end
