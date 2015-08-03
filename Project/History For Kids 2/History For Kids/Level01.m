//
//  Level01.m
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "Level01.h"
#import "LevelGreek.h"
#import "LevelRoman.h"
#import "LevelEgyptian.h"
#import "MainMenuScene.h"

@implementation Level01

-(void) didMoveToView:(SKView *)view{
    if(!self.contentCreated){
        switch (_levelReached) {
             
            case 1:
                _mapName=@"levels-1.tmx";
                break;
            case 2:
                _mapName=@"levels-2.tmx";
                break;
            case 3:
                _mapName=@"levels-3.tmx";
                break;
            case 4:
                _mapName=@"levels-4.tmx";
                break;
                
            default:
                _mapName=@"levels-1.tmx";
                break;
        }
        [self createSceneContents];
        self.contentCreated = YES;
        NSLog(@"current level %i",_levelReached);
    }
}

-(void) createSceneContents{
    
    
    self.myWorldView = [SKNode node];
    [self addChild:self.myWorldView];
    
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    self.map1 = [JSTileMap mapNamed:_mapName];
    self.map1.zPosition = -100;
    [self.myWorldView addChild:self.map1];
 
    
    self.alien = [SKSpriteNode spriteNodeWithImageNamed:@"p2_wave1.png"];
    self.alien.position = CGPointMake(self.size.width/10,self.size.height / 4.4);
    self.alien.xScale = 2;
    self.alien.yScale = 2;
    self.alien.zPosition = 15;
    [self.map1 addChild:self.alien];
    
    self.rightControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_right.png"];
    self.rightControl.position = CGPointMake(self.size.width/8 + self.rightControl.size.width,self.size.height / 6 -self.rightControl.size.height);
    self.rightControl.xScale = 1;
    self.rightControl.yScale = 1;
    self.rightControl.zPosition = 15;
    self.rightControl.name = @"right";
    [self.myWorldView addChild:self.rightControl];
    
    self.leftControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_left.png"];
    self.leftControl.position = CGPointMake(self.size.width/8- self.leftControl.size.width,self.size.height / 6 - self.leftControl.size.height);
    self.leftControl.xScale = 1;
    self.leftControl.yScale = 1;
    self.leftControl.zPosition = 15;
    self.leftControl.name = @"left";
    [self.myWorldView addChild:self.leftControl];
    
    self.SelectControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl.position = CGPointMake(self.size.width-_SelectControl.size.width,_SelectControl.size.height);
    self.SelectControl.xScale = 1.5;
    self.SelectControl.yScale = 1.5;
    self.SelectControl.zPosition = 15;
    self.SelectControl.name = @"select";
    
    self.SelectControl2 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl2.position = CGPointMake(1400,_SelectControl2.size.height);
    self.SelectControl2.xScale = 1.5;
    self.SelectControl2.yScale = 1.5;
    self.SelectControl2.zPosition = 15;
    self.SelectControl2.name = @"select2";
    
    self.SelectControl3 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl3.position = CGPointMake(1400,650);
    self.SelectControl3.xScale = 1.5;
    self.SelectControl3.yScale = 1.5;
    self.SelectControl3.zPosition = 15;
    self.SelectControl3.name = @"select3";
    
    self.upControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_up.png"];
    self.upControl.position = CGPointMake(self.size.width-_upControl.size.width,_upControl.size.height);
    self.upControl.xScale = 1;
    self.upControl.yScale = 1;
    self.upControl.zPosition = 15;
    self.upControl.name = @"up";
    
    self.upControl2 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_up.png"];
    self.upControl2.position = CGPointMake(_alien.position.x + 20,_alien.position.y);
    self.upControl2.xScale = 1;
    self.upControl2.yScale = 1;
    self.upControl2.zPosition = 15;
    self.upControl2.name = @"up2";
    
    self.downControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_down.png"];
    self.downControl.position = CGPointMake(self.size.width-_upControl.size.width+ _downControl.size.width + 10,_upControl.size.height);
    self.downControl.xScale = 1;
    self.downControl.yScale = 1;
    self.downControl.zPosition = 15;
    self.downControl.name = @"down";
    
    self.downControl2 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_down.png"];
    self.downControl2.position = CGPointMake(_alien.position.x + _downControl2.size.width + 30,_alien.position.y);
    self.downControl2.xScale = 1;
    self.downControl2.yScale = 1;
    self.downControl2.zPosition = 15;
    self.downControl2.name = @"down2";
    
    self.backControl = [SKSpriteNode spriteNodeWithImageNamed:@"back.png"];
    self.backControl.position = CGPointMake(50,700);
    self.backControl.xScale = 1.5;
    self.backControl.yScale = 1.5;
    self.backControl.zPosition = 15;
    self.backControl.name = @"back";
    [_myWorldView addChild:_backControl];
    
    

    
    //creates the atlas for the idle animation
    SKTextureAtlas *atlas = [SKTextureAtlas atlasNamed:@"wave"];
    SKTexture *f1 = [atlas textureNamed:@"p2_wave1.png"];
    SKTexture *f2 = [atlas textureNamed:@"p2_wave2.png"];
    SKTexture *f3 = [atlas textureNamed:@"p2_wave3.png"];
    SKTexture *f4 = [atlas textureNamed:@"p2_wave4.png"];
    SKTexture *f5 = [atlas textureNamed:@"p2_wave5.png"];
    SKTexture *f6 = [atlas textureNamed:@"p2_wave6.png"];
    SKTexture *f7 = [atlas textureNamed:@"p2_wave7.png"];
    SKTexture *f8 = [atlas textureNamed:@"p2_wave8.png"];
    SKTexture *f9 = [atlas textureNamed:@"p2_wave9.png"];
    NSArray *alienIdleTextures = @[f1,f2,f3,f4,f5,f6,f7,f8,f9];
    
    //creates the atlas for the walking to the right animation
    SKTextureAtlas *walkAtlas = [SKTextureAtlas atlasNamed:@"walk2"];
    SKTexture *w1 = [walkAtlas textureNamed:@"p2_walk01.png"];
    SKTexture *w2 = [walkAtlas textureNamed:@"p2_walk02.png"];
    SKTexture *w3 = [walkAtlas textureNamed:@"p2_walk03.png"];
    SKTexture *w4 = [walkAtlas textureNamed:@"p2_walk04.png"];
    SKTexture *w5 = [walkAtlas textureNamed:@"p2_walk05.png"];
    SKTexture *w6 = [walkAtlas textureNamed:@"p2_walk06.png"];
    SKTexture *w7 = [walkAtlas textureNamed:@"p2_walk07.png"];
    SKTexture *w8 = [walkAtlas textureNamed:@"p2_walk08.png"];
    SKTexture *w9 = [walkAtlas textureNamed:@"p2_walk09.png"];
    SKTexture *w10 = [walkAtlas textureNamed:@"p2_walk10.png"];
    SKTexture *w11 = [walkAtlas textureNamed:@"p2_walk11.png"];
    NSArray *alienWalkTextures = @[w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11];
    
    //creates atlas for the walking tothe left animation
    SKTextureAtlas *walk2Atlas = [SKTextureAtlas atlasNamed:@"walk"];
    SKTexture *w21 = [walk2Atlas textureNamed:@"p2_walk01.png"];
    SKTexture *w22 = [walk2Atlas textureNamed:@"p2_walk02.png"];
    SKTexture *w23 = [walk2Atlas textureNamed:@"p2_walk03.png"];
    SKTexture *w24 = [walk2Atlas textureNamed:@"p2_walk04.png"];
    SKTexture *w25 = [walk2Atlas textureNamed:@"p2_walk05.png"];
    SKTexture *w26 = [walk2Atlas textureNamed:@"p2_walk06.png"];
    SKTexture *w27 = [walk2Atlas textureNamed:@"p2_walk07.png"];
    SKTexture *w28 = [walk2Atlas textureNamed:@"p2_walk08.png"];
    SKTexture *w29 = [walk2Atlas textureNamed:@"p2_walk09.png"];
    SKTexture *w210 = [walk2Atlas textureNamed:@"p2_walk10.png"];
    SKTexture *w211 = [walk2Atlas textureNamed:@"p2_walk11.png"];
    NSArray *alienWalk2Textures = @[w21,w22,w23,w24,w25,w26,w27,w28,w29,w210,w211];
    
    //creates atlas for the walking up animation
    SKTextureAtlas *walk3Atlas = [SKTextureAtlas atlasNamed:@"top"];
    SKTexture *w31 = [walk3Atlas textureNamed:@"climb_1.png"];
    SKTexture *w32 = [walk3Atlas textureNamed:@"climb_2.png"];
    NSArray *alienWalk3Textures = @[w31,w32];
    
    
    //runs the idle animation
    self.idleAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienIdleTextures timePerFrame:0.1]];
    [self.alien runAction:self.idleAnimation ];
    
    //instantiate walking tothe right animation
    self.walkAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienWalkTextures timePerFrame:0.1]];
    
    //instantiate walking to the left animation
    self.walk2Animation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienWalk2Textures timePerFrame:0.1]];
    
    //instantiate walking up animation
    self.walk3Animation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienWalk3Textures timePerFrame:0.1]];
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if ([node.name isEqualToString:@"right"]) {
            _isMovingRight = true;
        [self.alien runAction:_walkAnimation];
        
    }
    else if ([node.name isEqualToString:@"left"]) {
            self.isMovingLeft = true;
            [self.alien runAction:self.walk2Animation];
    }
    
    else if ([node.name isEqualToString:@"up"]) {
        self.isMovingUp = true;
        [self.alien runAction:_walk3Animation];
        if ([_myWorldView childNodeWithName:@"down"] == nil) {
        [self.myWorldView addChild:_downControl];
        }
       
        
    }
    else if ([node.name isEqualToString:@"up2"]) {
        self.isMovingUp2 = true;
        [self.alien runAction:_walk3Animation];
         if ([_myWorldView childNodeWithName:@"down2"] == nil) {
        [self.myWorldView addChild:_downControl2];
         }
        
        
    }
    else if ([node.name isEqualToString:@"down"]) {
        self.isMovingDown = true;
        [self.alien runAction:_walk3Animation];
        if ([_myWorldView childNodeWithName:@"up"] == nil) {
            [self.myWorldView addChild:_upControl];
        }
    }
    
    else if ([node.name isEqualToString:@"down2"]) {
        self.isMovingDown2 = true;
        [self.alien runAction:_walk3Animation];
        if ([_myWorldView childNodeWithName:@"up2"] == nil) {
            [self.myWorldView addChild:_upControl2];
        }
    }
    
    else if ([node.name isEqualToString:@"select"]) {
        
        [self gotoLevelGreek];
    }
    
    else if ([node.name isEqualToString:@"select2"]) {
        
        [self gotoLevelRoman];
    }
    
    else if ([node.name isEqualToString:@"select3"]) {
        
        [self gotoLevelEgyptian];
    }
    
    else if ([node.name isEqualToString:@"back"]) {
        
        [self gotoMainMenu];
    }
    
    
    
    
}


-(void) didSimulatePhysics{
    if(self.alien.position.x>(self.size.width)/2 && self.alien.position.x<820){
        CGPoint oldposition = CGPointMake(self.myWorldView.position.x, self.myWorldView.position.y);
    self.myWorldView.position = CGPointMake(-(self.alien.position.x-(self.size.width/2)),self.myWorldView.position.y);
        CGPoint deltaPosition = CGPointMake(self.myWorldView.position.x - oldposition.x, self.myWorldView.position.y - oldposition.y);
        self.leftControl.position = CGPointMake(self.leftControl.position.x - deltaPosition.x,self.leftControl.position.y + deltaPosition.y);
        self.rightControl.position = CGPointMake(self.rightControl.position.x - deltaPosition.x,self.rightControl.position.y + deltaPosition.y);
        self.backControl.position = CGPointMake(self.backControl.position.x - deltaPosition.x,self.backControl.position.y + deltaPosition.y);
    }
    
    else if ((_alien.position.y > self.size.height/2)){
        CGPoint oldposition = CGPointMake(self.myWorldView.position.x, self.myWorldView.position.y);
        self.myWorldView.position = CGPointMake(self.myWorldView.position.x, -((self.alien.position.y) - self.size.height/2));
        CGPoint deltaPosition = CGPointMake(self.myWorldView.position.x - oldposition.x, self.myWorldView.position.y - oldposition.y);
        self.leftControl.position = CGPointMake(self.leftControl.position.x - deltaPosition.x,self.leftControl.position.y - deltaPosition.y);
        self.rightControl.position = CGPointMake(self.rightControl.position.x - deltaPosition.x,self.rightControl.position.y - deltaPosition.y);
        self.upControl.position = CGPointMake(self.upControl.position.x - deltaPosition.x,self.upControl.position.y - deltaPosition.y);
        self.upControl2.position = CGPointMake(self.upControl2.position.x - deltaPosition.x,self.upControl2.position.y - deltaPosition.y);
        self.downControl.position = CGPointMake(self.downControl.position.x - deltaPosition.x,self.downControl.position.y - deltaPosition.y);
        self.downControl2.position = CGPointMake(self.downControl2.position.x - deltaPosition.x,self.downControl2.position.y - deltaPosition.y);
        self.backControl.position = CGPointMake(self.backControl.position.x - deltaPosition.x,self.backControl.position.y - deltaPosition.y);
    }

}



-(void) update:(NSTimeInterval)currentTime{
    self.elapsedTime = currentTime;
    NSLog(@"player position: %f and height: %f",_alien.position.x,_alien.position.y);
    if(_isMovingRight == true && !_isMovingUp){
        if(self.alien.position.x <=635 && _alien.position.y>=1410){
            NSLog(@"this one 1");
            self.alien.position = CGPointMake(_alien.position.x + 5.0, _alien.position.y);
        }

       else if(self.alien.position.x <=1460 && !(_alien.position.y>=182 && _alien.position.y<=1009)&& !(_alien.position.y>=1010 && _alien.position.y<=1410)&&
               _alien.position.y<1411.0){
            NSLog(@"this one 2");
        self.alien.position = CGPointMake(_alien.position.x + 5.0, _alien.position.y);
        }
           }
   else if(_isMovingLeft == true && !_isMovingUp){
       if(self.alien.position.x >= 20 && _alien.position.y>=1410){
           self.alien.position = CGPointMake(_alien.position.x - 5.0, _alien.position.y);
       }

       else if(self.alien.position.x >= 0 && !(_alien.position.y>=182 && _alien.position.y<=1009)&& !(_alien.position.y>=1010 && _alien.position.y<=1410)&& _alien.position.y<1410.0){
        self.alien.position = CGPointMake(_alien.position.x - 5.0, _alien.position.y);
       }
         }
    
   else if(_isMovingUp){
       if(self.alien.position.y >= 181.81 && self.alien.position.y<1009.0){
           self.alien.position = CGPointMake(_alien.position.x, _alien.position.y + 3.0);
       }
       
   }
    
   else if(_isMovingUp2){
       if(self.alien.position.y >= 1009.0 && self.alien.position.y<1410.0){
           self.alien.position = CGPointMake(_alien.position.x, _alien.position.y + 3.0);
      }
       
   }
   else if(_isMovingDown){
       if(self.alien.position.y >= 182.0 && self.alien.position.y<1010.0){
           self.alien.position = CGPointMake(_alien.position.x, _alien.position.y - 3.0);
       }
       
   }
    
   else if(_isMovingDown2){
       if(self.alien.position.y >= 1010 && self.alien.position.y<1412.0){
           self.alien.position = CGPointMake(_alien.position.x, _alien.position.y - 3.0);
       }
       
   }
   
    
    
    if(_alien.position.x > 310 && _alien.position.x < 360 && _alien.position.y < 500 && _levelReached>0){
        if ([_myWorldView childNodeWithName:@"select"] == nil) {
        [self.myWorldView addChild:_SelectControl];
        }
    }
    else{
        if ([_myWorldView childNodeWithName:@"select"] != nil) {
            [_SelectControl removeFromParent];
        }
        
    }
    if(_alien.position.x > 1230 && _alien.position.x < 1270 && _alien.position.y < 500 && _levelReached>1){
        if ([_myWorldView childNodeWithName:@"select2"] == nil) {
            [self.myWorldView addChild:_SelectControl2];
        }
    }
    else{
        if ([_myWorldView childNodeWithName:@"select2"] != nil) {
            [_SelectControl2 removeFromParent];
        }
        
    }
    
    if(_alien.position.x < 1245 && _alien.position.x > 1190 && _alien.position.y > 500 &&_alien.position.y < 1100 && _levelReached>2){
        if ([_myWorldView childNodeWithName:@"select3"] == nil) {
            [self.myWorldView addChild:_SelectControl3];
        }
    }
    else{
        if ([_myWorldView childNodeWithName:@"select3"] != nil) {
            [_SelectControl3 removeFromParent];
        }
        
    }
    
    if(_alien.position.x > 1430 && _alien.position.x < 1470 ){
        if ([_myWorldView childNodeWithName:@"up"] == nil) {
            [self.myWorldView addChild:_upControl];
        }
    }
    else{
        if ([_myWorldView childNodeWithName:@"up"] != nil) {
            [_upControl removeFromParent];
            [_downControl removeFromParent];
        }
        
    }
    if(_alien.position.x > 35 && _alien.position.x < 80 && _alien.position.y > 500){
        NSLog(@"condition met");
        if ([_myWorldView childNodeWithName:@"up2"] == nil) {
            NSLog(@"condition met 1");
            [self.myWorldView addChild:_upControl2];
            
        }
    }
    else{
        if ([_myWorldView childNodeWithName:@"up2"] != nil) {
            NSLog(@"condition met 2");
            [_upControl2 removeFromParent];
            [_downControl2 removeFromParent];
        }
        
    }
     if ([_myWorldView childNodeWithName:@"up2"] != nil) {
         NSLog(@"control exists");
     }
    
   
}
-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
    self.isMovingRight = false;
    self.isMovingLeft = false;
    _isMovingUp = false;
    _isMovingUp2 = false;
    _isMovingDown = false;
    _isMovingDown2 = false;
    [self.alien runAction:self.idleAnimation];
}

-(void)gotoLevelGreek
{
    [self removeAllChildren];
    SKScene *level01 =
    [[LevelGreek alloc]initWithSize:CGSizeMake(700, 400)];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:level01 transition:door];
    
}

-(void)gotoLevelEgyptian
{
    [self removeAllChildren];
    SKScene *levelEgyptian =
    [[LevelEgyptian alloc]initWithSize:CGSizeMake(900, 500)];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:levelEgyptian transition:door];
    
}

-(void)gotoLevelRoman
{
    [self removeAllChildren];
    SKScene *levelRoman =
    [[LevelRoman alloc]initWithSize:CGSizeMake(700, 400)];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:levelRoman transition:door];
    
}

-(void)gotoMainMenu
{
    [self removeAllChildren];
    SKScene *mainMenu =
    [[MainMenuScene alloc]initWithSize:CGSizeMake(1400, 800)];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:mainMenu transition:door];
    
}

@end
