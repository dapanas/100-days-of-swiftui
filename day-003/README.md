# Operators and conditions
> Computers are like Old Testament gods: lots of rules and no mercy. -- Joseph Campbell

## Arithmetic Operators
- Swift has a special operator for calculating remainders after division: `%`. It calculates how many times one number can fit inside another, then sends back the value that’s left over.
- Swift will refuse to automatically convert between its various numeric types – you can’t add an `Int` and a `Double`, you can’t multiply a `Float` and an `Int`, and so on.
- When faced with two integers, Swift will divide the two and round towards zero to make a whole number.

## Operator overloading
- Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with.
- Swift is a type-safe language, which means it won’t let you mix types.

## Compound assignment operators
- Swift has shorthand operators that combine one operator with an assignment, so you can change a variable in place.

## Comparison operators
- Swift has several operators that perform comparison, and these work more or less like you would expect in mathematics.
- There are two operators that check for equality: `==` checks two values are the same, and `!=` (pronounced “not equals”) checks two values are not the same.
- There are four operators for comparing whether one value is greater than, less than, or equal to another. These are just like in mathematics: `>`, `<`, `>=` and `<=`.
- Each of these also work with strings, because strings have a natural alphabetical order.

## Combining Conditions
- Swift has two special operators that let us combine conditions together: they are `&&` (pronounced “and”) and `||` (pronounced “or”).
- Any time you mix `&&` and `||` in a single condition you should almost certainly use parentheses to make the result clear.

## The ternary operator
- The ternary operator is a condition plus true or false blocks all in one, split up by a question mark and a colon.

## Switch statements
- Swift will only run the code inside each case. If you want execution to continue on to the next case, use the `fallthrough` keyword.
- There are three reasons why you might want to consider using `switch` rather than `if`:
    - Swift requires that its `switch` statements are exhaustive, which means you must either have a `case` block for every possible value to check (e.g. all cases of an enum) or you must have a `default` case. This isn’t true for `if` and `else if`, so you might accidentally miss a case.
    - When you use `switch` to check a value for multiple possible results, that value will only be read once, whereas if you use if it will be read multiple times.
    - Swift’s `switch` cases allow for advanced pattern matching that is unwieldy with `if`.

## Range operators
- Swift gives us two ways of making ranges: the `..<` and `...` operators. The half-open range operator, `..<`, creates ranges up to but excluding the final value, and the closed range operator, `...`, creates ranges up to and including the final value.
- Recommended read: https://www.avanderlee.com/swift/ranges-explained/
