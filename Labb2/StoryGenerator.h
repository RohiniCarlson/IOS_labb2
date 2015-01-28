//
//  StoryGenerator.h
//  Labb2
//
//  Created by it-högskolan on 2015-01-28.
//  Copyright (c) 2015 it-högskolan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoryGenerator : NSObject

-(instancetype)init;
-(NSString*)createActionStory;
-(NSString*)createLoveStory;
-(NSString*)createHorrorStory;

@end
