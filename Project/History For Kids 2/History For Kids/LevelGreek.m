//
//  LevelGreek.m
//  History For Kids
//
//  Created by haythem on 4/9/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import "LevelGreek.h"
#import "Level01.h"
#import "MainMenuScene.h"



@implementation LevelGreek

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
    self.mapGreek = [JSTileMap mapNamed:@"levelGreek.tmx"];
    self.mapGreek.zPosition = -100;
    [self.myWorldView addChild:self.mapGreek];
    
    self.alien = [SKSpriteNode spriteNodeWithImageNamed:@"p2_wave1.png"];
    self.alien.position = CGPointMake(self.size.width/10,self.size.height / 4.4);
    self.alien.xScale = 1;
    self.alien.yScale = 1;
    self.alien.zPosition = 15;
    [self.mapGreek addChild:self.alien];
    
    self.greekTrader = [SKSpriteNode spriteNodeWithImageNamed:@"greek_trader1.png"];
    self.greekTrader.position = CGPointMake(650,350);
    self.greekTrader.xScale = 2;
    self.greekTrader.yScale = 2;
    self.greekTrader.zPosition = 15;
    
    self.greekPolitician = [SKSpriteNode spriteNodeWithImageNamed:@"gree_politician1.png"];
    self.greekPolitician.position = CGPointMake(1150,350);
    self.greekPolitician.xScale = 2;
    self.greekPolitician.yScale = 2;
    self.greekPolitician.zPosition = 15;
    
    self.greekOfficer = [SKSpriteNode spriteNodeWithImageNamed:@"greek_officer1.png"];
    self.greekOfficer.position = CGPointMake(2100,350);
    self.greekOfficer.xScale = 2;
    self.greekOfficer.yScale = 2;
    self.greekOfficer.zPosition = 15;
    
    self.greekMarine = [SKSpriteNode spriteNodeWithImageNamed:@"greek_marine1.png"];
    self.greekMarine.position = CGPointMake(2400,350);
    self.greekMarine.xScale = 2;
    self.greekMarine.yScale = 2;
    self.greekMarine.zPosition = 15;
    
    self.dialog = [SKSpriteNode spriteNodeWithImageNamed:@"key_green.png"];
    self.dialog.position = CGPointMake(2100,200);
    self.dialog.xScale = 0.5;
    self.dialog.yScale = 0.5;
    self.dialog.zPosition = 30;
    _dialog.name =@"dialog";
    
    
    self.rightControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_right.png"];
    self.rightControl.position = CGPointMake(self.size.width /6 + self.rightControl.size.width /2,self.size.height / 3.75 -self.rightControl.size.height);
    self.rightControl.xScale = 0.5;
    self.rightControl.yScale = 0.5;
    self.rightControl.zPosition = 15;
    self.rightControl.name = @"right";
    [self.myWorldView addChild:self.rightControl];
    
    self.leftControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_left.png"];
    self.leftControl.position = CGPointMake(self.size.width/6 - self.leftControl.size.width /2,self.size.height / 3.75 -self.leftControl.size.height);
    self.leftControl.xScale = 0.5;
    self.leftControl.yScale = 0.5;
    self.leftControl.zPosition = 15;
    self.leftControl.name = @"left";
    [self.myWorldView addChild:self.leftControl];
    
    self.SelectControl = [SKSpriteNode spriteNodeWithImageNamed:@"flatdark_select.png"];
    self.SelectControl.position = CGPointMake(self.size.width-_SelectControl.size.width,_SelectControl.size.height /2);
    self.SelectControl.xScale = 0.75;
    self.SelectControl.yScale = 0.75;
    self.SelectControl.zPosition = 15;
    self.SelectControl.name = @"select";
    
    self.backControl = [SKSpriteNode spriteNodeWithImageNamed:@"back.png"];
    self.backControl.position = CGPointMake(25,350);
    self.backControl.xScale = 0.75;
    self.backControl.yScale = 0.75;
    self.backControl.zPosition = 15;
    self.backControl.name = @"back";
    [_myWorldView addChild:_backControl];
    
    _panel = [SKSpriteNode spriteNodeWithColor:[SKColor whiteColor] size:CGSizeMake(550, 120)];
    _panel.position = CGPointMake(_alien.position.x  + _panel.size.width/2+ 50, _alien.position.y+ _alien.size.height + _panel.size.height);
    _panel.zPosition = 15;
    _panel.name = @"panel";
    _panel.alpha = 0.4;
    
    _speech111 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech111.text = @"Welcome to ancient Greece!";
    _speech111.fontSize = 12;
    _speech111.color = [SKColor blackColor];
    _speech111.colorBlendFactor = 1;
    _speech111.zPosition = 20;
    _speech111.position = CGPointMake(CGRectGetMinX(_panel.frame) + _speech111.frame.size.width /2 +10,CGRectGetMaxY(_panel.frame)-20);
    
    _speech112 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech112.text = @"Ancient Greece is called 'the birthplace of Western civilisation'.";
    _speech112.fontSize = 12;
    _speech112.color = [SKColor blackColor];
    _speech112.colorBlendFactor = 1;
    _speech112.zPosition = 20;
    _speech112.position = CGPointMake(_speech111.position.x+_speech111.frame.size.width/2+20,_speech111.position.y-20);
    
    _speech113 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech113.text = @"About 2500 years ago, the Greeks created a way of life that other people admired and copied.";
    _speech113.fontSize = 12;
    _speech113.color = [SKColor blackColor];
    _speech113.colorBlendFactor = 1;
    _speech113.zPosition = 20;
    _speech113.position = CGPointMake(_speech112.position.x+_speech111.frame.size.width/2+5,_speech112.position.y-20);
    
    _speech114 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech114.text = @"The Romans copied Greek art and Greek gods, for example.";
    _speech114.fontSize = 12;
    _speech114.color = [SKColor blackColor];
    _speech114.colorBlendFactor = 1;
    _speech114.zPosition = 20;
    _speech114.position = CGPointMake(_speech112.position.x-10,_speech113.position.y-20);

    
    _speech115 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech115.text = @"I'm a Greek trader, and I'm happy to be your first mentor.";
    _speech115.fontSize = 12;
    _speech115.color = [SKColor blackColor];
    _speech115.colorBlendFactor = 1;
    _speech115.zPosition = 20;
    _speech115.position = CGPointMake(_speech112.position.x-20,_speech114.position.y-20);
    
    _speech121 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech121.text = @"Ancient Greece had a warm, dry climate, as Greece does today.";
    _speech121.fontSize = 12;
    _speech121.color = [SKColor blackColor];
    _speech121.colorBlendFactor = 1;
    _speech121.zPosition = 20;
    _speech121.position = CGPointMake(CGRectGetMinX(_panel.frame) + _speech121.frame.size.width /2 +10,CGRectGetMaxY(_panel.frame)-20);
    
    _speech122 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech122.text = @"People lived by farming, fishing, and trade.";
    _speech122.fontSize = 12;
    _speech122.color = [SKColor blackColor];
    _speech122.colorBlendFactor = 1;
    _speech122.zPosition = 20;
    _speech122.position = CGPointMake(_speech121.position.x - 60,_speech121.position.y-20);
    
    _speech123 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech123.text = @" Some were soldiers. Others were scholars, scientists or artists.";
    _speech123.fontSize = 12;
    _speech123.color = [SKColor blackColor];
    _speech123.colorBlendFactor = 1;
    _speech123.zPosition = 20;
    _speech123.position = CGPointMake(_speech122.position.x + 60,_speech122.position.y-20);
    
    _speech124 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech124.text = @"Many Greeks were poor. Life was hard because farmland, water and timber for building ";
    _speech124.fontSize = 12;
    _speech124.color = [SKColor blackColor];
    _speech124.colorBlendFactor = 1;
    _speech124.zPosition = 20;
    _speech124.position = CGPointMake(_speech122.position.x+130,_speech123.position.y-20);
    
    _speech125 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech125.text = @"were all scarce. That's why many Greeks sailed off to find new lands to settle.";
    _speech125.fontSize = 12;
    _speech125.color = [SKColor blackColor];
    _speech125.colorBlendFactor = 1;
    _speech125.zPosition = 20;
    _speech125.position = CGPointMake(_speech122.position.x+100,_speech124.position.y-20);
    
    _speech131 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech131.text = @"Beginning around 600 BC, each Greek city-state minted (made) its own";
    _speech131.fontSize = 12;
    _speech131.color = [SKColor blackColor];
    _speech131.colorBlendFactor = 1;
    _speech131.zPosition = 20;
    _speech131.position = CGPointMake(CGRectGetMinX(_panel.frame) + _speech131.frame.size.width /2 +10,CGRectGetMaxY(_panel.frame)-20);
    
    _speech132 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech132.text = @"kinds of coins. A lot of the Greek coins were silver";
    _speech132.fontSize = 12;
    _speech132.color = [SKColor blackColor];
    _speech132.colorBlendFactor = 1;
    _speech132.zPosition = 20;
    _speech132.position = CGPointMake(_speech131.position.x - 60,_speech131.position.y-20);
    
    _speech133 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech133.text = @" and the pictures on them were different for each city-state.";
    _speech133.fontSize = 12;
    _speech133.color = [SKColor blackColor];
    _speech133.colorBlendFactor = 1;
    _speech133.zPosition = 20;
    _speech133.position = CGPointMake(_speech132.position.x + 21,_speech132.position.y-20);
    
    _speech134 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech134.text = @"Just like today, some coins were worth more than others.";
    _speech134.fontSize = 12;
    _speech134.color = [SKColor blackColor];
    _speech134.colorBlendFactor = 1;
    _speech134.zPosition = 20;
    _speech134.position = CGPointMake(_speech132.position.x + 18,_speech133.position.y-20);
    
    _speech135 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech135.text = @"Now let's take a small quiz.";
    _speech135.fontSize = 12;
    _speech135.color = [SKColor blackColor];
    _speech135.colorBlendFactor = 1;
    _speech135.zPosition = 20;
    _speech135.position = CGPointMake(_speech132.position.x-20,_speech134.position.y-20);
    
    _quiz111 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz111.text = @"When did the Greek start using coins?";
    _quiz111.fontSize = 12;
    _quiz111.color = [SKColor blackColor];
    _quiz111.colorBlendFactor = 1;
    _quiz111.zPosition = 20;
    _quiz111.position = CGPointMake(CGRectGetMinX(_panel.frame) + _quiz111.frame.size.width /2 +150,CGRectGetMaxY(_panel.frame)-20);
    
    _answer111 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz111.png"];
    _answer111.position = CGPointMake(_quiz111.position.x - 180,_quiz111.position.y-60);
    _answer111.xScale = 0.8;
    _answer111.zPosition = 15;
    
    _answer112 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz112.png"];
    _answer112.position = CGPointMake(_quiz111.position.x +10,_quiz111.position.y-60);
    _answer112.xScale = 0.8;
    _answer112.zPosition = 15;
    
    _answer113 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz113.png"];
    _answer113.position = CGPointMake(_quiz111.position.x + 200,_quiz111.position.y-60);
    _answer113.xScale = 0.8;
    _answer113.zPosition = 15;
    _answer113.name=@"answer1";
    
    
    _quiz121 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz121.text = @"Was the climate in Greece?";
    _quiz121.fontSize = 12;
    _quiz121.color = [SKColor blackColor];
    _quiz121.colorBlendFactor = 1;
    _quiz121.zPosition = 20;
    _quiz121.position = CGPointMake(CGRectGetMinX(_panel.frame) + _quiz121.frame.size.width /2 +150,CGRectGetMaxY(_panel.frame)-20);
    
    _answer121 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz121.png"];
    _answer121.position = CGPointMake(_quiz121.position.x - 150,_quiz121.position.y-60);
    _answer121.xScale = 0.8;
    _answer121.zPosition = 15;
    _answer121.name=@"answer2";
    
    _answer122 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz122.png"];
    _answer122.position = CGPointMake(_quiz121.position.x +40,_quiz121.position.y-60);
    _answer122.xScale = 0.8;
    _answer122.zPosition = 15;
    
    _answer123 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz123.png"];
    _answer123.position = CGPointMake(_quiz121.position.x + 230,_quiz121.position.y-60);
    _answer123.xScale = 0.8;
    _answer123.zPosition = 15;

    
    _quiz131 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz131.text = @"None of the ancient Greek was a";
    _quiz131.fontSize = 12;
    _quiz131.color = [SKColor blackColor];
    _quiz131.colorBlendFactor = 1;
    _quiz131.zPosition = 20;
    _quiz131.position = CGPointMake(CGRectGetMinX(_panel.frame) + _quiz131.frame.size.width /2 +150,CGRectGetMaxY(_panel.frame)-20);
    
    _answer131 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz131.png"];
    _answer131.position = CGPointMake(_quiz131.position.x - 160,_quiz131.position.y-60);
    _answer131.xScale = 0.8;
    _answer131.zPosition = 15;

    
    _answer132 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz132.png"];
    _answer132.position = CGPointMake(_quiz131.position.x +30,_quiz131.position.y-60);
    _answer132.xScale = 0.8;
    _answer132.zPosition = 15;
    _answer132.name=@"answer3";
    
    _answer133 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz133.png"];
    _answer133.position = CGPointMake(_quiz131.position.x + 220,_quiz131.position.y-60);
    _answer133.xScale = 0.8;
    _answer133.zPosition = 15;
    
 
  
    _speech211 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech211.text = @"There was not one country called \"Ancient Greece\".";
    _speech211.fontSize = 12;
    _speech211.color = [SKColor blackColor];
    _speech211.colorBlendFactor = 1;
    _speech211.zPosition = 20;
    _speech211.position = CGPointMake(770,320);
    
    _speech212 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech212.text = @"Instead, there were small 'city-states'. ";
    _speech212.fontSize = 12;
    _speech212.color = [SKColor blackColor];
    _speech212.colorBlendFactor = 1;
    _speech212.zPosition = 20;
    _speech212.position = CGPointMake(730,_speech211.position.y-20);
    
    _speech213 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech213.text = @"Each city-state had its own government.";
    _speech213.fontSize = 12;
    _speech213.color = [SKColor blackColor];
    _speech213.colorBlendFactor = 1;
    _speech213.zPosition = 20;
    _speech213.position = CGPointMake(738,_speech212.position.y-20);
    
    _speech214 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech214.text = @"Sometimes the city-states fought one another, ";
    _speech214.fontSize = 12;
    _speech214.color = [SKColor blackColor];
    _speech214.colorBlendFactor = 1;
    _speech214.zPosition = 20;
    _speech214.position = CGPointMake(752,_speech213.position.y-20);
    
    
    _speech215 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech215.text = @"sometimes they joined together against a bigger enemy.";
    _speech215.fontSize = 12;
    _speech215.color = [SKColor blackColor];
    _speech215.colorBlendFactor = 1;
    _speech215.zPosition = 20;
    _speech215.position = CGPointMake(780,_speech214.position.y-20);
    
    _speech221 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech221.text = @"People in ancient Greece believed that there were invisible,";
    _speech221.fontSize = 12;
    _speech221.color = [SKColor blackColor];
    _speech221.colorBlendFactor = 1;
    _speech221.zPosition = 20;
    _speech221.position = CGPointMake(790,320);
    
    _speech222 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech222.text = @"powerful gods and spirits that could control what happened to you. ";
    _speech222.fontSize = 12;
    _speech222.color = [SKColor blackColor];
    _speech222.colorBlendFactor = 1;
    _speech222.zPosition = 20;
    _speech222.position = CGPointMake(812,_speech221.position.y-20);
    
    _speech223 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech223.text = @"Most people also thought that you could control those god";
    _speech223.fontSize = 12;
    _speech223.color = [SKColor blackColor];
    _speech223.colorBlendFactor = 1;
    _speech223.zPosition = 20;
    _speech223.position = CGPointMake(788,_speech222.position.y-20);
    
    _speech224 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech224.text = @"and spirits through sacrifice, prayer, and living a good life.";
    _speech224.fontSize = 12;
    _speech224.color = [SKColor blackColor];
    _speech224.colorBlendFactor = 1;
    _speech224.zPosition = 20;
    _speech224.position = CGPointMake(788,_speech223.position.y-20);
    
    _speech231 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech231.text = @"Sometime people who felt they needed a fresh start with the gods joined a mystery cult,";
    _speech231.fontSize = 12;
    _speech231.color = [SKColor blackColor];
    _speech231.colorBlendFactor = 1;
    _speech231.zPosition = 20;
    _speech231.position = CGPointMake(870,320);
    
    _speech232 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech232.text = @"where you did special rituals and sacrifices and tried to form a special, ";
    _speech232.fontSize = 12;
    _speech232.color = [SKColor blackColor];
    _speech232.colorBlendFactor = 1;
    _speech232.zPosition = 20;
    _speech232.position = CGPointMake(821,_speech231.position.y-20);
    
    _speech233 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech233.text = @"closer relationship with a particular god or spirit. For most people in ancient Greece,";
    _speech233.fontSize = 12;
    _speech233.color = [SKColor blackColor];
    _speech233.colorBlendFactor = 1;
    _speech233.zPosition = 20;
    _speech233.position = CGPointMake(862,_speech232.position.y-20);
    
    _speech234 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech234.text = @"the gods were always around them, paying attention to everything they did, ";
    _speech234.fontSize = 12;
    _speech234.color = [SKColor blackColor];
    _speech234.colorBlendFactor = 1;
    _speech234.zPosition = 20;
    _speech234.position = CGPointMake(840,_speech233.position.y-20);
    
    _speech235 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech235.text = @"and an important part of success in life was keeping on the right side of the gods. ";
    _speech235.fontSize = 12;
    _speech235.color = [SKColor blackColor];
    _speech235.colorBlendFactor = 1;
    _speech235.zPosition = 20;
    _speech235.position = CGPointMake(855,_speech234.position.y-20);

    
    _quiz211 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz211.text = @"People in Ancient Greece believed in and worshiped?";
    _quiz211.fontSize = 12;
    _quiz211.color = [SKColor blackColor];
    _quiz211.colorBlendFactor = 1;
    _quiz211.zPosition = 20;
    _quiz211.position = CGPointMake(880,330);
    
    _answer211 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz211.png"];
    _answer211.position = CGPointMake(_quiz211.position.x - 180,_quiz211.position.y-60);
    _answer211.xScale = 0.8;
    _answer211.zPosition = 15;
    _answer211.name=@"answer21";
    
    _answer212 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz212.png"];
    _answer212.position = CGPointMake(_quiz211.position.x +10,_quiz211.position.y-60);
    _answer212.xScale = 0.8;
    _answer212.zPosition = 15;
    
    
    _answer213 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz213.png"];
    _answer213.position = CGPointMake(_quiz211.position.x + 200,_quiz211.position.y-60);
    _answer213.xScale = 0.8;
    _answer213.zPosition = 15;
    
    _quiz221 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz221.text = @"Which of these is a Greek God??";
    _quiz221.fontSize = 12;
    _quiz221.color = [SKColor blackColor];
    _quiz221.colorBlendFactor = 1;
    _quiz221.zPosition = 20;
    _quiz221.position = CGPointMake(880,330);
    
    _answer221 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz221.png"];
    _answer221.position = CGPointMake(_quiz221.position.x - 180,_quiz221.position.y-60);
    _answer221.xScale = 0.8;
    _answer221.zPosition = 15;
    
    
    _answer222 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz222.png"];
    _answer222.position = CGPointMake(_quiz211.position.x +10,_quiz211.position.y-60);
    _answer222.xScale = 0.8;
    _answer222.zPosition = 15;
    
    
    _answer223 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz223.png"];
    _answer223.position = CGPointMake(_quiz211.position.x + 200,_quiz211.position.y-60);
    _answer223.xScale = 0.8;
    _answer223.zPosition = 15;
    _answer223.name=@"answer22";
    

    
    _quiz231 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz231.text = @"Greek Gods where worshiped in";
    _quiz231.fontSize = 12;
    _quiz231.color = [SKColor blackColor];
    _quiz231.colorBlendFactor = 1;
    _quiz231.zPosition = 20;
    _quiz231.position = CGPointMake(880,330);
    
    _answer231 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz231.png"];
    _answer231.position = CGPointMake(_quiz231.position.x - 180,_quiz231.position.y-60);
    _answer231.xScale = 0.8;
    _answer231.zPosition = 15;
    
    
    _answer232 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz232.png"];
    _answer232.position = CGPointMake(_quiz231.position.x +10,_quiz231.position.y-60);
    _answer232.xScale = 0.8;
    _answer232.zPosition = 15;
    
    
    _answer233 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz233.png"];
    _answer233.position = CGPointMake(_quiz231.position.x + 200,_quiz231.position.y-60);
    _answer233.xScale = 0.8;
    _answer233.zPosition = 15;
    _answer233.name=@"answer23";


    _speech311 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech311.text = @"Only a very powerful ruler could control all Greece.";
    _speech311.fontSize = 12;
    _speech311.color = [SKColor blackColor];
    _speech311.colorBlendFactor = 1;
    _speech311.zPosition = 20;
    _speech311.position = CGPointMake(1780,340);
    
    _speech312 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech312.text = @"One man did in the 300s BC.";
    _speech312.fontSize = 12;
    _speech312.color = [SKColor blackColor];
    _speech312.colorBlendFactor = 1;
    _speech312.zPosition = 20;
    _speech312.position = CGPointMake(1780,_speech311.position.y-20);
    
    _speech313 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech313.text = @"He was Alexander the Great, from Macedonia.";
    _speech313.fontSize = 12;
    _speech313.color = [SKColor blackColor];
    _speech313.colorBlendFactor = 1;
    _speech313.zPosition = 20;
    _speech313.position = CGPointMake(1780,_speech312.position.y-20);
    
    _speech314 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech314.text = @"Alexander led his army to conquer not just Greece";
    _speech314.fontSize = 12;
    _speech314.color = [SKColor blackColor];
    _speech314.colorBlendFactor = 1;
    _speech314.zPosition = 20;
    _speech314.position = CGPointMake(1780,_speech313.position.y-20);
    
    
    _speech315 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech315.text = @"but an empire that reached as far as Afghanistan and India.";
    _speech315.fontSize = 12;
    _speech315.color = [SKColor blackColor];
    _speech315.colorBlendFactor = 1;
    _speech315.zPosition = 20;
    _speech315.position = CGPointMake(1780,_speech314.position.y-20);
    
    _speech321 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech321.text = @"I'm a Greek officer, and I'm happy to introduce you to the Greek art of war.";
    _speech321.fontSize = 12;
    _speech321.color = [SKColor blackColor];
    _speech321.colorBlendFactor = 1;
    _speech321.zPosition = 20;
    _speech321.position = CGPointMake(1780,340);
    
    _speech322 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech322.text = @"The Greek states often fought each other. Sparta and Athens fought a long war,  ";
    _speech322.fontSize = 12;
    _speech322.color = [SKColor blackColor];
    _speech322.colorBlendFactor = 1;
    _speech322.zPosition = 20;
    _speech322.position = CGPointMake(1780,_speech321.position.y-20);
    
    _speech323 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech323.text = @"called the Peloponnesian War, from 431 to 404 BC. Sparta won.";
    _speech323.fontSize = 12;
    _speech323.color = [SKColor blackColor];
    _speech323.colorBlendFactor = 1;
    _speech323.zPosition = 20;
    _speech323.position = CGPointMake(1780,_speech322.position.y-20);
    
    _speech324 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech324.text = @"Only the threat of invasion by a foreign enemy made the Greeks";
    _speech324.fontSize = 12;
    _speech324.color = [SKColor blackColor];
    _speech324.colorBlendFactor = 1;
    _speech324.zPosition = 20;
    _speech324.position = CGPointMake(1780,_speech323.position.y-20);
    
    _speech325 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech325.text = @"forget their quarrels and fight on the same side. Their main enemy was Persia.";
    _speech325.fontSize = 12;
    _speech325.color = [SKColor blackColor];
    _speech325.colorBlendFactor = 1;
    _speech325.zPosition = 20;
    _speech325.position = CGPointMake(1780,_speech324.position.y-20);
    
    _speech331 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech331.text = @"The backbone of the Greek army was the hoplite. He was a foot-soldier,";
    _speech331.fontSize = 12;
    _speech331.color = [SKColor blackColor];
    _speech331.colorBlendFactor = 1;
    _speech331.zPosition = 20;
    _speech331.position = CGPointMake(1800,340);
    
    _speech332 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech332.text = @"and his weapons were a long spear and a sword. He also had a round shield.";
    _speech332.fontSize = 12;
    _speech332.color = [SKColor blackColor];
    _speech332.colorBlendFactor = 1;
    _speech332.zPosition = 20;
    _speech332.position = CGPointMake(1800,_speech331.position.y-20);
    
    _speech333 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech333.text = @"Hoplites fought in lines or ranks. Eight to ten ranks made a formation ";
    _speech333.fontSize = 12;
    _speech333.color = [SKColor blackColor];
    _speech333.colorBlendFactor = 1;
    _speech333.zPosition = 20;
    _speech333.position = CGPointMake(1800,_speech332.position.y-20);
    
    _speech334 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech334.text = @"called the phalanx and enemy soldiers saw only a mass of spears and shields,";
    _speech334.fontSize = 12;
    _speech334.color = [SKColor blackColor];
    _speech334.colorBlendFactor = 1;
    _speech334.zPosition = 20;
    _speech334.position = CGPointMake(1800,_speech333.position.y-20);
    
    _speech335 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech335.text = @"that was hard to break through - and hard to stop once it started moving forward.";
    _speech335.fontSize = 12;
    _speech335.color = [SKColor blackColor];
    _speech335.colorBlendFactor = 1;
    _speech335.zPosition = 20;
    _speech335.position = CGPointMake(1800,_speech334.position.y-20);
    
    
    _quiz311 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz311.text = @"Who were the backbone of the Greek army?";
    _quiz311.fontSize = 12;
    _quiz311.color = [SKColor blackColor];
    _quiz311.colorBlendFactor = 1;
    _quiz311.zPosition = 20;
    _quiz311.position = CGPointMake(1820,340);
    
    _answer311 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz311.png"];
    _answer311.position = CGPointMake(_quiz311.position.x - 180,_quiz311.position.y-60);
    _answer311.xScale = 0.8;
    _answer311.zPosition = 15;
    
    
    _answer312 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz312.png"];
    _answer312.position = CGPointMake(_quiz311.position.x +10,_quiz311.position.y-60);
    _answer312.xScale = 0.8;
    _answer312.zPosition = 15;
    _answer312.name=@"answer31";
    
    
    _answer313 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz313.png"];
    _answer313.position = CGPointMake(_quiz311.position.x + 200,_quiz311.position.y-60);
    _answer313.xScale = 0.8;
    _answer313.zPosition = 15;
  
    _quiz321 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz321.text = @"Alexander the Great controlled all of Greece";
    _quiz321.fontSize = 12;
    _quiz321.color = [SKColor blackColor];
    _quiz321.colorBlendFactor = 1;
    _quiz321.zPosition = 20;
    _quiz321.position = CGPointMake(1820,340);
    
    _answer321 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz321.png"];
    _answer321.position = CGPointMake(_quiz321.position.x - 180,_quiz321.position.y-60);
    _answer321.xScale = 0.8;
    _answer321.zPosition = 15;
    
    
    _answer322 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz322.png"];
    _answer322.position = CGPointMake(_quiz321.position.x +10,_quiz321.position.y-60);
    _answer322.xScale = 0.8;
    _answer322.zPosition = 15;
    _answer322.name=@"answer32";
    
    
    _answer323 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz323.png"];
    _answer323.position = CGPointMake(_quiz321.position.x + 200,_quiz321.position.y-60);
    _answer323.xScale = 0.8;
    _answer323.zPosition = 15;
    
    
    _quiz331 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz331.text = @"Formations of Hoptiles are called";
    _quiz331.fontSize = 12;
    _quiz331.color = [SKColor blackColor];
    _quiz331.colorBlendFactor = 1;
    _quiz331.zPosition = 20;
    _quiz331.position = CGPointMake(1820,340);
    
    _answer331 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz331.png"];
    _answer331.position = CGPointMake(_quiz331.position.x - 180,_quiz331.position.y-60);
    _answer331.xScale = 0.8;
    _answer331.zPosition = 15;
    _answer331.name=@"answer33";
    
    
    _answer332 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz332.png"];
    _answer332.position = CGPointMake(_quiz331.position.x +10,_quiz331.position.y-60);
    _answer332.xScale = 0.8;
    _answer332.zPosition = 15;
    
    
    _answer333 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz333.png"];
    _answer333.position = CGPointMake(_quiz331.position.x + 200,_quiz331.position.y-60);
    _answer333.xScale = 0.8;
    _answer333.zPosition = 15;

    
    _speech411 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech411.text = @"Greek ships had sails, and were pushed along by the wind";
    _speech411.fontSize = 12;
    _speech411.color = [SKColor blackColor];
    _speech411.colorBlendFactor = 1;
    _speech411.zPosition = 20;
    _speech411.position = CGPointMake(2050,340);
    
    _speech412 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech412.text = @" Small trading ships usually stayed close to the shore,";
    _speech412.fontSize = 12;
    _speech412.color = [SKColor blackColor];
    _speech412.colorBlendFactor = 1;
    _speech412.zPosition = 20;
    _speech412.position = CGPointMake(2050,_speech411.position.y-20);
    
    _speech413 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech413.text = @"so the sailors did not get lost.";
    _speech413.fontSize = 12;
    _speech413.color = [SKColor blackColor];
    _speech413.colorBlendFactor = 1;
    _speech413.zPosition = 20;
    _speech413.position = CGPointMake(2050,_speech412.position.y-20);
    
    _speech414 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech414.text = @"Before a voyage, the sailors prayed";
    _speech414.fontSize = 12;
    _speech414.color = [SKColor blackColor];
    _speech414.colorBlendFactor = 1;
    _speech414.zPosition = 20;
    _speech414.position = CGPointMake(2050,_speech413.position.y-20);
    
    
    _speech415 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech415.text = @"to the sea god Poseidon, for a safe journey.";
    _speech415.fontSize = 12;
    _speech415.color = [SKColor blackColor];
    _speech415.colorBlendFactor = 1;
    _speech415.zPosition = 20;
    _speech415.position = CGPointMake(2050,_speech414.position.y-20);
    
    _speech421 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech421.text = @"The Greeks used their ships to sail off and found colonies. One colony called Massalia (Marseille),";
    _speech421.fontSize = 12;
    _speech421.color = [SKColor blackColor];
    _speech421.colorBlendFactor = 1;
    _speech421.zPosition = 20;
    _speech421.position = CGPointMake(2070,340);
    
    _speech422 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech422.text = @"in what is now France, was founded around 600 BC. The Greeks who landed here were called Phokaians.";
    _speech422.fontSize = 12;
    _speech422.color = [SKColor blackColor];
    _speech422.colorBlendFactor = 1;
    _speech422.zPosition = 20;
    _speech422.position = CGPointMake(2070,_speech421.position.y-20);
    
    _speech423 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech423.text = @"Their 50-oared ships were the fastest ships in the Mediterranean.\nIt was useful to have a fast ship,";
    _speech423.fontSize = 12;
    _speech423.color = [SKColor blackColor];
    _speech423.colorBlendFactor = 1;
    _speech423.zPosition = 20;
    _speech423.position = CGPointMake(2070,_speech422.position.y-20);
    
    _speech424 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech424.text = @"because there were lots of pirates! If pirates caught a trading ship, they would steal the cargo";
    _speech424.fontSize = 12;
    _speech424.color = [SKColor blackColor];
    _speech424.colorBlendFactor = 1;
    _speech424.zPosition = 20;
    _speech424.position = CGPointMake(2070,_speech423.position.y-20);
    
    _speech425 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech425.text = @"They would sell the crew and passengers as slaves.";
    _speech425.fontSize = 12;
    _speech425.color = [SKColor blackColor];
    _speech425.colorBlendFactor = 1;
    _speech425.zPosition = 20;
    _speech425.position = CGPointMake(2070,_speech424.position.y-20);
    
    _speech431 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech431.text = @"In a battle, the triremes tried to get close to the enemy ships and if possible crash into them. ";
    _speech431.fontSize = 12;
    _speech431.color = [SKColor blackColor];
    _speech431.colorBlendFactor = 1;
    _speech431.zPosition = 20;
    _speech431.position = CGPointMake(2070,340);
    
    _speech432 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech432.text = @"A trireme was steered by long steering oars at the stern or back of the ship.";
    _speech432.fontSize = 12;
    _speech432.color = [SKColor blackColor];
    _speech432.colorBlendFactor = 1;
    _speech432.zPosition = 20;
    _speech432.position = CGPointMake(2070,_speech431.position.y-20);
    
    _speech433 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech433.text = @"The captain ordered the ship to steer straight at an enemy ship.";
    _speech433.fontSize = 12;
    _speech433.color = [SKColor blackColor];
    _speech433.colorBlendFactor = 1;
    _speech433.zPosition = 20;
    _speech433.position = CGPointMake(2070,_speech432.position.y-20);
    
    _speech434 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech434.text = @"Fixed to the front of the trireme was a sharp metal-covered point or ram.";
    _speech434.fontSize = 12;
    _speech434.color = [SKColor blackColor];
    _speech434.colorBlendFactor = 1;
    _speech434.zPosition = 20;
    _speech434.position = CGPointMake(2070,_speech433.position.y-20);
    
    _speech435 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _speech435.text = @"When the trireme struck the side of an enemy ship, the ram smashed a hole in the wooden planks.";
    _speech435.fontSize = 12;
    _speech435.color = [SKColor blackColor];
    _speech435.colorBlendFactor = 1;
    _speech435.zPosition = 20;
    _speech435.position = CGPointMake(2070,_speech434.position.y-20);
    
    
    _quiz411 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz411.text = @"The Greek warships were called";
    _quiz411.fontSize = 12;
    _quiz411.color = [SKColor blackColor];
    _quiz411.colorBlendFactor = 1;
    _quiz411.zPosition = 20;
    _quiz411.position = CGPointMake(2070,340);
    
    _answer411 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz411.png"];
    _answer411.position = CGPointMake(_quiz411.position.x - 180,_quiz411.position.y-60);
    _answer411.xScale = 0.8;
    _answer411.zPosition = 15;
   
    _answer412 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz412.png"];
    _answer412.position = CGPointMake(_quiz411.position.x +10,_quiz411.position.y-60);
    _answer412.xScale = 0.8;
    _answer412.zPosition = 15;
    _answer412.name=@"answer41";
    
    
    _answer413 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz413.png"];
    _answer413.position = CGPointMake(_quiz411.position.x + 200,_quiz411.position.y-60);
    _answer413.xScale = 0.8;
    _answer413.zPosition = 15;

    _quiz421 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz421.text = @"One of the famous Greek colonies was";
    _quiz421.fontSize = 12;
    _quiz421.color = [SKColor blackColor];
    _quiz421.colorBlendFactor = 1;
    _quiz421.zPosition = 20;
    _quiz421.position = CGPointMake(2070,340);
    
    _answer421 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz421.png"];
    _answer421.position = CGPointMake(_quiz421.position.x - 180,_quiz421.position.y-60);
    _answer421.xScale = 0.8;
    _answer421.zPosition = 15;
    _answer422.name=@"answer42";
    
    _answer422 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz422.png"];
    _answer422.position = CGPointMake(_quiz421.position.x +10,_quiz421.position.y-60);
    _answer422.xScale = 0.8;
    _answer422.zPosition = 15;
    
    _answer423 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz423.png"];
    _answer423.position = CGPointMake(_quiz421.position.x + 200,_quiz421.position.y-60);
    _answer423.xScale = 0.8;
    _answer423.zPosition = 15;
    
 
    _quiz431 = [SKLabelNode  labelNodeWithFontNamed:@"Arial-BoldMT" ];
    _quiz431.text = @"The ships needed to be fast because there were alot of";
    _quiz431.fontSize = 12;
    _quiz431.color = [SKColor blackColor];
    _quiz431.colorBlendFactor = 1;
    _quiz431.zPosition = 20;
    _quiz431.position = CGPointMake(2070,340);
    
    _answer431 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz431.png"];
    _answer431.position = CGPointMake(_quiz431.position.x - 180,_quiz431.position.y-60);
    _answer431.xScale = 0.8;
    _answer431.zPosition = 15;
    _answer422.name=@"answer43";
    
    _answer432 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz432.png"];
    _answer432.position = CGPointMake(_quiz431.position.x +10,_quiz431.position.y-60);
    _answer432.xScale = 0.8;
    _answer432.zPosition = 15;
    
    _answer433 = [SKSpriteNode spriteNodeWithImageNamed:@"quiz433.png"];
    _answer433.position = CGPointMake(_quiz431.position.x + 200,_quiz431.position.y-60);
    _answer433.xScale = 0.8;
    _answer433.zPosition = 15;
    

    
    
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
    
    //creates atlas for the talking greek trader
    SKTextureAtlas *greekTraderAtlas = [SKTextureAtlas atlasNamed:@"greek_trader"];
    SKTexture *greek_trader1 = [greekTraderAtlas textureNamed:@"greek_trader1.png"];
    SKTexture *greek_trader2 = [greekTraderAtlas textureNamed:@"greek_trader2.png"];
    NSArray *greekTraderTextures = @[greek_trader1,greek_trader2];
    
    //creates atlas for the talking greek politician
    SKTextureAtlas *greekPoliticianAtlas = [SKTextureAtlas atlasNamed:@"greek_politician"];
    SKTexture *greek_politician1 = [greekPoliticianAtlas textureNamed:@"gree_politician1.png"];
    SKTexture *greek_politician2 = [greekPoliticianAtlas textureNamed:@"gree_politician2.png"];
    NSArray *greekPoliticianTextures = @[greek_politician1,greek_politician2];
    
    //creates atlas for the talking greek officer
    SKTextureAtlas *greekOfficerAtlas = [SKTextureAtlas atlasNamed:@"greek_officer"];
    SKTexture *greek_officer1 = [greekOfficerAtlas textureNamed:@"greek_officer1.png"];
    SKTexture *greek_officer2 = [greekOfficerAtlas textureNamed:@"greek_officer2.png"];
    NSArray *greekOfficerTextures = @[greek_officer1,greek_officer2];
    
    //creates atlas for the talking greek marine
    SKTextureAtlas *greekMarineAtlas = [SKTextureAtlas atlasNamed:@"greek_marine"];
    SKTexture *greek_marine1 = [greekMarineAtlas textureNamed:@"greek_marine1.png"];
    SKTexture *greek_marine2 = [greekMarineAtlas textureNamed:@"greek_marine2.png"];
    NSArray *greekMarineTextures = @[greek_marine1,greek_marine2];
    
    //runs the idle animation
    self.idleAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienIdleTextures timePerFrame:0.1]];
    [self.alien runAction:self.idleAnimation ];
    
    //instantiate walking tothe right animation
    self.walkAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienWalkTextures timePerFrame:0.1]];
    
    //instantiate walking to the left animation
    self.walk2Animation = [SKAction repeatActionForever:[SKAction animateWithTextures:alienWalk2Textures timePerFrame:0.1]];
    
    //instantiate the walking trader animation
    self.traderAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:greekTraderTextures timePerFrame:0.2]];
    
    //instantiate the walking politician animation
    self.politicianAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:greekPoliticianTextures timePerFrame:0.2]];
    
    //instantiate the walking officer animation
    self.officerAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:greekOfficerTextures timePerFrame:0.2]];
    
    //instantiate the walking marine animation
    self.marineAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:greekMarineTextures timePerFrame:0.2]];
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
    
    else if ([node.name isEqualToString:@"panel"]) {
        _skip = true;
    }
    
    else if ([node.name isEqualToString:@"answer1"]) {
        _greekquiz11 = true;
    }
    else if ([node.name isEqualToString:@"answer2"]) {
        _greekquiz12 = true;
    }
    else if ([node.name isEqualToString:@"answer3"]) {
        _greekquiz13 = true;
        _greekCleared1 = true;
    }
    else if ([node.name isEqualToString:@"answer21"]){
        _greekquiz21 = true;
    }
    else if ([node.name isEqualToString:@"answer22"]){
        _greekquiz22 = true;
    }
    else if ([node.name isEqualToString:@"answer23"]){
        _greekquiz23 = true;
        _greekCleared2 = true;
    }
    
    else if ([node.name isEqualToString:@"answer31"]){
        _greekquiz31 = true;
    }
    else if ([node.name isEqualToString:@"answer32"]){
        _greekquiz32 = true;
    }
    else if ([node.name isEqualToString:@"answer33"]){
        _greekquiz33 = true;
        _greekCleared3 = true;
    }
    
    else if ([node.name isEqualToString:@"answer41"]){
        _greekquiz41 = true;
    }
    else if ([node.name isEqualToString:@"answer42"]){
        _greekquiz42 = true;
    }
    else if ([node.name isEqualToString:@"answer43"]){
        _greekquiz43 = true;
        _greekCleared4 = true;
    }
    
    else if ([node.name isEqualToString:@"dialog"]){
        [self goToLevelChoser];
    }
    
    else if ([node.name isEqualToString:@"select"]) {
       
        
        if ([_myWorldView childNodeWithName:@"panel"] == nil) {
            
            if (!_greekCleared1) {
                self.greekSpeech11 = true;
                 _deltaTime = _elapsedTime;
                _deltaPosition = _alien.position;
                [self.myWorldView addChild:_speech111];
                [self.myWorldView addChild:_speech112];
                [self.myWorldView addChild:_speech113];
                [self.myWorldView addChild:_speech114];
                [self.myWorldView addChild:_speech115];
                [self startBackgroundMusic11];
                [self.myWorldView addChild:_panel];
                [self.myWorldView addChild:self.greekTrader];
                [self.greekTrader runAction:_traderAnimation];
            }
            else if (_greekCleared1 && !_greekCleared2){
                
                 _deltaTime = _elapsedTime;
                _panel.position = CGPointMake(_panel.position.x + _deltaPosition.x + _panel.size.width/2, _panel.position.y+_deltaPosition.y - _panel.size.height/2);
                NSLog(@"2 eme cas %f %f",_panel.position.x + _deltaPosition.x + _panel.size.width/2, _panel.position.y+_deltaPosition.y - _panel.size.height/2);
                self.greekSpeech21 = true;
                [self.myWorldView addChild:_speech211];
                [self.myWorldView addChild:_speech212];
                [self.myWorldView addChild:_speech213];
                [self.myWorldView addChild:_speech214];
                [self.myWorldView addChild:_speech215];
                [self startBackgroundMusic21];
                [self.myWorldView addChild:_panel];
                [self.myWorldView addChild:self.greekPolitician];
                [self.greekPolitician runAction:_politicianAnimation];
            }
            
            else if (_greekCleared1 && _greekCleared2 && !_greekCleared3){
                 _deltaTime = _elapsedTime;
                _panel.position = CGPointMake(1830,300);
                 NSLog(@"3 eme cas %f %f",_panel.position.x + _deltaPosition.x + _panel.size.width/2, _panel.position.y+_deltaPosition.y - _panel.size.height/2);
                self.greekSpeech31 = true;
                [self.myWorldView addChild:_panel];
                [self.myWorldView addChild:_speech311];
                [self.myWorldView addChild:_speech312];
                [self.myWorldView addChild:_speech313];
                [self.myWorldView addChild:_speech314];
                [self.myWorldView addChild:_speech315];
                [self startBackgroundMusic31];
                [self.myWorldView addChild:self.greekOfficer];
                [self.greekOfficer runAction:_officerAnimation];
                
            }
            else if (_greekCleared1 && _greekCleared2 && _greekCleared3 && !_greekCleared4){
                _deltaTime = _elapsedTime;
                _panel.position = CGPointMake(2100,300);
                _panel.size =CGSizeMake(650, 120);
                NSLog(@"3 eme cas %f %f",_panel.position.x + _deltaPosition.x + _panel.size.width/2, _panel.position.y+_deltaPosition.y - _panel.size.height/2);
                self.greekSpeech41 = true;
                [self.myWorldView addChild:_panel];
                [self.myWorldView addChild:_speech411];
                [self.myWorldView addChild:_speech412];
                [self.myWorldView addChild:_speech413];
                [self.myWorldView addChild:_speech414];
                [self.myWorldView addChild:_speech415];
                [self startBackgroundMusic41];
                [self.myWorldView addChild:self.greekMarine];
                [self.greekMarine runAction:_marineAnimation];
                
            }
            NSLog(@"delta time %f",_deltaTime);
            NSLog(@"panel position x: %f y: %f",_panel.position.x,_panel.position.y);
            
        }
        NSLog(@"here 2");
        [_SelectControl removeFromParent];
    }
    else if ([node.name isEqualToString:@"back"]) {
        
        [self gotoMainMenu];
    }
}

-(void) didSimulatePhysics{
    if(self.alien.position.x>(self.size.width)/2 && self.alien.position.x<2100){
        CGPoint oldposition = CGPointMake(self.myWorldView.position.x, self.myWorldView.position.y);
        self.myWorldView.position = CGPointMake(-(self.alien.position.x-(self.size.width/2)),self.myWorldView.position.y);
        CGPoint deltaPosition = CGPointMake(self.myWorldView.position.x - oldposition.x, self.myWorldView.position.y - oldposition.y);
        self.leftControl.position = CGPointMake(self.leftControl.position.x - deltaPosition.x,self.leftControl.position.y + deltaPosition.y);
        self.rightControl.position = CGPointMake(self.rightControl.position.x - deltaPosition.x,self.rightControl.position.y + deltaPosition.y);
    }
    
    else if ((_alien.position.y > self.size.height/2)){
        CGPoint oldposition = CGPointMake(self.myWorldView.position.x, self.myWorldView.position.y);
        self.myWorldView.position = CGPointMake(self.myWorldView.position.x, -((self.alien.position.y) - self.size.height/2));
        CGPoint deltaPosition = CGPointMake(self.myWorldView.position.x - oldposition.x, self.myWorldView.position.y - oldposition.y);
        self.leftControl.position = CGPointMake(self.leftControl.position.x - deltaPosition.x,self.leftControl.position.y - deltaPosition.y);
        self.rightControl.position = CGPointMake(self.rightControl.position.x - deltaPosition.x,self.rightControl.position.y - deltaPosition.y);

    }
    
}

-(void) update:(NSTimeInterval)currentTime{
    self.elapsedTime = currentTime;
   
  // NSLog(@"player position in the greek level: %f and height: %f",_alien.position.x,_alien.position.y);
   //  NSLog(@"current time %f",_countTime);
    if ((_elapsedTime - _deltaTime >30 || _skip) && _greekSpeech11) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech11 = false;
        _greekSpeech12 = true;
        [_backgroundAudioPlayer stop];
        [_speech111 removeFromParent];
        [_speech112 removeFromParent];
        [_speech113 removeFromParent];
        [_speech114 removeFromParent];
        [_speech115 removeFromParent];
        [self.myWorldView addChild:_speech121];
        [self.myWorldView addChild:_speech122];
        [self.myWorldView addChild:_speech123];
        [self.myWorldView addChild:_speech124];
        [self.myWorldView addChild:_speech125];
        [self startBackgroundMusic12];
        NSLog(@"first speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >30 || _skip) && _greekSpeech12) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech12 = false;
        _greekSpeech13 = true;
        [_backgroundAudioPlayer stop];
        [_speech121 removeFromParent];
        [_speech122 removeFromParent];
        [_speech123 removeFromParent];
        [_speech124 removeFromParent];
        [_speech125 removeFromParent];
        [self.myWorldView addChild:_speech131];
        [self.myWorldView addChild:_speech132];
        [self.myWorldView addChild:_speech133];
        [self.myWorldView addChild:_speech134];
        [self.myWorldView addChild:_speech135];
        [self startBackgroundMusic13];
        NSLog(@"second speech over");
    }
    
   else  if ((_elapsedTime - _deltaTime >20 || _skip) && _greekSpeech13) {
        _skip = false;
        _greekSpeech13 = false;
        [_backgroundAudioPlayer stop];
        [_speech131 removeFromParent];
        [_speech132 removeFromParent];
        [_speech133 removeFromParent];
        [_speech134 removeFromParent];
        [_speech135 removeFromParent];
        [_greekTrader removeFromParent];
        [self.myWorldView addChild:_quiz111];
        [self.myWorldView addChild:_answer111];
        [self.myWorldView addChild:_answer112];
        [self.myWorldView addChild:_answer113];
        NSLog(@"third speech over");
    }
    
    else if(_greekquiz11){
        _greekquiz11 = false;
        [_quiz111 removeFromParent];
        [_answer111 removeFromParent];
        [_answer112 removeFromParent];
        [_answer113 removeFromParent];
        [self.myWorldView addChild:_quiz121];
        [self.myWorldView addChild:_answer121];
        [self.myWorldView addChild:_answer122];
        [self.myWorldView addChild:_answer123];
        
        
    }
    else if(_greekquiz12){
        _greekquiz12 = false;
        [_quiz121 removeFromParent];
        [_answer121 removeFromParent];
        [_answer122 removeFromParent];
        [_answer123 removeFromParent];
        [self.myWorldView addChild:_quiz131];
        [self.myWorldView addChild:_answer131];
        [self.myWorldView addChild:_answer132];
        [self.myWorldView addChild:_answer133];
        
        
    }
    else if(_greekquiz13){
        _greekquiz13 = false;
        [_panel removeFromParent];
        [_quiz131 removeFromParent];
        [_answer131 removeFromParent];
        [_answer132 removeFromParent];
        [_answer133 removeFromParent];
    }
    
    else if ((_elapsedTime - _deltaTime >20 || _skip) && _greekSpeech21) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech21 = false;
        _greekSpeech22 = true;
        [_backgroundAudioPlayer stop];
        [_speech211 removeFromParent];
        [_speech212 removeFromParent];
        [_speech213 removeFromParent];
        [_speech214 removeFromParent];
        [_speech215 removeFromParent];
        [self.myWorldView addChild:_speech221];
        [self.myWorldView addChild:_speech222];
        [self.myWorldView addChild:_speech223];
        [self.myWorldView addChild:_speech224];
        [self startBackgroundMusic22];
        NSLog(@"first speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >20 || _skip) && _greekSpeech22) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech22 = false;
        _greekSpeech23 = true;
        [_backgroundAudioPlayer stop];
        [_speech221 removeFromParent];
        [_speech222 removeFromParent];
        [_speech223 removeFromParent];
        [_speech224 removeFromParent];
        [self.myWorldView addChild:_speech231];
        [self.myWorldView addChild:_speech232];
        [self.myWorldView addChild:_speech233];
        [self.myWorldView addChild:_speech234];
        [self.myWorldView addChild:_speech235];
        [self startBackgroundMusic23];
        NSLog(@"second speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >30 || _skip) && _greekSpeech23) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech23 = false;
        [_backgroundAudioPlayer stop];
        [_speech231 removeFromParent];
        [_speech232 removeFromParent];
        [_speech233 removeFromParent];
        [_speech234 removeFromParent];
        [_speech235 removeFromParent];
        [_greekPolitician removeFromParent];
        [self.myWorldView addChild:_quiz211];
        [self.myWorldView addChild:_answer211];
        [self.myWorldView addChild:_answer212];
        [self.myWorldView addChild:_answer213];
        NSLog(@"third speech over");
    }
    
    else if(_greekquiz21){
        _greekquiz21 = false;
        [_quiz211 removeFromParent];
        [_answer211 removeFromParent];
        [_answer212 removeFromParent];
        [_answer213 removeFromParent];
        [self.myWorldView addChild:_quiz221];
        [self.myWorldView addChild:_answer221];
        [self.myWorldView addChild:_answer222];
        [self.myWorldView addChild:_answer223];
        
        
    }
    else if(_greekquiz22){
        _greekquiz22 = false;
        [_quiz221 removeFromParent];
        [_answer221 removeFromParent];
        [_answer222 removeFromParent];
        [_answer223 removeFromParent];
        [self.myWorldView addChild:_quiz231];
        [self.myWorldView addChild:_answer231];
        [self.myWorldView addChild:_answer232];
        [self.myWorldView addChild:_answer233];
        
        
    }
    else if(_greekquiz23){
        _greekquiz23 = false;
        [_panel removeFromParent];
        [_quiz231 removeFromParent];
        [_answer231 removeFromParent];
        [_answer232 removeFromParent];
        [_answer233 removeFromParent];
    }
    
    else if ((_elapsedTime - _deltaTime >45 || _skip) && _greekSpeech31) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech31 = false;
        _greekSpeech32 = true;
        [_backgroundAudioPlayer stop];
        [_speech311 removeFromParent];
        [_speech312 removeFromParent];
        [_speech313 removeFromParent];
        [_speech314 removeFromParent];
        [_speech315 removeFromParent];
        [self.myWorldView addChild:_speech321];
        [self.myWorldView addChild:_speech322];
        [self.myWorldView addChild:_speech323];
        [self.myWorldView addChild:_speech324];
        [self.myWorldView addChild:_speech325];
        [self startBackgroundMusic32];
        NSLog(@"first speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >20 || _skip) && _greekSpeech32) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech32 = false;
        _greekSpeech33 = true;
        [_backgroundAudioPlayer stop];
        [_speech321 removeFromParent];
        [_speech322 removeFromParent];
        [_speech323 removeFromParent];
        [_speech324 removeFromParent];
        [_speech325 removeFromParent];
        [self.myWorldView addChild:_speech331];
        [self.myWorldView addChild:_speech332];
        [self.myWorldView addChild:_speech333];
        [self.myWorldView addChild:_speech334];
        [self.myWorldView addChild:_speech335];
        [self startBackgroundMusic33];
        NSLog(@"second speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >30 || _skip) && _greekSpeech33) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech33 = false;
        [_greekOfficer removeFromParent];
        [_backgroundAudioPlayer stop];
        [_speech331 removeFromParent];
        [_speech332 removeFromParent];
        [_speech333 removeFromParent];
        [_speech334 removeFromParent];
        [_speech335 removeFromParent];
        [self.myWorldView addChild:_quiz311];
        [self.myWorldView addChild:_answer311];
        [self.myWorldView addChild:_answer312];
        [self.myWorldView addChild:_answer313];
        NSLog(@"third speech over");
    }
    
    else if(_greekquiz31){
        _greekquiz31 = false;
        [_quiz311 removeFromParent];
        [_answer311 removeFromParent];
        [_answer312 removeFromParent];
        [_answer313 removeFromParent];
        [self.myWorldView addChild:_quiz321];
        [self.myWorldView addChild:_answer321];
        [self.myWorldView addChild:_answer322];
        [self.myWorldView addChild:_answer323];
        
        
    }
    else if(_greekquiz32){
        _greekquiz32 = false;
        [_quiz321 removeFromParent];
        [_answer321 removeFromParent];
        [_answer322 removeFromParent];
        [_answer323 removeFromParent];
        [self.myWorldView addChild:_quiz331];
        [self.myWorldView addChild:_answer331];
        [self.myWorldView addChild:_answer332];
        [self.myWorldView addChild:_answer333];
    }
    else if(_greekquiz33){
        _greekquiz33 = false;
        [_panel removeFromParent];
        [_quiz331 removeFromParent];
        [_answer331 removeFromParent];
        [_answer332 removeFromParent];
        [_answer333 removeFromParent];
    }
    
    else if ((_elapsedTime - _deltaTime >30 || _skip) && _greekSpeech41) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech41 = false;
        _greekSpeech42 = true;
        [_backgroundAudioPlayer stop];
        [_speech411 removeFromParent];
        [_speech412 removeFromParent];
        [_speech413 removeFromParent];
        [_speech414 removeFromParent];
        [_speech415 removeFromParent];
        [self.myWorldView addChild:_speech421];
        [self.myWorldView addChild:_speech422];
        [self.myWorldView addChild:_speech423];
        [self.myWorldView addChild:_speech424];
        [self.myWorldView addChild:_speech425];
        [self startBackgroundMusic42];
        NSLog(@"first speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >45 || _skip) && _greekSpeech42) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech42 = false;
        _greekSpeech43 = true;
        [_backgroundAudioPlayer stop];
        [_speech421 removeFromParent];
        [_speech422 removeFromParent];
        [_speech423 removeFromParent];
        [_speech424 removeFromParent];
        [_speech425 removeFromParent];
        [self.myWorldView addChild:_speech431];
        [self.myWorldView addChild:_speech432];
        [self.myWorldView addChild:_speech433];
        [self.myWorldView addChild:_speech434];
        [self.myWorldView addChild:_speech435];
        [self startBackgroundMusic43];
        NSLog(@"second speech over");
    }
    
    else if ((_elapsedTime - _deltaTime >45 || _skip) && _greekSpeech43) {
        _deltaTime = _elapsedTime;
        _skip = false;
        _greekSpeech43 = false;
        [_greekMarine removeFromParent];
        [_backgroundAudioPlayer stop];
        [_speech431 removeFromParent];
        [_speech432 removeFromParent];
        [_speech433 removeFromParent];
        [_speech434 removeFromParent];
        [_speech435 removeFromParent];
        [self.myWorldView addChild:_quiz411];
        [self.myWorldView addChild:_answer411];
        [self.myWorldView addChild:_answer412];
        [self.myWorldView addChild:_answer413];
        NSLog(@"third speech over");
    }
    
    else if(_greekquiz41){
        _greekquiz41 = false;
        [_quiz411 removeFromParent];
        [_answer411 removeFromParent];
        [_answer412 removeFromParent];
        [_answer413 removeFromParent];
        [self.myWorldView addChild:_quiz421];
        [self.myWorldView addChild:_answer421];
        [self.myWorldView addChild:_answer422];
        [self.myWorldView addChild:_answer423];
        
        
    }
    else if(_greekquiz42){
        _greekquiz42 = false;
        [_quiz421 removeFromParent];
        [_answer421 removeFromParent];
        [_answer422 removeFromParent];
        [_answer423 removeFromParent];
        [self.myWorldView addChild:_quiz431];
        [self.myWorldView addChild:_answer431];
        [self.myWorldView addChild:_answer432];
        [self.myWorldView addChild:_answer433];
    }
    else if(_greekquiz43){
        _greekquiz43 = false;
        [_panel removeFromParent];
        [_quiz431 removeFromParent];
        [_answer431 removeFromParent];
        [_answer432 removeFromParent];
        [_answer433 removeFromParent];
        [_myWorldView addChild:_dialog];
    }
    

    
    if(_isMovingRight == true ){
      if(self.alien.position.x <=215 && !_greekCleared1){
            NSLog(@"this one 2");
            self.alien.position = CGPointMake(_alien.position.x + 3.0, _alien.position.y);
        }
      else if(self.alien.position.x >=200 && self.alien.position.x <=220 && !_greekSpeech11&& !_greekSpeech12&& !_greekSpeech13&& !_greekquiz11&& !_greekquiz12&& !_greekquiz13 && !_greekCleared1){
          if ([_myWorldView childNodeWithName:@"select"] == nil) {
              
              [self.myWorldView addChild:_SelectControl];
          }
      }
      else if(self.alien.position.x>=950&& self.alien.position.x <=970 && _greekCleared1 && !_greekSpeech21&& !_greekSpeech22&& !_greekSpeech23&& !_greekquiz21&& !_greekquiz22&& !_greekquiz23 && !_greekCleared2){
          if ([_myWorldView childNodeWithName:@"select"] == nil) {
              _SelectControl.position = CGPointMake(1200,_SelectControl.size.height /2 + 10);
              [self.myWorldView addChild:_SelectControl];
          }

      }
        
      else if(self.alien.position.x>=1880&& self.alien.position.x <=2000 && _greekCleared1 && _greekCleared2 && !_greekSpeech31&& !_greekSpeech32&& !_greekSpeech33&& !_greekquiz31&& !_greekquiz32&& !_greekquiz33 && !_greekCleared3){
          if ([_myWorldView childNodeWithName:@"select"] == nil) {
              _SelectControl.position = CGPointMake(2150,30);
              [self.myWorldView addChild:_SelectControl];
          }
          
      }
      else if(self.alien.position.x>=2260&& self.alien.position.x <=2280 && _greekCleared1 && _greekCleared2 && _greekCleared3 && !_greekSpeech41&& !_greekSpeech42&& !_greekSpeech43&& !_greekquiz41&& !_greekquiz42&& !_greekquiz43 && !_greekCleared4){
          if ([_myWorldView childNodeWithName:@"select"] == nil) {
              _SelectControl.position = CGPointMake(2260,30);
              [self.myWorldView addChild:_SelectControl];
          }
          
      }
        
      else if(self.alien.position.x<3000 && _greekCleared1 && _greekCleared2 && _greekCleared3&& !_greekCleared4 ){
          self.alien.position = CGPointMake(_alien.position.x + 3.0, _alien.position.y);
          
      }
      else if(self.alien.position.x<2000 && _greekCleared1 && !_greekCleared2 ){
          self.alien.position = CGPointMake(_alien.position.x + 3.0, _alien.position.y);
          
      }
      else if(self.alien.position.x<2000 && _greekCleared1 && _greekCleared2 && !_greekCleared3){
          self.alien.position = CGPointMake(_alien.position.x + 3.0, _alien.position.y);
          
      }
    }
    
    else if(_isMovingLeft == true){
        self.alien.position = CGPointMake(_alien.position.x - 3.0, _alien.position.y);
        
        if(self.alien.position.x >= 0 && self.alien.position.x <=215 && !_greekCleared1){
            self.alien.position = CGPointMake(_alien.position.x - 3.0, _alien.position.y);
        }
        else if(self.alien.position.x >=200 && self.alien.position.x <=220 && !_greekSpeech11&& !_greekSpeech12&& !_greekSpeech13&& !_greekquiz11&& !_greekquiz12&& !_greekquiz13 && !_greekCleared1){
        }
        
    }
}

-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
    self.isMovingRight = false;
    self.isMovingLeft = false;
    [self.alien runAction:self.idleAnimation];
}

- (void)startBackgroundMusic11
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_trader1.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void)startBackgroundMusic12
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_trader2.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}

- (void)startBackgroundMusic13
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_trader3.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void)startBackgroundMusic21
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_politician1.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void)startBackgroundMusic22
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_politician2.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}

- (void)startBackgroundMusic23
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_politician3.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}

- (void)startBackgroundMusic31
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_officer1.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}

- (void)startBackgroundMusic32
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_officer2.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}

- (void)startBackgroundMusic33
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_officer3.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void)startBackgroundMusic41
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_marine1.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void)startBackgroundMusic42
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_marine2.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void)startBackgroundMusic43
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"greek_marine3.mp3" ofType:nil]];
    _backgroundAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudioPlayer prepareToPlay];
    
    [_backgroundAudioPlayer setVolume:1.0];
    [_backgroundAudioPlayer play];
}
- (void) goToLevelChoser{
    [self removeAllChildren];
    Level01 *level01 =
    [[Level01 alloc]initWithSize:CGSizeMake(1400, 800)];
    level01.levelReached=2;
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    NSString *currentLevelKey = @"currentlevel";
    
    const NSInteger currentLevel = 2;
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
