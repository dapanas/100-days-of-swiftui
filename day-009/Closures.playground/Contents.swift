import Cocoa

// You can't expect to hit the jackpot if you don't put a few nickels in the machine. -- Flip Wilson's law

// How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

// Skip creating a separate function and just assign the funcionality directly to a constant or variable
let sayHello = {
    print("Hi there!")
}

sayHello()

// accepting parameters
let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello2("Taylor") // We will see later why the parameter name is not present

// function types
var greetCopy2: () -> Void = greetUser

// Every function’s type depends on the data it receives and sends back. That might sound simple, but it hides an important catch: the names of the data it receives are not part of the function’s type.
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// Now using closures
let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam2)

// How to use trailing closures and shorthand syntax
// We don’t need to specify the types of our two parameters because they must be strings, and we don’t need to specify a return type because it must be a Boolean. So, we can rewrite the code to this:
let captainFirstTeam3 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// Swift can automatically provide parameter names for us, using shorthand syntax.
let captainFirstTeam4 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

// reverse sort
let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

// more examples
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// How to accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

// with closure
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}
print(rolls)

// with regular function
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// accepting multiple function parameters
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
