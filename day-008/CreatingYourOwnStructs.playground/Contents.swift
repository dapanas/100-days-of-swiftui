import UIKit


struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

struct User {
    var name: String
    var age: Int
    var city: String
}
