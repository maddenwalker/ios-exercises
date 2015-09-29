//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    //this code seems to be too process intensive as I am performing the same logic twice; wondering if it would be more beneficial to use a simple if/else statement
    NSInteger lowerBound = ( number < otherNumber ) ? number : otherNumber;
    NSInteger upperBound = ( otherNumber < number ) ? number : otherNumber;
    
    //same implementation as above with more lines of code, but with one comparison happening
//    NSInteger lowerBound;
//    NSInteger upperBound;
//     
//    if (number < otherNumber) {
//        lowerBound = number;
//        upperBound = otherNumber;
//    } else {
//        lowerBound = otherNumber;
//        upperBound = number;
//    }
    
    NSMutableString *rangeOfNumbers = [@"" mutableCopy];
    
    while ( lowerBound <= upperBound ) {
        [rangeOfNumbers appendString:[NSString stringWithFormat:@"%d",lowerBound]];
        lowerBound++;
        NSLog(@"%@", rangeOfNumbers);
    }
    
    return rangeOfNumbers;
}

@end
