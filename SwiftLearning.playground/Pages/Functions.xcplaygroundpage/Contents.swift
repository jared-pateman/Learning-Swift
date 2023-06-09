// Functions
import UIKit


// Writing Functions

// Functions allow code to be re-used. Meaning that a function can be written
// to do something interesting or that we may want to do multiple times.
// Swift functions start with the 'func' keyword, followed by the function name,
// then open and close brackets '()'. Then all the function code is inside curly
// braces '{}'.

// Example of a function:
func printWelcomeMessage() {
    let welcomeMessage = """
Welcome to my Swift learning playground.
This is where I am learning about different
topics within the Swift language
"""
    print(welcomeMessage)
}

// Now we have written our function we can call it:
printWelcomeMessage()


// Accepting Parameters

// Functions are a lot more useful when they can be changed
// each time we want to run the,. We can do this by passing a
// parameter.

// To do this we must specify the name of the parameter followed
// by ':' and then the type of the parameter. All of this goes inside
// the brackets '()'

// Example:
func multiplyNumbers(number1: Int, number2: Int) {
    print(number1 * number2)
}

// We can now call this function like so:
multiplyNumbers(number1: 5, number2: 3)


// Returning Values

// As well as passing values into a function, they can also be sent back.
// To do this you write "->" followed by the type of the value that is being returned.
// Then inside the function use "return" to send the value back if there is one, at this
// point the function exits and sends back the value, no more of the function code will run.
// If multiple values are wanted to be returned a tuple would be the perfect option.

// Example:
func squareNumber(number: Int) -> Int {
    return number * number
}

// Using this function we can assign the returned value to a variable/constant:
let result = squareNumber(number: 5)
print(result)

