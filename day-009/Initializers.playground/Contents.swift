import UIKit

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

struct Employee {
    var name: String
    var yearsActive = 0
}

let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)

struct EmployeeWitInit {
    var name: String
    var yearsActive = 0
}

extension EmployeeWitInit {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymoues employee...")
    }
}

let laura = EmployeeWitInit(name: "Laura Rosling")
let anon = EmployeeWitInit()
