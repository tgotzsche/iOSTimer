//
//  iOSTimer.m
//
//  Created by Thomas Goetzsche on 07/06/14.
//  Copyright (c) 2014. All rights reserved.
//

#import "iOSTimer.h"

@interface iOSTimer()  {
    NSTimeInterval  start;
    BOOL isRunning;
}
@end

@implementation iOSTimer

-(id)init {
    self = [super init];
    [self reset];
    
    return self;
}

-(double)time {
    return [[NSDate date] timeIntervalSince1970 ] * 1000;
}
-(void)stop {
    start = 0;
    isRunning = NO;
}

-(void)reset {
    start = [self time];
    isRunning = YES;
}

-(BOOL)isRunning {
    return isRunning;
}

-(long)elapsedInSeconds {
    return [self elapsedInMilliSeconds] / 1000.0;
}

-(double)elapsedInMilliSeconds {
    if (start == 0) return 0;
    return ([self time] - start);
}

@end
