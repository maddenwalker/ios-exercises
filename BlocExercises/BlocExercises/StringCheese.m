//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {

    NSMutableString *cheeseLabel = [cheeseName mutableCopy];
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseLabel rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        [cheeseLabel deleteCharactersInRange:cheeseRange];
    }

    return cheeseLabel;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {

    NSMutableString *cheeseStringWithCount = [NSMutableString stringWithFormat:@"%lu cheese", (unsigned long)cheeseCount];
    
    if (cheeseCount == 1) {
        //since only one cheese exists no need to pluralize
        
    } else {
        [cheeseStringWithCount appendString:@"s"];
    }
    
    return cheeseStringWithCount;
}

@end
