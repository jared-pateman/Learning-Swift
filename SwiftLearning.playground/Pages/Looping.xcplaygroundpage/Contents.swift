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


// Repeat Loops

// Repeat loops not commonly used, but is simple to learn.
// Identical to a while loop but condition check is at the end.
// Could rewrite counting to be this:
var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20
print("Finished counting to 20!")

// Because the condition comes at the end of the repeat loop, the code will be
// executed at least once, whereas while loops check conditon before first run.
// for example this print will never run because false is always false. We even
// get a warning in Xcode to say the print will never be executed.
while false {
    print("This is false.")
}

// However with repeat the print will run once then we exit the loop after one run:
repeat {
    print("This is false.")
} while false


// Exiting Loops

// Can exit a loop at any time using 'break'. Example:
// Here we will finish the loop.
var countDown = 10
while countDown >= 0 {
    print(countDown)
    countDown -= 1
}
print("Finished counting down!")

// Here we exit when we're at 5 and we don't finish counting down:
countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 5 {
        print("Yawn, counting down is boring")
        break
    }
    countDown -= 1
}


// Exiting Multiple Loops

// If you nest loops, you might want to break out of both loops at the same time.
// An exmaple is writing some code to print the times tables from 1 to 5:
// A full loop would be:
for i in 1...5 {
    for j in 1...10 {
        var result = i * j
        print("\(i) * \(j) = \(result)")
    }
}

// If we wanted to exit part way through this loop we need to do 2 things:
// give the outer loop a label
// use break with the outer loop's label.
// With a regular break we would exit only the inner loop.
// Below will break out of both loops at the same time:
countToFive: for i in 1...5 {
    for j in 1...10 {
        var product = i * j
        print("\(i) * \(j) = \(product)")
        if product == 25 {
            print("Hurray 5 squared = \(product)")
            break countToFive
        }
    }
}
