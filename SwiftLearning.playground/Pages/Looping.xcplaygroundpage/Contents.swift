// Operators and Conditions
import UIKit

// There are multiple ways to write loops, underlying mechanism
// is the same: run code repeatedly until a condition evaluates as false.


// For Loops

// For loops are the most common type, can loop over arrays and ranges.
// Each time the loop goes round it will pull out one item and assign to a constant.

// For loop example:
let count = 1...10

// Can use a for loop to count to ten:
for number in count {
    print("I am counting, and my current number is \(number)")
}

// Can also iterate through arrays:
let englishCities = ["London", "Birmingham", "Manchester"]
for city in englishCities {
    print("I want to visit \(city)")
}

// If we don't want to use the constant that you declare in the for loop,
// we should use an underscore instead, that way Swift doesn't create needless values:
for _ in 1...5 {
    print("Hello, World!")
}


// While Loops

// While loops will go around and around until a condition fails.
// Example is to simulate a child counting to 20, then after 20 printing
// Finished counting to 20:
var currentNumber = 1
while currentNumber <= 20 {
    print(currentNumber)
    currentNumber += 1
}
print("Finished counting to 20!")
