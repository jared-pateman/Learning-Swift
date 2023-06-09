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
// each time we want to run them. We can do this by passing a
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


// Parameter Labels

// In swift 2 names can be provided for a parameter to a function. One is used externally
// to the function (when the function is called) and one is used internally (inside the function)
// It is as simple as writing 2 names when specifying a parameter and having them separated by a space.

// Example:
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "John")


// Omitting Parameter Labels

// If you don't want to specify the parameter name when calling a function
// you can stop Swift from looking for it by using an underscore "_", as the external
// parameter name, then you can call the function without specifying that parameter.
// This makes code more naturally readable but it's generally better practice to give
// parameters external names to avoid confusion.

// Example:
func printHelloTo(_ receipient: String) {
    print("Hello \(receipient)!")
}

// Now we can call printHelloTo like this:
printHelloTo("Jane")


// Default Parameters

// You can give parameters to functions a default value by writing "=" after its type
// followed by the default value you want to give the parameter. That way you can call a function
// in 2 ways.

// Example:
func multiplyValues(_ value1: Int, value2: Int = 10) {
    print(value1 * value2)
}

// In the above example we can call the function in 2 ways:
// This will multiply 5 by 10.
multiplyValues(5)
// This will multiply 5 by 5.
multiplyValues(5, value2: 5)


// Variadic Functions

// Variadic functions is a fancy way of saying functions that accept any number of
// parameters of the same type. "print()" is variadic, if lots of parameters are passed
// they are all printed on one line with spaces between them:
print("This","is","fun")

// To create a variadic parameter write "..." after the paramter type.
// Then inside the function Swift will convert the values passed into the function
// into an array, that way it can be looped over if needed.

// Example:
func greet(names: String...) {
    for name in names {
        print("Greetings, \(name)")
    }
}

// Now we can call greet with lots of names:
greet(names: "Pam", "Jim", "Dwight", "Michael")


// Writing & Running Throwing Functions

// Sometimes a function may fail because of bad input or bad internal code.
// Swift lets us throw errors from functions by marking them as "throws" before
// their return type, then using "throw" when something goes wrong.


// To demonstrate we can define an enum that describes the types of errors we can throw.
// These must always be based on Swift's existing Error type. The below example is a function
// that checks whether someones porridge is too hot, too cold or just right, so that we throw an
// error if the porridge isn't just right.

enum WrongPorridge: Error {
    case tooHot
    case tooCold
}

func checkPorridge(temperature: Int) throws -> String {
    if temperature >= 50 {
        throw WrongPorridge.tooHot
    } else if temperature <= 30 {
        throw WrongPorridge.tooCold
    }
    return("Ah... Just Right")
}


// To now run this function we have to use different keywords: "do"; which
// starts a section of code that may cause problems, "try"; is used before every function
// that might throw an error, and "catch" which lets you handle errors. If errors happen inside
// the do block, execution immediately jumps to the catch block. So to call checkPorridge with a
// parameter that throws one of the errors we would do:
do {
    let porridge = try checkPorridge(temperature: 100)
    print(porridge)
} catch {
    print("That porridge isn't right!")
}

// Then we can try again with a good value:
do {
    let porridge = try checkPorridge(temperature: 40)
    print(porridge)
} catch {
    print("That porridge isn't right!")
}


// Inout Parameters

// Parameters passed into Swift functions are constants, so they can't be changed.
// If you want, one or more parameter can be passed in as inout parameters, which means
// they can be changed inside the function, and those changes will impact the value outside
// the function. For example, if you want to double a number in place (Change the value, rather
// than return a new one) you can do:
func doubleNumberInPlace(number: inout Int) {
    number *= 2
}

// To now use this function we need an integer variable (can't use constants as they may get
// changed) and we need to pass this variable as a parameter with an "&" before the variable
// name, which tells Swift you're aware it is being used as an inout.

// Example:
var myNum = 5
doubleNumberInPlace(number: &myNum)
print(myNum)
