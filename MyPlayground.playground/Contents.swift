//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*:

## Swift vs Objective-C

1. First off, I can do in Playground and see the results
2. I don't need semicolons
3. Functional programming - Don't tell the computer what to do as such but rather you tell it what stuff is (What a square is).

*/

/*:

### FP features used
* Closures
* Combinators
* Immutable
* Higher order functions
*/

//Function types 
func squareOfNumber(x: Int) -> Int {
    
    return x * x
}

func cubeOfNumber(x: Int) -> Int {
    
    return x * x * x
}

let square: (Int) -> Int = squareOfNumber
let cube: (Int) -> Int = cubeOfNumber

func sumOfNumbers(nums: [Int], myOperation: (Int) -> Int) -> Int {
    
    return nums.map(myOperation).reduce(0, combine: {$0 + $1})
    //return nums.map({$0 * $0}).reduce(0, combine: {$0 + $1})
}

/*:

### Higher Order functions

We pass a function as a parameter to a function

*/
sumOfNumbers(Array(1...3), myOperation: cube)
sumOfNumbers(Array(1...3), myOperation: square)
