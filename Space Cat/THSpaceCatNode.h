//
//  THSpaceCatNode.h
//  Space Cat
//
//  Created by Алексей on 22.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface THSpaceCatNode : SKSpriteNode

+(instancetype) spaceCatAtPosition:(CGPoint)position;
-(void) performTap;
@end
