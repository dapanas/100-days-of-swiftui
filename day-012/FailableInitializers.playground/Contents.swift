import UIKit

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//

struct Employee {
    var username: String
    var password: String
    
    init?(username: String, password: String) {
        guard password.count >= 8 else {return nil}
        guard password.lowercased() != "password" else {return nil}
        
        self.username = username
        self.password = password
    }
}

let tim = Employee(username: "TimC", password: "apple")
let craig = Employee(username: "CraigF", password:"ha1rf0rce0ne")
