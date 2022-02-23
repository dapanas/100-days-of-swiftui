import Cocoa

// When the going gets tough, everyone leaves. -- Lynch’s Law

// How to store truth with Booleans
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
let badCats = false

let isMultiple = 120.isMultiple(of: 3)

// Unlike the other types of data, Booleans don’t have arithmetic operators such as + and -

// ! operator flips boolean's value
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)

// How to join strings together
// Concatenation
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// This technique works great for small things, but you wouldn’t want to do it too much. You see, each time Swift sees two strings being joined together using + it has to make a new string out of them before continuing, and if you have lots of things being joined it’s quite wasteful.

// Think about this for example:
let luggageCode = "1" + "2" + "3" + "4" + "5"

// Swift can’t join all those strings in one go. Instead, it will join the first two to make “12”, then join “12” and “3” to make “123”, then join “123” and “4” to make “1234”, and finally join “1234” and “5” to make “12345” – it makes temporary strings to hold “12”, “123”, and “1234” even though they aren’t ultimately used when the code finishes.

// String interpolation
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)


let apolloNumber = 11
// Not allowed
//let missionMessage = "Apollo " + apolloNumber + " landed on the moon."

// The first works but it's harder to read than the second
//let missionMessage = "Apollo " + String(apolloNumber) + " landed on the moon."
let missionMessage = "Apollo \(apolloNumber) landed on the moon."

// You can put calculations inside string interpolation.
print("5 x 5 is \(5 * 5)")
