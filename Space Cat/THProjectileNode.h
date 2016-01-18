//
//  THProjectileNode.h
//  Space Cat
//
//  Created by Алексей on 22.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface THProjectileNode : SKSpriteNode

+(instancetype) projectileAtPosition:(CGPoint)position;
-(void) moveTowardsPosition:(CGPoint)position;

@end
