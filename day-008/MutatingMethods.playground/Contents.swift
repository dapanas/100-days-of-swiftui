import UIKit

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person1 = Person(name: "Ed")
person1.makeAnonymous()

let person2 = Person(name:"Paul")
// person2.makeAnonymous() // Error: Mutating an immutable value
