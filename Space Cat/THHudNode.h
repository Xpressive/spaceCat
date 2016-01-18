//
//  THHudNode.h
//  Space Cat
//
//  Created by Алексей on 24.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface THHudNode : SKNode

@property(nonatomic) NSInteger lives;
@property(nonatomic) NSInteger score;

+ (instancetype) hudAtPosition:(CGPoint)position inFrame:(CGRect)frame;
- (void) addPoints:(NSInteger)points;
- (BOOL) loseLife;



@end
