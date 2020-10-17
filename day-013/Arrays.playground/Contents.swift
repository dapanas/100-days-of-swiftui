import UIKit

var evenNumbers = [2, 4, 6, 8]
var songs: [String] = ["Shake it Off", "You Belong to Me", "Back to December"]

songs[0]
songs[1]
songs[2]

type(of: songs)

//

var songs2: [String] = []
var songs3 = [String]()


var songs4 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs5 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]

var both = songs4 + songs5
both += ["Everything has Changed"]

print(both)
