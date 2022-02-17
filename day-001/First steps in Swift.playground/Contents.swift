import Cocoa

// The secret to getting ahead is getting started. -- Mark Twain

// How to create variables and constants
var greeting = "Hello, playground"

// Variable - Can change its value
var name = "Ted"
name = "Rebecca"
name = "Keeley"

// Constante - Can not change its value
let character = "Dapnhe"
// character = "Eloise" // Error. It's a constant.
// character = "Francesca" // Error. It's a constant.

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// Camel-case naming convention
let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

// Tip: If you can, prefer to use constants rather than variables

// How to create strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// Escape backslashes
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// To handle multiline (with line breaks)
let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)
let nameLength = actor.count
print(nameLength)

print(result.uppercased())

print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))

// How to store whole numbers
let score = 10
let reallyBig = 100_000_000  // Swift ignores the _. It's there for readability

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

// Compound assignment operators
var counter = 10
counter += 5 // counter = counter + 5
print(counter)

counter *= 2
print(score)
counter -= 10
print(score)
counter /= 2
print(score)

let number = 120
print(number.isMultiple(of: 3))
// You can use the number directly
print(120.isMultiple(of: 3))

// How to store decimal numbers
let decimalNumber = 0.1 + 0.2
print(decimalNumber)

let a = 1
let b = 2.0
// let c = a + b  // Error. You can not mix different types of data
let c1 = a + Int(b)
let c2 = Double(a) + b

// Type inference
let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

// Float/Doubles have compound operators too
var rating = 5.0
rating *= 2

// Many older APIs use a slightly different way of storing decimal numbers, called CGFloat.
// Fortunately, Swift lets us use regular Double numbers everywhere a CGFloat is expected, so although you will see CGFloat appear from time to time you can just ignore it.
