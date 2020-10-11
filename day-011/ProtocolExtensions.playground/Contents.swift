import UIKit

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

//

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy{ $0.isMultiple(of: 2) }

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy{ $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy{ $0.value.isMultiple(of: 2) }

//

protocol Hamster {
    var name: String { get set }
    func runInWheel(minutes: Int)
}

extension Hamster {
    func runInWheel(minutes: Int) {
        print("\(name) is going for a run.")
        for _ in 0..<minutes {
            print("Whirr whirr whirr")
        }
    }
}

struct MyStruct: Hamster {
    var name: String
}

let thing = MyStruct(name: "Lorem")
thing.runInWheel(minutes: 2)
