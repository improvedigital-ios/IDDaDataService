//
// Created by Vladimir Prigarin on 26/03/2018.
// Copyright (c) 2018 Improve Digital. All rights reserved.
//

#import "IDViewAnimator.h"


@implementation IDViewAnimator

+ (void)hide:(UIView *)view withDuration:(NSTimeInterval)duration {

    [self hide:view withDuration:duration withCompletionBlock:nil];
}

+ (void)hide:(UIView *)view withDuration:(NSTimeInterval)duration withCompletionBlock:(void (^)(void))completionBlock {

    id animationBlock = ^{

        view.alpha = 0;
    };

    id boxedCompletionBlock = ^(BOOL finished) {

        view.hidden = YES;
        if( nil != completionBlock ) {
            completionBlock();
        }
    };

    [UIView animateWithDuration:duration animations:animationBlock completion:boxedCompletionBlock];
}

+ (void)show:(UIView *)view withDuration:(NSTimeInterval)duration {

    [self show:view withDuration:duration withCompletionBlock:nil];
}

+ (void)show:(UIView *)view withDuration:(NSTimeInterval)duration withCompletionBlock:(void (^)(void))completionBlock {

    view.alpha = 0;

    id animationBlock = ^{

        view.alpha = 1;
        view.hidden = NO;
    };

    id boxedCompletionBlock = ^(BOOL finished) {

        if( nil != completionBlock ) {
            completionBlock();
        }
    };

    [UIView animateWithDuration:duration animations:animationBlock completion:boxedCompletionBlock];
}

@end