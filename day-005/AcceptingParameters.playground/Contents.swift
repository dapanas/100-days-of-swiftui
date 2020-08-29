import UIKit

print("Hello, world!")

func square(number: Int) {
    print(number * number)
}

square(number: 8)

func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}

count(to: 10)
