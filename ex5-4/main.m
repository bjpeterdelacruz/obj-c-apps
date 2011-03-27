//
//  main.m
//  Exercise 5-4
//  Programming in Objective-C 2.0, 2nd Edition
//
//  Calculator
//
//  Created by BJ Peter DeLaCruz on 3/26/11.
//  Copyright 2011 University of Hawaii at Manoa. All rights reserved.
//

// #import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import "Calc.h"

NSString* getInput(int* ptrValue, char* userInput) {
	scanf("%i %s", &(*ptrValue), userInput);
	NSRange range = NSMakeRange([[NSString stringWithUTF8String:userInput] length] - 1, 1);
	return [[NSString stringWithUTF8String:userInput] substringWithRange:range];
}

void programLoop(Calc *calculator, int* ptrValue, char* userInput) {
	NSString *operator = getInput(ptrValue, userInput);
	while (![operator isEqualToString:@"E"]) {
		if ([operator isEqualToString:@"+"]) {
			[calculator add:(*ptrValue)];
		}
		else if ([operator isEqualToString:@"-"]) {
			[calculator sub:(*ptrValue)];
		}
		else if ([operator isEqualToString:@"*"]) {
			[calculator mul:(*ptrValue)];
		}
		else if ([operator isEqualToString:@"/"]) {
			[calculator div:(*ptrValue)];
		}
		else if (![operator isEqualToString:@"E"]) {
			NSLog(@"Invalid input. Please try again.\n");
		}
		operator = getInput(ptrValue, userInput);
	}	
}

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSLog(@"Starting calculator...\n");

	// Get initial value from user.
	int value = 0;
	int* ptrValue = &value;
	char* userInput = (char*) malloc(sizeof(char) * 10);

	// Get S to set up accumulator.
	NSString *operator = getInput(ptrValue, userInput);

	Calc *calculator;
	if ([operator isEqualToString:@"S"]) {
		calculator = [[Calc alloc] initWithValue:value];
	}
	else {
		NSLog(@"Invalid input. Expected S, got %@. Exiting program...", operator);
		exit(1);
	}

	programLoop(calculator, ptrValue, userInput);

	// Clean up.
	[calculator dealloc];
	[pool drain];
	free(userInput);

	NSLog(@"Exiting calculator...\n");

	return 0;
	// return NSApplicationMain(argc,  (const char **) argv);
}
