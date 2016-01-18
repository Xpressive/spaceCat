//
//  THUtil.m
//  Space Cat
//
//  Created by Алексей on 23.12.15.
//  Copyright © 2015 XpressArts. All rights reserved.
//

#import "THUtil.h"

@implementation THUtil

+(NSInteger) randomWithMin:(NSInteger)min max:(NSInteger)max {
    
    return arc4random()%(max - min) + min;
    
}

@end
