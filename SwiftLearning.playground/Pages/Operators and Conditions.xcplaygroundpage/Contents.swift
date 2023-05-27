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
