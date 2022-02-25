import Cocoa

// Good data structures and bad code works a lot better than the other way around. -- Eric Raymond

// How to use type annotations
// with type inference it will be like
// let surname = "Lasso"
// var score = 0

// with type annotations
let surname: String = "Lasso"
var score: Int = 0

//String holds text:
let playerName: String = "Roy"

//Int holds whole numbers:
var luckyNumber: Int = 13

//Double holds decimal numbers:
let pi: Double = 3.141

//Bool holds either true or false:
var isAuthenticated: Bool = true

//Array holds lots of different values, all in the order you add them. This must be specialized, such as [String]:
var albums: [String] = ["Red", "Fearless"]

//Dictionary holds lots of different values, where you get to decide how data should be accessed. This must be specialized, such as [String: Int]:
var user: [String: String] = ["id": "@twostraws"]

//Set holds lots of different values, but stores them in an order that’s optimized for checking what it contains. This must be specialized, such as Set<String>:
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// Creates an empty array of strings (multiple sintax)
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

// Values of an enum have the same type as the enum itself, so we could write something like this:
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

// Define a constant with type annotations without value
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
