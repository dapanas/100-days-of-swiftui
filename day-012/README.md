# Optionals, unwrapping, and typecasting

> I call it my billion-dollar mistake. -- Tony Hoare about null references

##  Handling missing data
- To make a type optional, add a question mark after it.
- You can make optionals out of any type.
- Optional's core job is simple: allow us to represent the absence of some data.
- Recommended video: https://www.youtube.com/watch?v=7a7As0uNWOQ

## Unwrapping optionals
- A common way of unwrapping optionals is with `if let` syntax, which unwraps with a condition. If there was a value inside the optional then you can use it, but if there wasn’t the condition fails.
- You can't unwrap non-optionals.

## Unwrapping with guard
- `guard let` will unwrap an optional for you, but if it finds `nil` inside it expects you to exit the function, loop, or condition you used it in.
- The major difference between `if let` and `guard let` is that your unwrapped optional remains usable after the guard code.
- Using `guard let` lets you deal with problems at the start of your functions, then exit immediately. This means the rest of your function is the happy path – the path your code takes if everything is correct.
- Note: use `if let` if you just want to unwrap some optionals, but prefer `guard let` if you’re specifically checking that conditions are correct before continuing.

## Force unwrapping
- You should never force unwrap something that won’t succeed 100% of the time. That’s it – that’s the entire rule.
- Recommended read: https://blog.timac.org/2017/0628-swift-banning-force-unwrapping-optionals/

## Implicitly unwrapped optionals
- Like regular optionals, implicitly unwrapped optionals might contain a value or they might be `nil`. However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.
- Because they behave as if they were already unwrapped, you don’t need `if let` or `guard let` to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are `nil` – your code crashes.

## Nil coalescing
- The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a value – if the optional was `nil` – then a default value is used instead.

## Optional chaining 
- Swift provides us with a shortcut when using optionals: if you want to access something like `a.b.c` and `b` is optional, you can write a question mark after it to enable _optional_ chaining: `a.b?.c`.
- Recommended read: https://andybargh.com/optional-chaining/

## Optional try
- There are two alternatives to `try`:
        -  The first is `try?`, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent `nil` as the result, otherwise you’ll get the return value wrapped as an optional.
        - The other alternative is `try!`, which you can use when you know for sure that the function will not fail. If the function _does_ throw an error, your code will crash.

## Failable initializers
- A _failable initializer_ is an initializer that might work or might not. You can write these in your own _structs_ and _classes_ by using `init?()` rather than `init()`, and return `nil` if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.
- Making a failable initializer takes two steps:
        1. Write your initializer as `init?()` rather than `init()`
        2. Return `nil` for any paths that should fail 

## Typecasting
- This uses a new keyword called `as?`, which returns an optional: it will be `nil` if the typecast failed, or a converted type otherwise.
- Type casting lets us tell Swift that an object it thinks is type A is actually type B, which is helpful when working with protocols and class inheritance.
