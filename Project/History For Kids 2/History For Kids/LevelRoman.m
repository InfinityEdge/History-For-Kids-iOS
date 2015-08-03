//
//  LevelRoman.m
//  History For Kids
//
//  Created by haythem on 4/12/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "LevelRoman.h"
#import "Level01.h"
#import "MainMenuScene.h"

@implementation LevelRoman
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
    self.mapRoman = [JSTileMap mapNamed:@"levelRomans1.tmx"];
    self.mapRoman.zPosition = -100;
    [self.myWorldView addChild:self.mapRoman];
    
    self.alien = [SKSpriteNode spriteNodeWithImageNamed:@"p2_wave1.png"];
    self.alien.position = CGPointMake(self.size.width/10,self.size.height / 4.4);
    self.alien.xScale = 0.75;
    self.alien.yScale = 0.75;
    self.alien.zPosition = 15;
    [self.mapRoman addChild:self.alien];
    
    self.rightControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_right.png"];
    self.rightControl.position = CGPointMake(100,60);
    self.rightControl.xScale = 0.5;
    self.rightControl.yScale = 0.5;
    self.rightControl.zPosition = 15;
    self.rightControl.name = @"right";
    [self.myWorldView addChild:self.rightControl];
    
    self.leftControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_left.png"];
    self.leftControl.position = CGPointMake(20,60);
    self.leftControl.xScale = 0.5;
    self.leftControl.yScale = 0.5;
    self.leftControl.zPosition = 15;
    self.leftControl.name = @"left";
    [self.myWorldView addChild:self.leftControl];
    
    self.upControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_up.png"];
    self.upControl.position = CGPointMake(60,100);
    self.upControl.xScale = 0.5;
    self.upControl.yScale = 0.5;
    self.upControl.zPosition = 15;
    self.upControl.name = @"up";
    [self.myWorldView addChild:self.upControl];
    
    self.downControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_down.png"];
    self.downControl.position = CGPointMake(60,20);
    self.downControl.xScale = 0.5;
    self.downControl.yScale = 0.5;
    self.downControl.zPosition = 15;
    self.downControl.name = @"down";
    [self.myWorldView addChild:self.downControl];
    
    self.SelectControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl.xScale = 0.75;
    self.SelectControl.yScale = 0.75;
    self.SelectControl.zPosition = 15;
    self.SelectControl.name = @"select";
    
    self.SelectControl2 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl2.xScale = 0.75;
    self.SelectControl2.yScale = 0.75;
    self.SelectControl2.zPosition = 15;
    self.SelectControl2.name = @"select";
    
    self.SelectControl3 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl3.xScale = 0.75;
    self.SelectControl3.yScale = 0.75;
    self.SelectControl3.zPosition = 15;
    self.SelectControl3.name = @"select";
    
    self.SelectControl4 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl4.xScale = 0.75;
    self.SelectControl4.yScale = 0.75;
    self.SelectControl4.zPosition = 15;
    self.SelectControl4.name = @"select";
    
    self.SelectControl5 = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl5.xScale = 0.75;
    self.SelectControl5.yScale = 0.75;
    self.SelectControl5.zPosition = 15;
    self.SelectControl5.name = @"select";
    
    self.book1 = [SKSpriteNode spriteNodeWithImageNamed:@"37.png"];
    self.book1.position = CGPointMake(700,700);
    self.book1.xScale = 0.5;
    self.book1.yScale = 0.5;
    self.book1.zPosition = 15;
    [self.myWorldView addChild:self.book1];
    
    self.book2 = [SKSpriteNode spriteNodeWithImageNamed:@"37.png"];
    self.book2.position = CGPointMake(124,990);
    self.book2.xScale = 0.5;
    self.book2.yScale = 0.5;
    self.book2.zPosition = 15;
    
    self.book3 = [SKSpriteNode spriteNodeWithImageNamed:@"37.png"];
    self.book3.position = CGPointMake(901,762);
    self.book3.xScale = 0.5;
    self.book3.yScale = 0.5;
    self.book3.zPosition = 15;
    
    self.book4 = [SKSpriteNode spriteNodeWithImageNamed:@"37.png"];
    self.book4.position = CGPointMake(901,980);
    self.book4.xScale = 0.5;
    self.book4.yScale = 0.5;
    self.book4.zPosition = 15;

    
    self.bookPanel1 = [SKSpriteNode spriteNodeWithImageNamed:@"book001.png"];
    self.bookPanel1.position = CGPointMake(580,650);
    self.bookPanel1.xScale = 0.75;
    self.bookPanel1.yScale = 0.75;
    self.bookPanel1.zPosition = 15;
    self.bookPanel1.name = @"bookPanel1";
    
    self.bookPanel2 = [SKSpriteNode spriteNodeWithImageNamed:@"book002.png"];
    self.bookPanel2.position = CGPointMake(400,800);
    self.bookPanel2.xScale = 0.75;
    self.bookPanel2.yScale = 0.75;
    self.bookPanel2.zPosition = 15;
    self.bookPanel2.name = @"bookPanel2";
    
    self.bookPanel3 = [SKSpriteNode spriteNodeWithImageNamed:@"book003.png"];
    self.bookPanel3.position = CGPointMake(700,760);
    self.bookPanel3.xScale = 0.75;
    self.bookPanel3.yScale = 0.75;
    self.bookPanel3.zPosition = 15;
    self.bookPanel3.name = @"bookPanel3";
    
    self.bookPanel4 = [SKSpriteNode spriteNodeWithImageNamed:@"book004.png"];
    self.bookPanel4.position = CGPointMake(700,760);
    self.bookPanel4.xScale = 0.75;
    self.bookPanel4.yScale = 0.75;
    self.bookPanel4.zPosition = 15;
    self.bookPanel4.name = @"bookPanel4";
    
    self.politician = [SKSpriteNode spriteNodeWithImageNamed:@"roman_politician.png"];
    self.politician.position = CGPointMake(650,800);
    self.politician.xScale = 0.75;
    self.politician.yScale = 0.75;
    self.politician.zPosition = 15;
    
    _panel = [SKSpriteNode spriteNodeWithColor:[SKColor whiteColor] size:CGSizeMake(400, 120)];
    _panel.position = CGPointMake(650,700);
    _panel.zPosition = 15;
    _panel.name = @"panel";
    _panel.alpha = 0.4;
    
    _quiz11 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz11.text = @"Julius Cesar was murdered in";
    _quiz11.fontSize = 12;
    _quiz11.color = [SKColor blackColor];
    _quiz11.colorBlendFactor = 1;
    _quiz11.zPosition = 20;
    _quiz11.position = CGPointMake(650 ,740);
    
    _quiz12 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz12.text = @"44 BC";
    _quiz12.fontSize = 12;
    _quiz12.color = [SKColor blackColor];
    _quiz12.colorBlendFactor = 1;
    _quiz12.zPosition = 20;
    _quiz12.position = CGPointMake(_quiz11.position.x - 120,_quiz11.position.y-80);
    _quiz12.name=@"answer1";
    
    _quiz13 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz13.text = @"100 BC";
    _quiz13.fontSize = 12;
    _quiz13.color = [SKColor blackColor];
    _quiz13.colorBlendFactor = 1;
    _quiz13.zPosition = 20;
    _quiz13.position = CGPointMake(_quiz11.position.x ,_quiz11.position.y-80);
    
    _quiz14 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz14.text = @"50 BC";
    _quiz14.fontSize = 12;
    _quiz14.color = [SKColor blackColor];
    _quiz14.colorBlendFactor = 1;
    _quiz14.zPosition = 20;
    _quiz14.position = CGPointMake(_quiz11.position.x + 140,_quiz11.position.y-80);
    
    _quiz21 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz21.text = @"The Romans drove put the last king in";
    _quiz21.fontSize = 12;
    _quiz21.color = [SKColor blackColor];
    _quiz21.colorBlendFactor = 1;
    _quiz21.zPosition = 20;
    _quiz21.position = CGPointMake(650 ,740);
    
    _quiz22 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz22.text = @"505 BC";
    _quiz22.fontSize = 12;
    _quiz22.color = [SKColor blackColor];
    _quiz22.colorBlendFactor = 1;
    _quiz22.zPosition = 20;
    _quiz22.position = CGPointMake(_quiz21.position.x - 120,_quiz21.position.y-80);
    
    
    _quiz23 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz23.text = @"10 BC";
    _quiz23.fontSize = 12;
    _quiz23.color = [SKColor blackColor];
    _quiz23.colorBlendFactor = 1;
    _quiz23.zPosition = 20;
    _quiz23.position = CGPointMake(_quiz21.position.x ,_quiz21.position.y-80);
    
    
    _quiz24 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz24.text = @"509 BC";
    _quiz24.fontSize = 12;
    _quiz24.color = [SKColor blackColor];
    _quiz24.colorBlendFactor = 1;
    _quiz24.zPosition = 20;
    _quiz24.position = CGPointMake(_quiz21.position.x + 140,_quiz21.position.y-80);
    _quiz24.name=@"answer2";
    
    _quiz31 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz31.text = @"Rome's best general was";
    _quiz31.fontSize = 12;
    _quiz31.color = [SKColor blackColor];
    _quiz31.colorBlendFactor = 1;
    _quiz31.zPosition = 20;
    _quiz31.position = CGPointMake(650 ,740);
    
    _quiz32 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz32.text = @"Tarquin the proud";
    _quiz32.fontSize = 12;
    _quiz32.color = [SKColor blackColor];
    _quiz32.colorBlendFactor = 1;
    _quiz32.zPosition = 20;
    _quiz32.position = CGPointMake(_quiz31.position.x - 120,_quiz31.position.y-80);
    
    
    _quiz33 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz33.text = @"Hannibal";
    _quiz33.fontSize = 12;
    _quiz33.color = [SKColor blackColor];
    _quiz33.colorBlendFactor = 1;
    _quiz33.zPosition = 20;
    _quiz33.position = CGPointMake(_quiz31.position.x ,_quiz31.position.y-80);
    
    _quiz34 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz34.text = @"Julius Cesar";
    _quiz34.fontSize = 12;
    _quiz34.color = [SKColor blackColor];
    _quiz34.colorBlendFactor = 1;
    _quiz34.zPosition = 20;
    _quiz34.position = CGPointMake(_quiz31.position.x + 140,_quiz31.position.y-80);
	_quiz34.name=@"answer3";

    self.dialog = [SKSpriteNode spriteNodeWithImageNamed:@"key_blue.png"];
    self.dialog.position = CGPointMake(650,750);
    self.dialog.xScale = 0.5;
    self.dialog.yScale = 0.5;
    self.dialog.zPosition = 30;
    _dialog.name =@"dialog";
    
    self.backControl = [SKSpriteNode spriteNodeWithImageNamed:@"back.png"];
    self.backControl.position = CGPointMake(25,350);
    self.backControl.xScale = 0.75;
    self.backControl.yScale = 0.75;
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
    }
    else if ([node.name isEqualToString:@"down"]) {
        self.isMovingDown = true;
        [self.alien runAction:_walk3Animation];
    }
    else if ([node.name isEqualToString:@"select"]) {
        if(!_bookCleared1){
        self.bookRevealed1 = true;
        [self.myWorldView addChild:self.bookPanel1];
        }
        else if(_bookCleared1 && !_bookCleared2){
            self.bookRevealed2 = true;
            [self.myWorldView addChild:self.bookPanel2];
        }
        
        else if(_bookCleared1 && _bookCleared2 && !_bookCleared3){
            self.bookRevealed3 = true;
            [self.myWorldView addChild:self.bookPanel3];
        }
        
        else if(_bookCleared1 && _bookCleared2 && _bookCleared3 && !_bookCleared4){
            self.bookRevealed4 = true;
            [self.myWorldView addChild:self.bookPanel4];
        }
        
        else if(_bookCleared1 && _bookCleared2 && _bookCleared3 && _bookCleared4 && !_quizAsked1){
            self.quizAsked1 = true;
            [self.myWorldView addChild:self.panel];
            [self.myWorldView addChild:self.quiz11];
            [self.myWorldView addChild:self.quiz12];
            [self.myWorldView addChild:self.quiz13];
            [self.myWorldView addChild:self.quiz14];
        }
       
        

    }
    else if ([node.name isEqualToString:@"bookPanel1"]) {
        self.bookCleared1 = true;
        [_myWorldView addChild:_book2];
    }
    
    else if ([node.name isEqualToString:@"bookPanel2"]) {
        self.bookCleared2 = true;
        [_myWorldView addChild:_book3];
    }
    
    else if ([node.name isEqualToString:@"bookPanel3"]) {
        self.bookCleared3 = true;
        [_myWorldView addChild:_book4];
    }
    
    else if ([node.name isEqualToString:@"bookPanel4"]) {
        self.bookCleared4 = true;
        [_myWorldView addChild:_politician];
    }
    else if ([node.name isEqualToString:@"answer1"]) {
        _quizAnswered1 = true;
        _quizAsked2 = true;
        [self.myWorldView addChild:self.quiz21];
        [self.myWorldView addChild:self.quiz22];
        [self.myWorldView addChild:self.quiz23];
        [self.myWorldView addChild:self.quiz24];
    }
    
    else if ([node.name isEqualToString:@"answer2"]) {
        _quizAnswered2 = true;
        _quizAsked3 = true;
        [self.myWorldView addChild:self.quiz31];
        [self.myWorldView addChild:self.quiz32];
        [self.myWorldView addChild:self.quiz33];
        [self.myWorldView addChild:self.quiz34];
    }
    
    else if ([node.name isEqualToString:@"answer3"]) {
        _quizAnswered3 = true;
        [self.myWorldView addChild:self.dialog];
        
    }
    
    else if ([node.name isEqualToString:@"dialog"]){
        [self goToLevelChoser];
    }
    
    else if ([node.name isEqualToString:@"back"]) {
        
        [self gotoMainMenu];
    }


}

-(void) didSimulatePhysics{
    if(self.alien.position.x>430 && self.alien.position.x<655){
        CGPoint oldposition = CGPointMake(self.myWorldView.position.x, self.myWorldView.position.y);
        self.myWorldView.position = CGPointMake(-(self.alien.position.x-(self.size.width/2)),self.myWorldView.position.y);
        CGPoint deltaPosition = CGPointMake(self.myWorldView.position.x - oldposition.x, self.myWorldView.position.y - oldposition.y);
        self.leftControl.position = CGPointMake(self.leftControl.position.x - deltaPosition.x,self.leftControl.position.y + deltaPosition.y);
        self.rightControl.position = CGPointMake(self.rightControl.position.x - deltaPosition.x,self.rightControl.position.y + deltaPosition.y);
        self.upControl.position = CGPointMake(self.upControl.position.x - deltaPosition.x,self.upControl.position.y - deltaPosition.y);
        self.downControl.position = CGPointMake(self.downControl.position.x - deltaPosition.x,self.downControl.position.y - deltaPosition.y);
        self.backControl.position = CGPointMake(self.backControl.position.x - deltaPosition.x,self.backControl.position.y + deltaPosition.y);
    }
    
        if (_alien.position.y > 219 && _alien.position.y < 800){
        CGPoint oldposition = CGPointMake(self.myWorldView.position.x, self.myWorldView.position.y);
        self.myWorldView.position = CGPointMake(self.myWorldView.position.x, -((self.alien.position.y) - self.size.height/2));
        CGPoint deltaPosition = CGPointMake(self.myWorldView.position.x - oldposition.x, self.myWorldView.position.y - oldposition.y);
        self.leftControl.position = CGPointMake(self.leftControl.position.x - deltaPosition.x,self.leftControl.position.y - deltaPosition.y);
        self.rightControl.position = CGPointMake(self.rightControl.position.x - deltaPosition.x,self.rightControl.position.y - deltaPosition.y);
        self.upControl.position = CGPointMake(self.upControl.position.x - deltaPosition.x,self.upControl.position.y - deltaPosition.y);
        self.downControl.position = CGPointMake(self.downControl.position.x - deltaPosition.x,self.downControl.position.y - deltaPosition.y);
        self.backControl.position = CGPointMake(self.backControl.position.x - deltaPosition.x,self.backControl.position.y - deltaPosition.y);
    }
    
}

-(void) update:(NSTimeInterval)currentTime{
    self.elapsedTime = currentTime;
    NSLog(@"player position: %f and height: %f",_alien.position.x,_alien.position.y);
   
    if(_isMovingDown){
        if(self.alien.position.y>20){
         if(((_alien.position.x>127 && _alien.position.x<622  && _alien.position.y >219 && _alien.position.y<605))||(_alien.position.x>866 &&_alien.position.x<991 && _alien.position.y >303 && _alien.position.y<537)||(_alien.position.x>281 &&_alien.position.x<755 && _alien.position.y >771 && _alien.position.y<1000)||(_alien.position.x>872 &&_alien.position.x<992 && _alien.position.y >789 && _alien.position.y<1000)){
        self.alien.position = CGPointMake(_alien.position.x, _alien.position.y + 4.0);
         }
         else{
                     self.alien.position = CGPointMake(_alien.position.x, _alien.position.y - 3.0);
         }
        }
    }
    else if(_isMovingUp){
        if(self.alien.position.y<1000){
        if(((_alien.position.x>127 && _alien.position.x<622  && _alien.position.y >219 && _alien.position.y<605))||(_alien.position.x>866 &&_alien.position.x<991 && _alien.position.y >303 && _alien.position.y<537)||(_alien.position.x>281 &&_alien.position.x<755 && _alien.position.y >771 && _alien.position.y<1000)||(_alien.position.x>872 &&_alien.position.x<992 && _alien.position.y >789 && _alien.position.y<1000)){
        self.alien.position = CGPointMake(_alien.position.x, _alien.position.y - 4.0);
        }
        else{
            self.alien.position = CGPointMake(_alien.position.x, _alien.position.y + 3.0);
        }
        }
    }
    else if(_isMovingLeft){
        if(self.alien.position.x>20){
        if(((_alien.position.x>127 && _alien.position.x<622  && _alien.position.y >219 && _alien.position.y<605))||(_alien.position.x>866 &&_alien.position.x<991 && _alien.position.y >303 && _alien.position.y<537)||(_alien.position.x>281 &&_alien.position.x<755 && _alien.position.y >771 && _alien.position.y<1000)||(_alien.position.x>872 &&_alien.position.x<992 && _alien.position.y >789 && _alien.position.y<1000)){
        self.alien.position = CGPointMake(_alien.position.x + 4.0, _alien.position.y);
        }
                else{
           self.alien.position = CGPointMake(_alien.position.x - 3.0, _alien.position.y);
        }
        }
    }
    else if (_isMovingRight){
        if(self.alien.position.x<990){
        if(((_alien.position.x>127 && _alien.position.x<622  && _alien.position.y >219 && _alien.position.y<605))||(_alien.position.x>866 &&_alien.position.x<991 && _alien.position.y >303 && _alien.position.y<537)||(_alien.position.x>281 &&_alien.position.x<755 && _alien.position.y >771 && _alien.position.y<1000)||(_alien.position.x>872 &&_alien.position.x<992 && _alien.position.y >789 && _alien.position.y<1000)){
        self.alien.position = CGPointMake(_alien.position.x - 4.0, _alien.position.y);
        }
        else{
            self.alien.position = CGPointMake(_alien.position.x + 3.0, _alien.position.y);
        }
        }
    }
    if(_alien.position.x>650 && _alien.position.x<680 && _alien.position.y >700 && _alien.position.y<720 && !_bookRevealed1 && !_bookCleared1){
        if([_myWorldView childNodeWithName:@"select"] == nil){
            _SelectControl.position = CGPointMake(750,550);
            [_myWorldView addChild:_SelectControl];
        }
        
    }
    else if(_alien.position.x>130 && _alien.position.x<150 && _alien.position.y >980 && _alien.position.y<1000&& _bookRevealed1 && _bookCleared1 && !_bookRevealed2 && !_bookCleared2){
        if([_myWorldView childNodeWithName:@"select"] == nil){
            _SelectControl2.position = CGPointMake(300,650);
            [_myWorldView addChild:_SelectControl2];
        }
        
    }
    else if(_alien.position.x>900 && _alien.position.x<920 && _alien.position.y >750 && _alien.position.y<760&& _bookRevealed1 && _bookCleared1 && _bookRevealed2 && _bookCleared2 && !_bookRevealed3 && !_bookCleared3){
        if([_myWorldView childNodeWithName:@"select"] == nil){
            _SelectControl3.position = CGPointMake(700,650);
            [_myWorldView addChild:_SelectControl3];
        }
        
    }
    
    else if(_alien.position.x>860 && _alien.position.x<880 && _alien.position.y >960 && _alien.position.y<980&& _bookRevealed1 && _bookCleared1 && _bookRevealed2 && _bookCleared2 && _bookRevealed3 && _bookCleared3 && !_bookRevealed4 && !_bookCleared4){
        if([_myWorldView childNodeWithName:@"select"] == nil){
            _SelectControl4.position = CGPointMake(700,700);
            [_myWorldView addChild:_SelectControl4];
        }
        
    }
    
    else if(_alien.position.x>640 && _alien.position.x<660 && _alien.position.y >730 && _alien.position.y<750&& _bookRevealed1 && _bookCleared1 && _bookRevealed2 && _bookCleared2 && _bookRevealed3 && _bookCleared3 && _bookRevealed4 && _bookCleared4 && !_quizAsked1){
        if([_myWorldView childNodeWithName:@"select"] == nil){
            _SelectControl5.position = CGPointMake(600,600);
            [_myWorldView addChild:_SelectControl5];
        }
        
    }
   if(_bookRevealed1){

        [_SelectControl removeFromParent];
        
    }
    if (_bookCleared1){
        [_book1 removeFromParent];
        [_bookPanel1 removeFromParent];
    }
    
    if(_bookRevealed2){
        
        [_SelectControl2 removeFromParent];
        
    }
    if (_bookCleared2){
        [_book2 removeFromParent];
        [_bookPanel2 removeFromParent];
    }
    
    if(_bookRevealed3){
        
        [_SelectControl3 removeFromParent];
        
    }
    if (_bookCleared3){
        [_book3 removeFromParent];
        [_bookPanel3 removeFromParent];
    }
    
    if(_bookRevealed4){
        
        [_SelectControl4 removeFromParent];
        
    }
    if (_bookCleared4){
        [_book4 removeFromParent];
        [_bookPanel4 removeFromParent];
    }
    
    
    if(_quizAsked1){
        
        [_SelectControl5 removeFromParent];
        
    }
    if(_quizAnswered1){
        [_quiz11 removeFromParent];
        [_quiz12 removeFromParent];
        [_quiz13 removeFromParent];
        [_quiz14 removeFromParent];
        
    }
    if(_quizAnswered2){
        [_quiz21 removeFromParent];
        [_quiz22 removeFromParent];
        [_quiz23 removeFromParent];
        [_quiz24 removeFromParent];
        
    }
    if(_quizAnswered3){
        [_quiz31 removeFromParent];
        [_quiz32 removeFromParent];
        [_quiz33 removeFromParent];
        [_quiz34 removeFromParent];
        [_panel removeFromParent];
        
    }

    
}

-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
    self.isMovingRight = false;
    self.isMovingLeft = false;
    _isMovingUp = false;
    _isMovingDown = false;
    [self.alien runAction:self.idleAnimation];
}

- (void) goToLevelChoser{
    [self removeAllChildren];
    Level01 *level01 =
    [[Level01 alloc]initWithSize:CGSizeMake(1400, 800)];
    level01.levelReached=3;
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

-(void)gotoMainMenu
{
    [self removeAllChildren];
    SKScene *mainMenu =
    [[MainMenuScene alloc]initWithSize:CGSizeMake(1400, 800)];
    SKTransition *door = [SKTransition doorwayWithDuration:1.0];
    [self.view presentScene:mainMenu transition:door];
    
}


@end
