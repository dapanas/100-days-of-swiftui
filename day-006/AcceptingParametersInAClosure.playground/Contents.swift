import UIKit

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving("London")

// Function vs closure
func pay(user: String, amount: Int) {
    // code
}

let payment = { (user: String, amount: Int) in
    // code
}
