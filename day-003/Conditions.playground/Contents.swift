import UIKit

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - Lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


let score = 9001

if score > 9000 {
    print("It's over 9000!")
} else if score == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}
