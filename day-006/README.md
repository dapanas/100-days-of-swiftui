#  Closures, part one

> You can't expect to hit the jackpot if you don't put a few nickels in the machine. -- Flip Wilson

## Creating basic closures
- Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.
- One of the most common reasons for closures in Swift is to store functionality – to be able to say “here’s some work I want you to do at some point, but not necessarily now.”
- Closures let us wrap up some functionality in a single variable, then store that somewhere. We can also return it from a function, and store the closure somewhere else.

## Accepting parameters in a closure
- To make a closure accept parameters, list them inside parentheses just after the opening brace, then write `in` so that Swift knows the main body of the closure is starting.
- One of the differences between functions and closures is that you don’t use parameter labels when running closures.

## Returning values from a closure
- Closures can also return values, and they are written similarly to parameters: you write them inside your closure, directly before the `in` keyword.

## Closures as parameters
- If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as `() -> Void`. That means “accepts no parameters, and returns `Void`” – Swift’s way of saying “nothing”.

## TrailingClosureSyntax
- If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.
