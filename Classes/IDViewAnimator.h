//
// Created by Vladimir Prigarin on 26/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IDViewAnimator : NSObject

+ (void)hide:(UIView *)view withDuration:(NSTimeInterval)duration;
+ (void)hide:(UIView *)view withDuration:(NSTimeInterval)duration withCompletionBlock:(void (^)(void))completionBlock;
+ (void)show:(UIView *)view withDuration:(NSTimeInterval)duration;
+ (void)show:(UIView *)view withDuration:(NSTimeInterval)duration withCompletionBlock:(void (^)(void))completionBlock;

@end
