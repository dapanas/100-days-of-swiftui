#  Structs, properties, and methods

> The programmer at wit’s end... can often do best by disentangling themself from their code, rearing back, and contemplating their data. Representation is the essence of programming. -- Fred Brooks

## Creating your own structs
- Swift lets you design your own types in two ways, of which the most common are called structures, or just structs. Structs can be given their own variables and constants, and their own functions, then created and used however you want.
- Properties can have default values just like regular variables, and you can usually rely on Swift’s type inference.
- Use tuples when you want to return two or more arbitrary pieces of values from a function, but prefer structs when you have some fixed data you want to send or receive multiple times.

## Computed properties
- These are called _stored_ properties, because Swift has a different kind of property called a _computed_ property – a property that runs code to figure out its value.
- Constants cannot be computed properties.

## Property observers
- Swift’s property observers let us attach functionality to be run before or after a property is changed, using `willSet` and `didSet` respectively.
- There is _one_ place where using a property observer is a bad idea, and that’s if you put slow work in there.
- You can't attach a property observer to a constant, because it will never change.

## Methods
- Structs can have functions inside them, and those functions can use the properties of the struct as they need to. Functions inside structs are called methods, but they still use the same `func` keyword.

## Mutating methods
- If a struct has a variable property but the instance of the struct was created as a constant, that property can’t be changed – the struct is constant, so all its properties are also constant regardless of how they were created.
- When you want to change a property inside a method, you need to mark it using the `mutating` keyword.
- Marking methods as `mutating` will stop the method from being called on constant structs, even if the method itself doesn’t actually change any properties. If you say it changes stuff, Swift believes you!
- A method that is not marked as mutating cannot call a mutating function – you must mark them both as 
