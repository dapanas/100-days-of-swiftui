# Classes and inheritance

> Any fool can write code that a computer can understand, but good programmers write code that humans can understand. -- Martin Fowler

## Creating your own classes
- Classes never come with a memberwise initializer. This means if you have properties in your class, you must always create your own initializer.
- Classes and structs give Swift developers the ability to create custom, complex types with properties and methods, but they have five important differences:
  - Classes do not come with synthesized memberwise initializers.
  - One class can be built upon (“inherit from”) another class, gaining its properties and methods.
  - Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
  - Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
  - Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.

## Class inheritance
- You can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top. This is called class inheritance or subclassing, the class you inherit from is called the “parent” or “super” class, and the new class is called the “child” class.
- For safety reasons, Swift always makes you call `super.init()` from child classes – just in case the parent class does some important work when it’s created.

## Overriding methods
- Child classes can replace parent methods with their own implementations – a process known as _overriding_.
- Swift requires us to use `override func` rather than just `func` when overriding a method – it stops you from overriding a method by accident, and you’ll get an error if you try to override something that doesn’t exist on the parent class.
  - If you use it when it isn’t needed (because the parent class doesn’t declare the same method) then you’ll get an error. This stops you from mistyping things, such as parameter names or types, and also stops your override from failing if the parent class changes its method and you don’t follow suit.
  - If you don’t use it when it is needed, then you’ll also get an error. This stops you from accidentally changing behavior from the parent class.

## Final classes
- Swift gives us a `final` keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

## Copying objects
- When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a _class_, both the original and the copy point to the _same_ thing, so changing one _does_ change the other.
- Recommended read: https://chris.eidhof.nl/post/structs-and-mutation-in-swift/

## Deinitializers
- Classes can have _deinitializers_ – code that gets run when an instance of a class is destroyed.
- The job of deinitializers is to tell us when a class instance was destroyed.
> Code should read like sentences, which makes me think my classes should read like chapters. So the deinitializer goes at the end, it's the ~fin~ of the class! -- Anne Cahalan.

## Mutability
- If you have a constant _class_ with a variable property, that property _can_ be changed. Because of this, classes don’t need the `mutating` keyword with methods that change properties; that’s only needed with structs.
