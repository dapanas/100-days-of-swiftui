import UIKit


var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

let numbers = [1, 2, 3, 4, 5]
let random = numbers.shuffled()

// With while
let numbers2 = [1, 2, 3, 4, 5]
var random2 = numbers.shuffled()

while random2 == numbers2 {
    random2 = numbers2.shuffled()
}

// With repeat
let numbers3 = [1, 2, 3, 4, 5]
var random3: [Int]

repeat {
    random3 = numbers3.shuffled()
} while random3 == numbers3
