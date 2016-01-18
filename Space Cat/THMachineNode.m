//
//  THMachineNode.m
//  Space Cat
//
//  Created by Алексей on 22.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import "THMachineNode.h"

@implementation THMachineNode

+(instancetype) machineAtPosition:(CGPoint)position {
    
    THMachineNode *machine = [self spriteNodeWithImageNamed:@"machine_1"];
    machine.position = position;
    machine.anchorPoint = CGPointMake(0.5, 0);
    machine.name = @"Machine";
    machine.zPosition = 8;
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"machine_1"],
                          [SKTexture textureWithImageNamed:@"machine_2"]];
    
    SKAction *machineAnimation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    
    SKAction *machineRepeat = [SKAction repeatActionForever:machineAnimation];
    
    [machine runAction:machineRepeat];
    
    
    return machine;
    
    
    
}

@end
