import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poddle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
