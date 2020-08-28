# Variables, simple data types and string interpolation
> The secret to getting ahead is getting started. -- Mark Twain

## Variables
- Variables in Swift are initialized with the keyword `var`. These variables can change their value later but NOT the type.
- Redeclaring a variable with `var` throws an "Invalid redeclaration" error.
- Swift lets you use underscores as thousands separators. For example: `var population = 8_000_000`
- Swift can figure out what type the variable is based on what kind of data is assigned during the declaration.

## Multi-line strings
- You can't include line breaks in standard Swift strings. If you want multi-line string you need to start and end the variable declaration with three double quote marks: `"""`.
- If you only want multi-line strings to format your code neatly, and you don’t want those line breaks to actually be in your string, end each line with a `\`.

## Doubles and Booleans
- "Double" is short for "double-precision floating-point number", and it’s a fancy way of saying it holds fractional values such as 38.1, or 3.141592654.
- Doubles are different from integers, and you can’t mix them by accident.
- When create a numeric variable, Swift decides whether to consider it an integer or a double based on whether you include a decimal point.

## String Interpolation
- You can place any type of variable inside your string – all you have to do is write a backslash, `\`, followed by your variable name in parentheses.
- Recommended read: https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0

## Constants
- The `let` keyword creates constants, which are values that can be set once and never again.
- When you write your own Swift code, you should always use `let` unless you specifically want to change a value.

## Type Annotations
- You can be explicit about the type of your data rather than relying on Swift's type inference, like this: `let album: String = "Reputation"`
- Booleans and Integers have a short type name: `Bool` and `Int`, respectively.

