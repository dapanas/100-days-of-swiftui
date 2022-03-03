import Cocoa

// Your goal is to loop from 1 through 100, and for each number:
// If it’s a multiple of 3, print “Fizz”
// If it’s a multiple of 5, print “Buzz”
// If it’s a multiple of 3 and 5, print “FizzBuzz”
// Otherwise, just print the number.

// With if, else if, else
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}

// With if and string concatenation
for i in 1...100 {
    var output = ""
    if i.isMultiple(of: 3) {
        output += "Fizz"
    }
    
    if i.isMultiple(of: 5) {
        output += "Buzz"
    }
    
    print(output.isEmpty ? i : output)
}
