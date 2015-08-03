//
//  GameViewController.m
//  History For Kids
//
//  Created by haythem on 2/25/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "MainMenuScene.h"

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    SKView *spriteView = (SKView *) self.view;

}



- (void)didReceiveMemoryWarning
{

}

- (void) viewWillAppear:(BOOL)animated {
    MainMenuScene *mainMenu = [[MainMenuScene alloc] initWithSize:CGSizeMake(1400,800)];
    SKView *spriteView = (SKView *) self.view;
    [spriteView presentScene:mainMenu ];
        [self startBackgroundMusic];
}
- (void)startBackgroundMusic
{
    NSError *err;
    NSURL *file = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"egyptian1.mp3" ofType:nil]];
    _backgroundAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:&err];
    if (err) {
        NSLog(@"error in audio play %@",[err userInfo]);
        return;
    }
    [_backgroundAudio prepareToPlay];
    
    [_backgroundAudio setVolume:0.6];
    _backgroundAudio.numberOfLoops = -1;
    [_backgroundAudio play];
    
    
    
}


@end
