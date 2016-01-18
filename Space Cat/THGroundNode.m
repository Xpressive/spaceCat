//
//  THGroundNode.m
//  Space Cat
//
//  Created by Алексей on 23.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import "THGroundNode.h"
#import "THUtil.h"

@implementation THGroundNode

+(instancetype) groundWithSize:(CGSize)size {
    
    THGroundNode *ground = [self spriteNodeWithColor:[SKColor greenColor] size:size];
    ground.name = @"Name";
    ground.position = CGPointMake(size.width / 2, size.height / 2);
    [ground setupPhysicsBody];
    
    return ground;
    
}

-(void) setupPhysicsBody {
    
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.dynamic = NO;
    self.physicsBody.categoryBitMask = THCollisionCategoryGround;
    self.physicsBody.collisionBitMask = THCollisionCategoryDebris;
    self.physicsBody.contactTestBitMask = THCollisionCategoryEnemy;
    
}

@end
