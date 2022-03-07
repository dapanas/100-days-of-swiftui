import Cocoa

// How to reuse code with functions
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// How to return values from functions
let root = sqrt(169)
print(root)

// If you want to return your own value from a function, you need to do two things:

// 1. Write an arrow then a data type before your function’s opening brace, which tells Swift what kind of data will get sent back.
// 2. Use the return keyword to send back your data.
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    
    return first == second
}

func areLettersIdentical2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

func areLettersIdentical3(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

// If your function doesn’t return a value, you can still use return by itself to force the function to exit early
func sayHello() {
    return
}

// How to return multiple values from functions
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//  If you’re returning a tuple from a function, Swift already knows the names you’re giving each item in the tuple, so you don’t need to repeat them when using return. So, this code does the same thing as our previous tuple:

func getUser2() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")

// Sometimes you’ll find you’re given tuples where the elements don’t have names. When this happens you can access the tuple’s elements using numerical indices starting from 0, like this:
func getUser3() -> (String, String) {
    ("Taylor", "Swift")
}

let user3 = getUser()
print("Name: \(user3.0) \(user3.1)")

// If a function returns a tuple you can actually pull the tuple apart into individual values if you want to.
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// If you don’t need all the values from the tuple you can go a step further by using _ to tell Swift to ignore that part of the tuple:
let (firstName2, _) = getUser()
print("Name: \(firstName2)")


// How to customize parameter labels
func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

// The parameters names are important to know which function to call
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

// You can remove the parameter name (for external use) naming it _ (underscore)
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string)

// or even change the external name. for is used externally and number is used internally:
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
