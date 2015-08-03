//
//  HelpScene.m
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "HelpScene.h"
#import "MainMenuScene.h"


@implementation HelpScene

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
    _currentPanel = 1;
    
    SKTexture *spriteBg = [SKTexture textureWithImageNamed:@"background_blur"];
    SKSpriteNode *bg = [SKSpriteNode spriteNodeWithTexture:spriteBg];
    bg.xScale = 2.25;
    bg.yScale = 2.25;
    bg.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    bg.zPosition = 0;
    [self addChild:bg];
    
    _panelHelpTexture = [SKTexture textureWithImageNamed:@"help1"];
    _panelHelp2Texture = [SKTexture textureWithImageNamed:@"help2"];
    _panelHelp3Texture = [SKTexture textureWithImageNamed:@"help3"];
    
    
    
    _PanelHelp = [SKSpriteNode spriteNodeWithTexture:_panelHelpTexture];
    _PanelHelp.name = @"help";
    _PanelHelp.xScale = 2;
    _PanelHelp.yScale = 2;
    _PanelHelp.position = CGPointMake(CGRectGetMidX(self.frame) , CGRectGetMidY(self.frame));
    _PanelHelp.zPosition = 1;
    [self addChild:_PanelHelp];
    
    SKTexture *btnBackTexture = [SKTexture textureWithImageNamed:@"btn004"];
    SKSpriteNode *btnBack = [SKSpriteNode spriteNodeWithTexture:btnBackTexture];
    btnBack.name = @"back";
    btnBack.xScale = 2;
    btnBack.yScale = 2;
    btnBack.position = CGPointMake(CGRectGetMaxX(_PanelHelp.frame) - (btnBack.self.size.width), CGRectGetMaxY(_PanelHelp.frame) - (btnBack.self.size.height));
    btnBack.zPosition = 1;
    [self addChild:btnBack];
    
    SKTexture *btnRightTexture = [SKTexture textureWithImageNamed:@"btn005"];
    _btnRight = [SKSpriteNode spriteNodeWithTexture:btnRightTexture];
    _btnRight.name = @"right";
    _btnRight.xScale = 2;
    _btnRight.yScale = 2;
    _btnRight.position = CGPointMake(CGRectGetMaxX(_PanelHelp.frame) + (_btnRight.self.size.width), CGRectGetMidY(_PanelHelp.frame));
    _btnRight.zPosition = 1;
    [self addChild:_btnRight];
    
    SKTexture *btnLeftTexture = [SKTexture textureWithImageNamed:@"btn006"];
    _btnLeft = [SKSpriteNode spriteNodeWithTexture:btnLeftTexture];
    _btnLeft.name = @"left";
    _btnLeft.xScale = 2;
    _btnLeft.yScale = 2;
    _btnLeft.position = CGPointMake(CGRectGetMinX(_PanelHelp.frame) - (_btnLeft.self.size.width), CGRectGetMidY(_PanelHelp.frame));
    _btnLeft.zPosition = 1;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        SKNode *n = [self nodeAtPoint:[touch locationInNode:self]];
        if ( [n.name isEqual: @"right"]) {
            if(_currentPanel ==  1){
            _PanelHelp.texture = _panelHelp2Texture;
                _currentPanel++;
                [self addChild:_btnLeft];
            }
            else if (_currentPanel == 2){
                _PanelHelp.texture = _panelHelp3Texture;
                _currentPanel++;
                [_btnRight removeFromParent];
                
            }
        }
        if ( [n.name isEqual: @"left"]) {
            if(_currentPanel ==  2){
                _PanelHelp.texture = _panelHelpTexture;
                _currentPanel--;
                [_btnLeft removeFromParent];
            }
            else if (_currentPanel == 3){
                _PanelHelp.texture = _panelHelp2Texture;
                _currentPanel--;
                [_btnRight removeFromParent];
                [self addChild:_btnRight];
            }
        }
        else if([n.name isEqual:@"back"]){
            [self removeAllChildren];
            SKScene *mainMenu =
            [[MainMenuScene alloc]initWithSize:self.size];
            SKTransition *door = [SKTransition doorwayWithDuration:1.0];
            [self.view presentScene:mainMenu transition:door];        }
    }
}


@end
