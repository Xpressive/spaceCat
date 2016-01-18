//
//  THGameOverNode.h
//  Space Cat
//
//  Created by Алексей on 24.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface THGameOverNode : SKNode

+(instancetype) gameOverAtPosition:(CGPoint)position;

-(void) performAnimation;

@end
