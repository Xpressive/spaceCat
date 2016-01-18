//
//  THTitleScene.m
//  Space Cat
//
//  Created by Алексей on 19.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import "THTitleScene.h"
#import "THGamePlayScene.h"
#import <AVFoundation/AVFoundation.h>

@interface THTitleScene ()

@property(nonatomic) SKAction *pressStartSFX;
@property(nonatomic) AVAudioPlayer *backgroundMusic;

@end

@implementation THTitleScene


-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        
        
        SKSpriteNode *background =[SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.zPosition = -1;
        [self addChild:background];
        
        self.pressStartSFX = [SKAction playSoundFileNamed:@"PressStart.caf" waitForCompletion:NO];
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"StartScreen" withExtension:@"mp3"];
        
        self.backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        self.backgroundMusic.numberOfLoops = -1;
        [self.backgroundMusic prepareToPlay];
        
    }
    return self;
    
}

-(void)didMoveToView:(SKView *)view {
    
    [self.backgroundMusic play];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self runAction:self.pressStartSFX];
    [self.backgroundMusic stop];
    
    THGamePlayScene *gamePlayScene = [THGamePlayScene sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    
    //SKTransition *transition1 = [SKTransition flipVerticalWithDuration:1.0];
    //SKTransition *transition3 = [SKTransition doorsCloseHorizontalWithDuration:2.0];
    
    [self.view presentScene:gamePlayScene transition:transition];
    
}


@end
