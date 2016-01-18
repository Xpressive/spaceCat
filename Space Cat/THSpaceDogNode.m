//
//  THSpaceDog.m
//  Space Cat
//
//  Created by Алексей on 23.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import "THSpaceDogNode.h"
#import "THUtil.h"

@implementation THSpaceDogNode

+(instancetype) spaceDogOfType:(THSpaceDogType)type {
    
    THSpaceDogNode *spaceDog;
    spaceDog.damaged = NO;
    spaceDog.zPosition = 10;
    
    NSArray *textures;
    
    if (type == THSpaceDogTypeA) {
        spaceDog = [self spriteNodeWithImageNamed:@"spacedog_A_1"];
        textures = @[[SKTexture textureWithImageNamed:@"spacedog_A_1"],
                     [SKTexture textureWithImageNamed:@"spacedog_A_2"],
                     [SKTexture textureWithImageNamed:@"spacedog_A_3"]
                     ];
        spaceDog.type = THSpaceDogTypeA;
    } else {
        spaceDog = [self spriteNodeWithImageNamed:@"spacedog_B_1"];
        textures = @[[SKTexture textureWithImageNamed:@"spacedog_B_1"],
                     [SKTexture textureWithImageNamed:@"spacedog_B_2"],
                     [SKTexture textureWithImageNamed:@"spacedog_B_3"],
                     [SKTexture textureWithImageNamed:@"spacedog_B_3"]
                     ];
        spaceDog.type = THSpaceDogTypeB;

    }
    
    float scale = [THUtil randomWithMin:85 max:100] / 100.0f;
    spaceDog.xScale = scale;
    spaceDog.yScale = scale;
    
    
    SKAction *animation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    
    [spaceDog runAction:[SKAction repeatActionForever:animation] withKey:@"animation"];
    
    [spaceDog setupPhysyicsBody];
    
    return  spaceDog;
}

- (BOOL) isDamaged {
    
    NSArray *textures;
    
    if (!_damaged) {
        [self removeActionForKey:@"animation"];
        
        if (self.type == THSpaceDogTypeA) {
            textures = @[[SKTexture textureWithImageNamed:@"spacedog_A_3"]];
        } else {
            textures = @[[SKTexture textureWithImageNamed:@"spacedog_B_4"]];
        }
        
        SKAction *animation = [SKAction animateWithTextures:textures timePerFrame:0.1];
        [self runAction:[SKAction repeatActionForever:animation] withKey:@"damage_animation"];
        
        _damaged = YES;
        
        return NO;
    } else {
        return YES;
    }
    
    
    
}


-(void) setupPhysyicsBody {
    
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = NO;
 
    self.physicsBody.categoryBitMask = THCollisionCategoryEnemy;
    self.physicsBody.collisionBitMask = 0;
    self.physicsBody.contactTestBitMask = THCollisionCategoryProjectile | THCollisionCategoryGround;
    
}

@end
