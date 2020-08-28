import UIKit

let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is in Apple Music")
}

print("Players gonna ")
for _ in 1...5 {
    print("play")
}

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
for name in names {
    print("\(name) is a secret agent")
}

let names2 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
for _ in names2 {
    print("[CENSORED] is a secret agent!")
}
