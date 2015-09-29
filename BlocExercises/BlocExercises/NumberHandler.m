//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return ( [NSNumber numberWithFloat:[number floatValue]  * 2.0 ] );
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger lowerBound = ( number < otherNumber ) ? number : otherNumber;
    NSInteger upperBound = ( otherNumber < number ) ? number : otherNumber;
    
    NSMutableArray *ascendingNumberArray = [@[] mutableCopy];
    
    while ( lowerBound <= upperBound ) {
        [ascendingNumberArray addObject:[NSNumber numberWithInt:lowerBound]];
        lowerBound++;
    }
    
    return ascendingNumberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    int lowestNumber = [arrayOfNumbers[0] intValue];
    
    for (NSNumber *number in arrayOfNumbers) {
        if ( [number intValue] < lowestNumber ) {
            lowestNumber = [number intValue];
        }
    }
    
    return lowestNumber;
}

@end
