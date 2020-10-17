import UIKit

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = c + d

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

// Modulus
9 % 3 // 0
10 % 3 // 1
23 % 5 // 3

// Comparison operators

var f = 1.1
var g = 2.2
var h = f + g

h > 3   // true
h >= 3  // true
h > 4   // false
h < 4   // true

var anotherName = "Tim McGraw"
anotherName == "Tim McGraw" // true
anotherName == "TIM McGraw" // false

var stayOutTooLate = true
stayOutTooLate              // true
!stayOutTooLate             // false
anotherName != "TIM McGraw" // true
