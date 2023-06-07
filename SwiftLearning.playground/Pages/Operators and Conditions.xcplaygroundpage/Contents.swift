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


// Chaining Conditions

// We can combine conditions in swift with special operators:
// && (meaning 'and') and || (meaning 'or'). Using this we can check
// if 2 values both match our conditions:
let score1 = 100
let score2 = 50
if score1 >= 100 && score2 >= 100 {
    print("Both scores 100 or higher!")
} else {
    print("Both scores not 100 or higher!")
}


// or we can check if at least one of our values matches our conditions:
if score1 >= 100 || score2 >= 100 {
    print("At least one score is 100 or higher!")
} else {
    print("No scores are 100 or higher!")
}


// Ternary Operator

// Ternary operator is a rarely used operator. Works with 3 values at once
// hence ternary, it checks a condition specified in the first value, and if it's
// true returns the second, but if false returns the third value. Ternary is a condition
// plus true or false blocks all in one, split by a '?' and a ':'. This is hard to read.
// Example:
let card1 = 11
let card2 = 10
print(firstCard == secondCard ? "Cards match" : "Cards do not match")

// The above is the equivalent of writing:
if firstCard == secondCard {
    print("Cards match")
} else {
    print("Cards do not match")
}
