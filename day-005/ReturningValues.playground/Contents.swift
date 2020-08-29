import UIKit

func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)
print(result)

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

func greet2(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

// Returning multiple values
// with arrays
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])

// with dictionaries
func getUser2() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}

let user2 = getUser2()
print(user2["first"] ?? "")

// with tuples
func getUser3() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user3 = getUser3()
print(user3.first)
