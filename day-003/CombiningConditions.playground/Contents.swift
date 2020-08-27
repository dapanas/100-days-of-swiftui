import UIKit

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

let isOwner = false
let isAdmin = true
let isEditingEnabled = false

if isOwner == true || isAdmin == true {
    print("You can delete this post")
}

if isOwner == true && isEditingEnabled || isAdmin == true {
    print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}

if isOwner == true && (isEditingEnabled || isAdmin == true) {
    print("You can delete this post")
}
