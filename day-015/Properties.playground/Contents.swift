import UIKit

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    
    var shoes: String
    
    var age: Int
    
    var ageInDogYears: Int {
        return age * 7
    }
    
//    A more descriptive way
//    var ageInDogYears: Int {
//        get {
//            return age * 7
//        }
//    }

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let paul = Person(clothes: "short skirts", shoes: "high heels", age: 7)
paul.describe()

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts", shoes: "sneakers", age: 32)
taylor.describe()
taylor.clothes = "short skirts"
taylor.ageInDogYears // 224
