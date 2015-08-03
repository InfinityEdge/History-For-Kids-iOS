//
//  LevelEgyptian.m
//  History For Kids
//
//  Created by haythem on 4/17/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "LevelEgyptian.h"
#import "MainMenuScene.h"
#import "Level01.h"

@implementation LevelEgyptian

-(void) didMoveToView:(SKView *)view{
    if(!self.contentCreated){
        [self createSceneContents];
        self.contentCreated = YES;
        
    }
}

-(void) createSceneContents{
    
    
    self.myWorldView = [SKNode node];
    [self addChild:self.myWorldView];
    
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    self.mapEgyptian = [JSTileMap mapNamed:@"levelEgyptian.tmx"];
    self.mapEgyptian.zPosition = -100;
    [self.myWorldView addChild:self.mapEgyptian];
    
    self.backControl = [SKSpriteNode spriteNodeWithImageNamed:@"back.png"];
    self.backControl.position = CGPointMake(25,450);
    self.backControl.xScale = 1;
    self.backControl.yScale = 1;
    self.backControl.zPosition = 15;
    self.backControl.name = @"back";
    [_myWorldView addChild:_backControl];
    
    self.mummy = [SKSpriteNode spriteNodeWithImageNamed:@"mummy.png"];
    self.mummy.position = CGPointMake(50,225);
    self.mummy.xScale = 1.5;
    self.mummy.yScale = 1.5;
    self.mummy.zPosition = 15;
    self.mummy.name = @"mum";
    [_myWorldView addChild:_mummy];
    
    self.pharaon = [SKSpriteNode spriteNodeWithImageNamed:@"pharao.png"];
    self.pharaon.position = CGPointMake(650,150);
    self.pharaon.xScale = 1.5;
    self.pharaon.yScale = 1.5;
    self.pharaon.zPosition = 15;
    self.pharaon.name = @"phar";
    [_myWorldView addChild:_pharaon];
    
    self.horus = [SKSpriteNode spriteNodeWithImageNamed:@"horus.png"];
    self.horus.position = CGPointMake(800,400);
    self.horus.xScale = 1.5;
    self.horus.yScale = 1.5;
    self.horus.zPosition = 15;
    self.horus.name = @"hor";
    [_myWorldView addChild:_horus];
    
    self.horusPanel = [SKSpriteNode spriteNodeWithImageNamed:@"horusP.png"];
    self.horusPanel.position = CGPointMake(400,300);
    self.horusPanel.xScale = 1;
    self.horusPanel.yScale = 1;
    self.horusPanel.zPosition = 15;
    self.horusPanel.name = @"horP";

    
    self.pharaonPanel = [SKSpriteNode spriteNodeWithImageNamed:@"pharaos.png"];
    self.pharaonPanel.position = CGPointMake(400,300);
    self.pharaonPanel.xScale = 1;
    self.pharaonPanel.yScale = 1;
    self.pharaonPanel.zPosition = 15;
    self.pharaonPanel.name = @"pharP";

    
    self.mummyPanel = [SKSpriteNode spriteNodeWithImageNamed:@"mummies.png"];
    self.mummyPanel.position = CGPointMake(400,300);
    self.mummyPanel.xScale = 1;
    self.mummyPanel.yScale = 1;
    self.mummyPanel.zPosition = 15;
    self.mummyPanel.name = @"mumP";
    
    self.dialog = [SKSpriteNode spriteNodeWithImageNamed:@"key_yellow.png"];
    self.dialog.position = CGPointMake(400,300);
    self.dialog.xScale = 1;
    self.dialog.yScale = 1;
    self.dialog.zPosition = 30;
    _dialog.name =@"dialog";



}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];

    
    if ([node.name isEqualToString:@"back"]) {
        [self gotoMainMenu];
    }
    else  if ([node.name isEqualToString:@"hor"]) {
        [_horus removeFromParent];
        [_myWorldView addChild:_horusPanel];
    }
    
    else  if ([node.name isEqualToString:@"mum"]) {
        [_mummy removeFromParent];
        [_myWorldView addChild:_mummyPanel];
    }
    
    else  if ([node.name isEqualToString:@"phar"]) {
        [_pharaon removeFromParent];
        [_myWorldView addChild:_pharaonPanel];
    }
    
    else  if ([node.name isEqualToString:@"horP"]) {
        [_horusPanel removeFromParent];
        _cleared++;

    }
    else  if ([node.name isEqualToString:@"pharP"]) {
        [_pharaonPanel removeFromParent];
        _cleared ++;
        
    }
    else  if ([node.name isEqualToString:@"mumP"]) {
        [_mummyPanel removeFromParent];
        _cleared++;
        
    }
    
    else  if ([node.name isEqualToString:@"dialog"]) {
        [self goToLevelChooser];

        
    }
    
}

-(void) update:(NSTimeInterval)currentTime{
    if(_cleared ==3){
        [_myWorldView addChild:_dialog];
        _cleared++;
    }
}


-(void)gotoMainMenu
{
    [self removeAllChildren];
    SKScene *mainMenu =
    [[MainMenuScene alloc]initWithSize:CGSizeMake(1400, 800)];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:mainMenu transition:door];
    
}

-(void) goToLevelChooser{
    [self removeAllChildren];
    Level01 *level01 =
    [[Level01 alloc]initWithSize:CGSizeMake(1400, 800)];
    level01.levelReached=4;
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    NSString *currentLevelKey = @"currentlevel";
    
    const NSInteger currentLevel = 3;
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
@end
