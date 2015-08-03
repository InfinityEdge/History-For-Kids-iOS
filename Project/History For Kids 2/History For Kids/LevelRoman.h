//
//  LevelRoman.h
//  History For Kids
//
//  Created by haythem on 4/12/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "JSTileMap.h"

@interface LevelRoman : SKScene
@property BOOL contentCreated;
@property (nonatomic, strong) JSTileMap *mapRoman;
@property (nonatomic, strong) SKNode *myWorldView;
@property (nonatomic, strong) SKSpriteNode *alien;
@property (nonatomic, strong) SKSpriteNode *dialog;
@property (nonatomic, strong) SKAction *idleAnimation;
@property (nonatomic, strong) SKAction *walkAnimation;
@property (nonatomic, strong) SKAction *walk2Animation;
@property (nonatomic, strong) SKSpriteNode *rightControl;
@property (nonatomic, strong) SKSpriteNode *leftControl;
@property (nonatomic, strong) SKSpriteNode *SelectControl;
@property (nonatomic, strong) SKSpriteNode *SelectControl2;
@property (nonatomic, strong) SKSpriteNode *SelectControl3;
@property (nonatomic, strong) SKSpriteNode *SelectControl4;
@property (nonatomic, strong) SKSpriteNode *SelectControl5;
@property (nonatomic, strong) SKSpriteNode *book1;
@property (nonatomic, strong) SKSpriteNode *book2;
@property (nonatomic, strong) SKSpriteNode *book3;
@property (nonatomic, strong) SKSpriteNode *book4;
@property (nonatomic, strong) SKSpriteNode *bookPanel1;
@property (nonatomic, strong) SKSpriteNode *bookPanel2;
@property (nonatomic, strong) SKSpriteNode *bookPanel3;
@property (nonatomic, strong) SKSpriteNode *bookPanel4;
@property (nonatomic, strong) SKSpriteNode *politician;
@property (nonatomic, strong) SKSpriteNode *panel;
@property (nonatomic, strong) SKLabelNode *quiz11;
@property (nonatomic, strong) SKLabelNode *quiz12;
@property (nonatomic, strong) SKLabelNode *quiz13;
@property (nonatomic, strong) SKLabelNode *quiz14;
@property (nonatomic, strong) SKLabelNode *quiz21;
@property (nonatomic, strong) SKLabelNode *quiz22;
@property (nonatomic, strong) SKLabelNode *quiz23;
@property (nonatomic, strong) SKLabelNode *quiz24;
@property (nonatomic, strong) SKLabelNode *quiz31;
@property (nonatomic, strong) SKLabelNode *quiz32;
@property (nonatomic, strong) SKLabelNode *quiz33;
@property (nonatomic, strong) SKLabelNode *quiz34;
@property  NSTimeInterval touchTime;
@property  NSTimeInterval elapsedTime;
@property  NSTimeInterval deltaTime;
@property  NSTimeInterval countTime;
@property BOOL isMovingLeft;
@property BOOL isMovingRight;
@property BOOL bookRevealed1;
@property BOOL bookRevealed2;
@property BOOL bookRevealed3;
@property BOOL bookRevealed4;
@property BOOL bookCleared1;
@property BOOL bookCleared2;
@property BOOL bookCleared3;
@property BOOL bookCleared4;
@property BOOL policticianRevealed;
@property BOOL quizAsked1;
@property BOOL quizAsked2;
@property BOOL quizAsked3;
@property BOOL quizAnswered1;
@property BOOL quizAnswered2;
@property BOOL quizAnswered3;
@property  CGPoint deltaPosition;
@property (nonatomic, strong) SKAction *walk3Animation;
@property (nonatomic, strong) SKSpriteNode *upControl;
@property (nonatomic, strong) SKSpriteNode *downControl;
@property (nonatomic, strong) SKSpriteNode *backControl;
@property BOOL isMovingUp;
@property BOOL isMovingDown;
@end
