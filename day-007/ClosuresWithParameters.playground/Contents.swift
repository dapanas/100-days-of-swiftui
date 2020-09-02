import UIKit

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel(action: {(place: String) in
    print("I'm going to \(place) in my car")
})

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
    engine(5)
}

//

func login(then action: (String) -> Void) {
    print("Authenticating...")
    let username = "twostraws"
    action(username)
}

login { (username: String) in
    print("Welcome, \(username)!")
}
