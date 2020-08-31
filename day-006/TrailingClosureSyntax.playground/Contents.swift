import UIKit

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel() {
    print("I'm driving in my car")
}

travel {
    print("I'm driving in my car")
}

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation...")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}
