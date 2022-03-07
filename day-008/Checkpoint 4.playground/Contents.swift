import Cocoa

// Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//
// 1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
// 2. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
// 3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
// 4. If you can’t find the square root, throw a “no root” error.

enum SquareRootError : Error {
    case outOfBounds, noRoot
}

func intSquare(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareRootError.outOfBounds
    }
    
    for i in 1...100 {
        if i*i == number {
            return i
        }
    }
    
    throw SquareRootError.noRoot
}

let numbers = [0, 1, 9, 11, 50, 100, 6300, 6400, 9801, 10_000, 10_001]

for number in numbers {
    do {
        let res = try intSquare(number)
        print("The int root square of \(number) is \(res)")
    } catch SquareRootError.outOfBounds {
        print("\(number) is out of bounds")
    } catch SquareRootError.noRoot {
        print("Cannot find the int square root of \(number)")
    }

}
