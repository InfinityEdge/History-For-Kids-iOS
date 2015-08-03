//
//  LevelEgyptian.h
//  History For Kids
//
//  Created by haythem on 4/17/15.
//  Copyright (c) 2015 Infinity Edge. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "JSTileMap.h"

@interface LevelEgyptian : SKScene
@property BOOL contentCreated;
@property (nonatomic, strong) JSTileMap *mapEgyptian;
@property (nonatomic, strong) SKNode *myWorldView;
@property (nonatomic, strong) SKSpriteNode *dialog;
@property (nonatomic, strong) SKSpriteNode *backControl;
@property (nonatomic, strong) SKSpriteNode *mummy;
@property (nonatomic, strong) SKSpriteNode *pharaon;
@property (nonatomic, strong) SKSpriteNode *horus;
@property (nonatomic, strong) SKSpriteNode *mummyPanel;
@property (nonatomic, strong) SKSpriteNode *pharaonPanel;
@property (nonatomic, strong) SKSpriteNode *horusPanel;
@property  int cleared;
@end
