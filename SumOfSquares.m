//
//  SumOfSquares.m
//  MyNonFunctionalCode
//
//  Created by Harish Yarlagadda on 8/15/15.
//  Copyright © 2015 Harish Yarlagadda. All rights reserved.
//

#import "SumOfSquares.h"

@implementation SumOfSquares

-(double) sumOfSquares:(NSArray *) nums {

    int  i = 0, sum = 0;
    NSMutableArray *squares = [NSMutableArray new];
    
    int square = 0;
    
    //Loop thru and store squares in a array
    for (i = 0; i < nums.count; i++) {
        
        square = ((int)nums[i]) * ((int)nums[i]);
        [squares setObject:@(square) atIndexedSubscript:i];
    }
    
    //Add the sum of squares
    for (int k = 0; k < squares.count; k++) {
        
        sum = sum + (int)squares[i];
    }
    
    return sum;
}

@end
