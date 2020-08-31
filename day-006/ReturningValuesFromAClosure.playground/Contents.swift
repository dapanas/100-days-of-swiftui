import UIKit

let driving = { (place: String) in
    print("I'm going to \(place) in my car.")
}

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car."
}

let message = drivingWithReturn("London")
print(message)


let payment = { (user: String) in
    print("Paying \(user)...")
}

let payment2 = { (user: String) -> Bool in
    print("Paying \(user)...")
    return true
}

let payment3 = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}
