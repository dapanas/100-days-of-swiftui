#  Closures, part two

> Energy and persistence conquer all things. -- Benjamin Franklin

## Using closures as parameters when they accept parameters
- We’ve been using `() -> Void` to mean “accepts no parameters and returns nothing”, but you can go ahead and fill the `()` with the types of any parameters that your closure should accept.

## Using closures as parameters when they return values
- We’ve been using `() -> Void` to mean “accepts no parameters and returns nothing”, but you can replace that `Void` with any type of data to force the closure to return a value.

## Shorthand paramater names
- When working with closures, Swift gives us a special shorthand parameter syntax that makes it extremely consider to write closures. This syntax automatically numbers parameter names as `$0`, `$1`, `$2`, and so on – we can’t use names such as these in our own code, so when you see them it’s immediately clear these are shorthand syntax for closures.

## Returning closures from functions
- In the same way that you can pass a closure to a function, you can get closures returned _from_ a function too.
- The syntax for this is a bit confusing a first, because it uses `->` twice: once to specify your function’s return value, and a second time to specify your closure’s return value.
- Helpful site: http://goshdarnclosuresyntax.com

## Capturing values
- If you use any external values inside your closure, Swift _captures_ them – stores them alongside the closure, so they can be modified even if they don’t exist any more.
- Recommended read: https://alisoftware.github.io/swift/closures/2016/07/25/closure-capture-1/
