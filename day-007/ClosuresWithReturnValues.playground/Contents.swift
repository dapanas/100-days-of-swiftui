import UIKit

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]
    
    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }
    
    // send back the final current value
    return current
}

let numbers = [10, 20, 30]
let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}
print(sum)
let sum2 = reduce(numbers, using: +)
print(sum2)

let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal * next
}
print(multiplied)
let multiplied2 = reduce(numbers, using: *)
print(multiplied2)

//

func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}

manipulate(numbers: [1, 2, 3]) { number in
    return number * number
}

//

func encrypt(password: String, using algorithm: (String) -> String) {
    print("Encrypting password...")
    let result = algorithm(password)
    print("The result is \(result)")
}

encrypt(password: "t4ylor") { (password: String) in
    print("Using top secret encryption!")
    return "SECRET" + password + "SECRET"
}
