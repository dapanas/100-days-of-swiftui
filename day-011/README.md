# Protocols, extensions, and protocol extensions

> Inside every large program, there is a small program trying to get out. -- Tony Hoare

## Protocols
- Protocols are a way of describing what properties and methods something must have.
- We can’t _create_ instances of a protocol - it’s a description of what we want, rather than something we can create and use directly.

## Protocol inheritance
- One protocol can inherit from another in a process known as _protocol inheritance_.
- Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.

## Extensions
- Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.
- Swift doesn’t let you add stored properties in extensions, so you must use computed properties instead.

## Protocol extensions
- Protocols let you describe what methods something should have, but don’t provide the code inside. Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time. Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like `Int` you extend a whole protocol so that all conforming types get your changes.
- Protocol extensions are used everywhere in Swift, which is why you’ll often see it described as a “protocol-oriented programming language.”

## Protocol-oriented programming
- Protocol extensions can provide default implementations for our own protocol methods. This makes it easy for types to conform to a protocol, and allows a technique called "protocol-oriented programming" – crafting your code around protocols and protocol extensions.
- Recommended video: https://developer.apple.com/videos/play/wwdc2015/408/
