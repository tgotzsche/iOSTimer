//
//  iOSTimer.h
//
//  Created by Thomas Goetzsche on 07/06/14.
//  Copyright (c) 2014 Sofier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface iOSTimer : NSObject
-(long)elapsedInSeconds;
-(double)elapsedInMilliSeconds;
-(void)reset;
-(void)stop;
-(BOOL)isRunning;
@end
