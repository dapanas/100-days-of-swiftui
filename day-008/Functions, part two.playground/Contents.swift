import Cocoa
import Darwin

// Life is what happens when you’re busy making other plans. -- John Lennon

// How to provide default values for parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// How to handle errors in functions
// This takes three steps:
//
// 1. Telling Swift about the possible errors that can happen.
// 2. Writing a function that can flag up errors if they happen.
// 3. Calling that function, and handling any errors that might happen.

// 1
enum PasswordError: Error {
    case short, obvious
}

// 2
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// 3
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error")
}

// catch different errors separately
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
