//
//  AboutScene.m
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "AboutScene.h"
#import "MainMenuScene.h"

@implementation AboutScene

-(void) didMoveToView:(SKView *)view{
    if(!self.contentCreated){
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

-(void) createSceneContents{
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self setupHelp];
}

-(void) setupHelp{

    
    SKTexture *spriteBg = [SKTexture textureWithImageNamed:@"background_blur"];
    SKSpriteNode *bg = [SKSpriteNode spriteNodeWithTexture:spriteBg];
    bg.xScale = 2.25;
    bg.yScale = 2.25;
    bg.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    bg.zPosition = 0;
    [self addChild:bg];
    
    SKTexture *aboutTexture = [SKTexture textureWithImageNamed:@"about"];
    SKSpriteNode *aboutPanel = [SKSpriteNode spriteNodeWithTexture:aboutTexture];
    aboutPanel.xScale = 2;
    aboutPanel.yScale = 2;
    aboutPanel.position = CGPointMake(CGRectGetMidX(self.frame) , CGRectGetMidY(self.frame));
    aboutPanel.zPosition = 1;
    [self addChild:aboutPanel];
    
    SKTexture *btnBackTexture = [SKTexture textureWithImageNamed:@"btn004"];
    SKSpriteNode *btnBack = [SKSpriteNode spriteNodeWithTexture:btnBackTexture];
    btnBack.name = @"back";
    btnBack.xScale = 2;
    btnBack.yScale = 2;
    btnBack.position = CGPointMake(CGRectGetMaxX(aboutPanel.frame) - (btnBack.self.size.width), CGRectGetMaxY(aboutPanel.frame) - (btnBack.self.size.height));
    btnBack.zPosition = 1;
    [self addChild:btnBack];
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        SKNode *n = [self nodeAtPoint:[touch locationInNode:self]];
        if ( [n.name isEqual: @"back"]) {
            [self removeAllChildren];
            SKScene *mainMenu =
            [[MainMenuScene alloc]initWithSize:self.size];
            SKTransition *door = [SKTransition doorwayWithDuration:1.0];
            [self.view presentScene:mainMenu transition:door];          }
    }
}
@end
