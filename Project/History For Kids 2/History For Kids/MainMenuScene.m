//
//  MainMenuScene.m
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "MainMenuScene.h"
#import "SecondMenuScene.h"
#import "HelpScene.h"
#import "AboutScene.h"

@implementation MainMenuScene

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
    
    SKTexture *btnBg = [SKTexture textureWithImageNamed:@"btn001"];
    SKSpriteNode *btn = [SKSpriteNode spriteNodeWithTexture:btnBg];
    btn.name = @"play";
    btn.xScale = 2;
    btn.yScale = 2;
    btn.position = CGPointMake(CGRectGetMaxX(self.frame) - (CGRectGetMaxX(self.frame)/5), CGRectGetMaxY(self.frame)-(btn.frame.size.height));
    btn.zPosition = 1;
    [self addChild:btn];
    
    SKTexture *btnHelpTexture = [SKTexture textureWithImageNamed:@"btn002"];
    SKSpriteNode *btnHelp = [SKSpriteNode spriteNodeWithTexture:btnHelpTexture];
    btnHelp.name = @"help";
    btnHelp.xScale = 2;
    btnHelp.yScale = 2;
    btnHelp.position = CGPointMake(CGRectGetMaxX(self.frame) - (CGRectGetMaxX(self.frame)/5), CGRectGetMaxY(self.frame)-(btn.frame.size.height)- (CGRectGetMaxY(self.frame)/5));
    btnHelp.zPosition = 1;
    [self addChild:btnHelp];
    
    SKTexture *btnAboutTexture = [SKTexture textureWithImageNamed:@"btn003"];
    SKSpriteNode *btnAbout = [SKSpriteNode spriteNodeWithTexture:btnAboutTexture];
    btnAbout.name = @"about";
    btnAbout.xScale = 2;
    btnAbout.yScale = 2;
    btnAbout.position = CGPointMake(CGRectGetMaxX(self.frame) - (CGRectGetMaxX(self.frame)/5), CGRectGetMaxY(self.frame)-(btn.frame.size.height)- (CGRectGetMaxY(self.frame)/2.5));
    btnAbout.zPosition = 1;
    
    [self addChild:btnAbout];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        SKNode *n = [self nodeAtPoint:[touch locationInNode:self]];
        if ( [n.name isEqual: @"play"]) {
            [self gotoLevel01];
        }
        else if ( [n.name isEqual: @"help"]) {
            [self goToHelp];
        }
        else if ( [n.name isEqual: @"about"]) {
            [self goToAbout];
        }
      
        else
            return;
    } // end of UITouch
}

-(void)gotoLevel01
{
    [self removeAllChildren];
    SKScene *secondMenu =
    [[SecondMenuScene alloc]initWithSize:self.size];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:secondMenu transition:door];
    
}

-(void)goToHelp
{
    [self removeAllChildren];
    SKScene *help =
    [[HelpScene alloc]initWithSize:self.size];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:help transition:door];
    
}

-(void)goToAbout
{
    [self removeAllChildren];
    SKScene *about =
    [[AboutScene alloc]initWithSize:self.size];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:about transition:door];
    
}



@end
