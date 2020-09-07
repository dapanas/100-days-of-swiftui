import UIKit

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

struct Desk {
    var isAdjustable: Bool
    func adjust(to newHeight: Int) {
        if isAdjustable {
            print("Adjusting now...")
        } else {
            print("That isn't possible.")
        }
    }
}

var desk = Desk(isAdjustable: true)
desk.adjust(to: 5)
