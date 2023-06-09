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
