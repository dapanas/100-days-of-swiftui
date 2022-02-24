import Cocoa

// Computers are like Old Testament gods: lots of rules and no mercy. -- Joseph Campbell

// How to store ordered data in arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// We read values out from an array by the position they appear in the array. That position is called index
print(beatles[0])
print(numbers[1])
print(temperatures[2])

// Tip: Make sure an item exists at the index you’re asking for, otherwise your code will crash – your app will just stop working.

// The array can be modified after creation.
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// You can only add data of the same data type used initially
// temperatures.append("Chris") // Error: No exact matches in call to instance method 'append'

// Swift won’t let you mix two different types together, so this kind of code isn’t allowed:
let firstBeatle = beatles[0]
let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber // Error: Binary operator '+' cannot be applied to operands of type 'String' and 'Int'

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

// A special way to declare an array
var otherAlbums = [String]()
otherAlbums.append("Folklore")
otherAlbums.append("Fearless")
otherAlbums.append("Red")

// Useful funcionality
print(albums.count)

// remove and removeAll
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

// contains
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

// sorted
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

// reverse
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// Tip: When you reverse an array, Swift is very clever – it doesn’t actually do the work of rearranging all the items, but instead just remembers to itself that you want the items to be reversed. So, when you print out reversedPresidents, don’t be surprised to see it’s not just a simple array any more!


// How to store and find data in dictionaries
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

print("Name: \(employee[0])")
employee.remove(at: 1) // This will move Nashville to be at [1] and nothing at [2] which will cause the following code to crash
print("Job title: \(employee[1])")
// print("Location: \(employee[2])") // Error

// Instead let's use Dictionaries
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
// reading values out
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// Dictionaries don't allow duplicate keys
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
// instead it overwrites
archEnemies["Batman"] = "Penguin"
print(archEnemies)

// How to use sets for fast data lookup
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")
print(actors)

// Tip: Alongside contains(), you’ll also find count to read the number of items in a set, and sorted() to return a sorted array containing the the set’s items.

// How to create and use enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// Swift does two things that make enums a little easier to use. First, when you have many cases in an enum you can just write case once, then separate each case with a comma:
enum WeekdayWithComma {
    case monday, tuesday, wednesday, thursday, friday
}
// Second, remember that once you assign a value to a variable or constant, its data type becomes fixed – you can’t set a variable to a string at first, then an integer later on. Well, for enums this means you can skip the enum name after the first assignment, like this:
var anotherDay = WeekdayWithComma.monday
anotherDay = .tuesday
anotherDay = .friday
