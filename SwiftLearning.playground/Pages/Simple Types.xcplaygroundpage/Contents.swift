// Simple Types
import UIKit

// Variables and Constants

// Use var <variable_name> to create a variable.
var variable = "< This is an example of creating a variable"

// Variables can be changed.
variable = "< This is an example of changing a variable"

// Constants cannot be changed.
let constant = "< This is an example of creating a constant"

// Strings

var name = "John Doe"

var career = "Software Engineer"

// String Interpolation

// This lets you put values from other variables or constants into a string.
let firstName = "John"

let surname = "Doe"

var fullName = "\(firstName) \(surname)"

let currentAge = 45

var nameAndAge = "Name: \(fullName) Age: \(currentAge)"

// Multi-line strings

var multiLineStr = """
This string
goes over
multiple lines
"""

// Adding "\" to the end of lines removes line breaks in formatting.
var cleanMultiLine = """
This string \
goes over \
multiple lines
"""

// Integers

var age = 45

// For large numbers use "_" as the thousands separators.
var million = 1_000_000

// Doubles

// Whenever creating a fractional number. Swift auto assigns the type "Double".
var pi = 3.141

// Booleans

// Like other languages, hold either true or false. Swift auto assigns boolean type
// to variable assigned true or false as it's value.
var trueBool = true
var falseBool = false


// Type Annotation

// To assign a type use ":". By assigning a type it cannot be changed later on by mistake.
let language: String = "Swift"
let year: Int = 2023
let length: Double = 1.59
let thisIsFun: Bool = true
