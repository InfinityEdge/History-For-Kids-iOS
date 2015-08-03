//
//  SecondMenuScene.m
//  History For Kids
//
//  Created by haythem on 4/17/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "SecondMenuScene.h"
#import "Level01.h"

@implementation SecondMenuScene


-(void) didMoveToView:(SKView *)view{
    if(!self.contentCreated){
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

-(void) createSceneContents{
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self setupMenu];
}

-(void) setupMenu {
    SKTexture *spriteBg = [SKTexture textureWithImageNamed:@"main_menu"];
    SKSpriteNode *bg = [SKSpriteNode spriteNodeWithTexture:spriteBg];
    bg.xScale = 2.25;
    bg.yScale = 2.25;
    bg.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    bg.zPosition = 0;
    [self addChild:bg];
    
    SKTexture *btnNewGame = [SKTexture textureWithImageNamed:@"new_game"];
    SKSpriteNode *btn = [SKSpriteNode spriteNodeWithTexture:btnNewGame];
    btn.name = @"new";
    btn.xScale = 2;
    btn.yScale = 2;
    btn.position = CGPointMake(CGRectGetMaxX(self.frame) - (CGRectGetMaxX(self.frame)/5), CGRectGetMaxY(self.frame)-(btn.frame.size.height));
    btn.zPosition = 1;
    [self addChild:btn];
    
    SKTexture *btnLoadTexture = [SKTexture textureWithImageNamed:@"load_game"];
    SKSpriteNode *btnLoad = [SKSpriteNode spriteNodeWithTexture:btnLoadTexture];
    btnLoad.name = @"load";
    btnLoad.xScale = 2;
    btnLoad.yScale = 2;
    btnLoad.position = CGPointMake(CGRectGetMaxX(self.frame) - (CGRectGetMaxX(self.frame)/5), CGRectGetMaxY(self.frame)-(btn.frame.size.height)- (CGRectGetMaxY(self.frame)/5));
    btnLoad.zPosition = 1;
    [self addChild:btnLoad];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        SKNode *n = [self nodeAtPoint:[touch locationInNode:self]];
        if ( [n.name isEqual: @"new"]) {
            [self newGame];
        }
        else if ( [n.name isEqual: @"load"]) {
            [self loadGame];
        }
    }
}

-(void)newGame
{
    [self removeAllChildren];
    Level01 *level01 =
    [[Level01 alloc]initWithSize:CGSizeMake(1400, 800)];
    level01.levelReached=1;
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    NSString *currentLevelKey = @"currentlevel";
    
    const NSInteger currentLevel = 1;
    [preferences setInteger:currentLevel forKey:currentLevelKey];
    
    //  Save to disk
    const BOOL didSave = [preferences synchronize];
    if (!didSave)
    {
        //  Couldn't save (I've never seen this happen in real world testing)
    }
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:level01 transition:door];
    

    
}

-(void)loadGame
{[self removeAllChildren];
    Level01 *level01 =
    [[Level01 alloc]initWithSize:CGSizeMake(1400, 800)];
     NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    NSString *currentLevelKey = @"currentlevel";
    
    if ([preferences objectForKey:currentLevelKey] == nil)
    {
        level01.levelReached = 1;
    }
    else
    {
        //  Get current level
        const NSInteger currentLevel = [preferences integerForKey:currentLevelKey];
        level01.levelReached = currentLevel;
    }
    
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:level01 transition:door];
    
}

@end
