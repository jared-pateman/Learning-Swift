// Complex Types
import UIKit

// Arrays

// Collection of values stored as a single value.

// Example is a group of names. Separately they are names.
let name1 = "John Doe"
let name2 = "Jane Doe"
let name3 = "Fred Bloggs"
let name4 = "Foo Bar"

// In an array they can become a single value called band.
let band = [name1, name2, name3, name4]

// To access an element in an array use [x], where x is the index.
// Arrays start from 0. Swift crashes if you try an element that doesn't exist.
// e.g. band[6]
band[0]


// Sets

// Collection of values like arrays, with 2 key differences.
// 1. Items aren't stored in any order, effectively a random order.
// 2. No item can appear twice in a set.

// Because of 1 we cannot access sets by numerical position

// Creating a set from an array
let days = Set(["Monday","Tuesday","Wednesday"])

// Trying to insert duplicate values results in duplicates being ignored.
let days2 = Set(["Thursday","Friday","Friday","Saturday","Sunday"])


// Tuples

// Collection of values like arrays. But different in these ways:
// 1. Can't add or remove items; they are a fixed size
// 2. Can't change the types of items in a tuple
// 3. Can access items in a tuple using numerical positions or by names.
//    Swift won't let you read numbers/names that don't exist.

var name = (first: "Joe", last: "Blogs")

// Can now access the first name doing either of following:
name.0
name.first

// If tried to change name to (first: "Joe", age: 50) you would get an error.


// Arrays vs Sets vs Tuples

// These types seem similar but have distinct uses. Below are some rules.
// For a specific, fixed collection of related values, where each item has a precise position
// or name use a tuple:
let address = (house: 123, street: "Swift Lane", city: "London")

// For a collection of values that must be unique, or need to be able to check whether a
// specific value or item is in there very quickly use a set:
let set = Set(["Apple","Orange","Pear"])

// For a collection of values that can have duplicates, or the order matters.
// use an array:
let people = ["Michael","Jim","Pam","Dwight","Creed","Creed"]

// Arrays are most common of 3 types.


// Dictionaries

// Collection of values like arrays, but instead of numerical position, items can be
// accessed using anything you want. Most common way of storing is using strings:
let ages = [
    "Michael": 50,
    "Jim": 30,
    "Dwight": 40
]

// Can then access a dictionary using the keys:
ages["Michael"]
ages["Jim"]

// Dictionary with type annotation
let heights: [String: Double] = [
    "Michael": 1.50,
    "Jim": 1.68,
    "Dwight": 1.44
]

// Default values in dictionaries
let favouritePizzaPlace = [
    "Jim": "Pizza By Alfredo's",
    "Michael": "Alfredo's Pizza"
]

// To get Jim's favourite pizza place, which returns a value:
favouritePizzaPlace["Jim"]

// If we try to get Dwight's favourite pizza place we get nil:
favouritePizzaPlace["Dwight"]

// Try again but set a default value to get that value:
favouritePizzaPlace["Dwight", default: "Unknown"]


// Creating empty collections

// Empty Dictionary with Strings as keys and values
var dunderMifflinManagers = [String: String]()

// Adding entries
dunderMifflinManagers["Scrancton"] = "Michael"

// Empty Array
var results = [Int]()

// Adding entries
results.append(1)

// Empty Set - Slightly different
var words = Set<String>()
var numbers = Set<Int>()

// Adding entries
words.insert("Hello")
words.insert("World")
// This will get ignored
words.insert("World")
numbers.insert(1)
numbers.insert(2)

// Can create empty dictionaries and arrays as below:
var scores = Dictionary<String, Int>()
var numberList = Array<Int>()
