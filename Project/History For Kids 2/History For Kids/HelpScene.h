//
//  HelpScene.h
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface HelpScene : SKScene
@property BOOL contentCreated;
@property SKSpriteNode *PanelHelp;
@property SKTexture *panelHelpTexture;
@property SKTexture *panelHelp2Texture;
@property SKTexture *panelHelp3Texture;
@property int currentPanel;
@property SKSpriteNode *btnRight;
@property SKSpriteNode *btnLeft;
@end
