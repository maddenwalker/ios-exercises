//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return [characterDictionary valueForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinks = [@[] mutableCopy];
    for (NSDictionary *characters in charactersArray) {
        [favoriteDrinks addObject:[characters valueForKey:@"favorite drink"]];
    }
    
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    [mutableCharacterDictionary setObject:@"memorable quote" forKey:@"quote"];
    
    return mutableCharacterDictionary;
}

@end
