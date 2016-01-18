//
//  THSpaceCatNode.m
//  Space Cat
//
//  Created by Алексей on 22.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import "THSpaceCatNode.h"


@interface THSpaceCatNode ()
@property(nonatomic) SKAction *tapAction;

@end

@implementation THSpaceCatNode

+(instancetype)spaceCatAtPosition:(CGPoint)position {
    
    THSpaceCatNode *spaceCat = [self spriteNodeWithImageNamed:@"spacecat_1"];
    spaceCat.anchorPoint = CGPointMake(0.5, 0);
    spaceCat.position = position;
    spaceCat.name = @"SpaceCat";
    spaceCat.zPosition = 9;
    
    return spaceCat;
    
}

-(void) performTap {
    
    [self runAction:self.tapAction];
    
}

-(SKAction *) tapAction {
    
    if (_tapAction != nil) {
        return _tapAction;
    }
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"spacecat_2"],
                          [SKTexture textureWithImageNamed:@"spacecat_1"]];
    
    _tapAction = [SKAction animateWithTextures:textures timePerFrame:0.25];
    return _tapAction;
    
}



@end
