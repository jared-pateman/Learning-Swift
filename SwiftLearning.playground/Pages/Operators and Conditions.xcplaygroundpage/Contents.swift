// Operators and Conditions
import UIKit

// Arithmetic Operators

// Operators are mathematical symbols like "+" & "-". Swift has a huge range of them.
// Performing operations on an int with a double = 2.5 * 2 produces a double.

// Constants to use for different operations.
let firstValue = 9
let secondValue = 10

// Addition & Subtraction
let total = firstValue + secondValue
let difference = secondValue - firstValue

// Multiplication and Division
let product = firstValue * secondValue
let dividedResult = secondValue / firstValue

// Modulus/Remainder
let thirdValue = 4
let remainder = secondValue % thirdValue


// Operator Overloading

// This is a fancy way of saying that an operators functionality
// changes depending on the values used. And you cannot mix types
// as Swift is type-safe

// For sums
let twentyFive = 25
let fifty = 25 + 25

// For string concatination
let partialQuote = "Do or do not "
let fullQuote = partialQuote + "there is no try."


// For joining arrays
let array1 = ["Jim", "Dwight"]
let array2 = ["Michael", "Pam"]
let combinedArray = array1 + array2


// Compound Operators

// These are shorthand operators that combine an operator with assignment,
// changing a variable in place.

// For example you were 21 but you had a birthday, you could write:
var age = 21
age += 1

// For subtraction
age -= 1
// Multiplication
age *= 2
// Division
age /= 2

// This also works with strings
var iAmYour = "No, I am your "
iAmYour += "father"


// Comparison Operators

// Operators to check for equality - return Bools

// == Checking whether 2 values are the same
firstValue == secondValue

// != Checking whether 2 values are not the same
firstValue != secondValue


// There are four operators for comparing whether values are
// greater/less than or greater/less/equal to.
// Greater than
firstValue > secondValue
// Greater than or equal to
firstValue >= secondValue
// Less than
firstValue < secondValue
// Less than or equal to
firstValue <= secondValue

// These also work with strings, because strings
// have a natural alphabetical order.
// Note: When comparing booleans, can write if boolean to mean if boolean == true
"abc" <= "bcd"
"abc" >= "bcd"


// Conditions

// Now we have used operators we can write conditions using if statements.

// An example we can use is blackjack:
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
    print("Blackjack!")
}

// Code inside the { } will be printed if the condition is true.
// Can provide alternative code to run if condition is false with 'else'
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Not Blackjack!")
}


// Can also chain conditions together using 'else if'
if firstCard + secondCard == 2 {
    print("Wow 2 Aces!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Not Blackjack nor 2 Aces!")
}
