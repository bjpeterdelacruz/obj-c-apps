//
//  Calc.m
//  Exercise 5-4
//  Programming in Objective-C 2.0, 2nd Edition
//
//  Calculator
//
//  Created by BJ Peter DeLaCruz on 3/26/11.
//  Copyright 2011 University of Hawaii at Manoa. All rights reserved.
//

#import "Calc.h"


@implementation Calc

@synthesize accumulator;

-(void) add:(NSInteger)val {
	self.accumulator += val;
	NSLog(@"= %i", self.accumulator);
}

-(void) sub:(NSInteger)val {
	self.accumulator -= val;
	NSLog(@"= %i", self.accumulator);
}

-(void) mul:(NSInteger)val {
	self.accumulator *= val;
	NSLog(@"= %i", self.accumulator);
}

-(void) div:(NSInteger)val {
	if (val == 0) {
		NSLog(@"Division by zero detected! Please try again.\n");
	}
	else {
		self.accumulator /= val;
		NSLog(@"= %i", self.accumulator);
	}
}

-(id) init {
	if (self = [super init]) {
		self.accumulator = 0;
	}
	NSLog(@"Setting accumulator to 0.\n");
	return self;
}

-(id) initWithValue:(NSInteger)val {
	if (self = [super init]) {
		self.accumulator = val;
	}
	NSLog(@"Setting accumulor to %i.\n", self.accumulator);
	return self;
}

-(void) dealloc {
	[super dealloc];
}

@end
