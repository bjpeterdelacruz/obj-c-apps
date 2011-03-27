//
//  Calc.h
//  Exercise 5-4
//  Programming in Objective-C 2.0, 2nd Edition
//
//  Calculator
//
//  Created by BJ Peter DeLaCruz on 3/26/11.
//  Copyright 2011 University of Hawaii at Manoa. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Calc : NSObject {
	NSInteger accumulator;
}

@property NSInteger accumulator;
- (void) add:(NSInteger) val;
- (void) sub:(NSInteger) val;
- (void) mul:(NSInteger) val;
- (void) div:(NSInteger) val;
- (id) init;
- (id) initWithValue:(NSInteger) val;

@end
