//
//  THSpaceDog.h
//  Space Cat
//
//  Created by Алексей on 23.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef NS_ENUM(NSUInteger, THSpaceDogType) {
    
    THSpaceDogTypeA = 0,
    THSpaceDogTypeB = 1
    
};

@interface THSpaceDogNode : SKSpriteNode

@property(nonatomic, getter=isDamaged) BOOL damaged;
@property(nonatomic) THSpaceDogType type;

+ (instancetype) spaceDogOfType:(THSpaceDogType)type;


@end
