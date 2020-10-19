import UIKit

func favoriteAlbum() {
    print("My favorite is Fearless")
}

favoriteAlbum()

func favoriteAlbumWithName(name: String) {
    print("My favorite is \(name)")
}

favoriteAlbumWithName(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

//

func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("Hello")

func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLetters(in: "Hello")

//

func albumIsTaylor(name: String) -> Bool {
    switch name {
    case "Taylor Swift", "Fearless", "Speak Now", "Red", "1989":
        return true
    
    default:
        return false
    }
}

if albumIsTaylor(name: "Taylor Swift") {
    print("That's one of hers!")
} else {
    print("Who made that?")
}

if albumIsTaylor(name: "The White Album") {
    print("That's one of hers!")
} else {
    print("Who made that?")
}
