# Access control, static properties, and laziness

> I choose a lazy person to do a hard job, Because a lazy person will find an easy way to do it. -- Bill Gates

## Initializers
- Initializers are special methods that provide different ways to create your struct. All structs come with one by default, called their _memberwise initializer_ – this asks you to provide a value for each property when you create the struct.
- You don’t write `func` before initializers, but you _do_ need to make sure all properties have a value before the initializer ends.
- If any of your properties have default values, then they’ll be incorporated into the initializer as default parameter values.
- If you create an initializer of your own, Swift removes the memberwise initializer.

## Referring to the current instance
- Inside methods you get a special constant called `self`, which points to whatever instance of the struct is currently being used.
- By far the most common reason for using `self` is inside an initializer, where your likely to want parameter names that match the property names of your type.
- Outside of initializers, the main reason for using `self` is because we’re in a closure and Swift requires us to so we’re making it clear we understand what’s happening.
- Recommended read: https://github.com/apple/swift-evolution/blob/master/proposals/0269-implicit-self-explicit-capture.md (From Swift 5.3 or later)

## Lazy properties
- As a performance optimization, Swift lets you create some properties only when they are needed. If we add the `lazy` keyword to a property, then Swift will only create the property when it’s first accessed.
- There are a few reasons why you would prefer stored or computed properties over a lazy property, such as:
  - Using lazy properties can accidentally produce work where you don’t expect it. For example, if you’re building a game and access a complex lazy property for the first time it might cause your game to slow down, so it’s much better to do slow work up front and get it out of the way.
  - Lazy properties always store their result, which might either be unnecessary (because you aren’t use it again) or be pointless (because it needs to be recalculated frequently).
  - Because lazy properties change the underlying object they are attached to, you can’t use them on constant structs.
- Recommended read: https://useyourloaf.com/blog/swift-lazy-property-initialization/

## Static properties and methods
- You can also ask Swift to share specific properties and methods across all instances of the struct by declaring them as _static_.

## Access control
- Access control lets you restrict which code can use properties and methods. This is important because you might want to stop people reading a property directly.
- Recommended read: https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html
