#  Functions, parameters, and errors

> Dennis Ritchie (the creator of the C programming language) encouraged modularity by telling all and sundry that function calls were really, really cheap in C. Everybody started writing small functions and modularizing. Years later we found out that function calls were still expensive, and our code was often spending 50% of its time just calling them. Dennis had lied to us! But it was too late; we were all hooked... -- Steve Johnson

Functions let us wrap up pieces of code so they can be used in lots of places. We can send data into functions to customize how they work, and get back data that tells us the result that was calculated.

## Writing functions
- Swift functions start with the func keyword, then your function name, then open and close parentheses. All the body of your function – the code that should be run when the function is requested – is placed inside braces.

## Accepting parameters
- To make your own functions accept parameters, give each parameter a name, then a colon, then tell Swift the type of data it must be. All this goes inside the parentheses after your function name.

## Returning values
- As well as receiving data, functions can also send back data. To do this, write a dash then a right angle bracket after your function’s parameter list, then tell Swift what kind of data will be returned.
- Inside your function, you use the `return` keyword to send a value back if you have one. Your function then immediately exits, sending back that value – no other code from that function will be run.
- If you need to return multiple values, this is a perfect example of when to use tuples.
- Swift lets us skip using the `return` keyword when we have only one expression in our function.

## Parameter labels
- Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

## Omitting parameter labels
- You can omit parameter labels in your own functions by using an underscore, `_`, for your external parameter name.
- The main reason for skipping a parameter name is when your function name is a verb and the first parameter is a noun the verb is acting on.

## Default parameters
- You can give your own parameters a default value just by writing an `=` after its type followed by the default you want to give it.

## Varidic functions
- Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type.
- You can make any parameter variadic by writing `...` after its type.
- Inside the function, Swift converts the values that were passed in to an array of integers, so you can loop over them as needed.

## Writing throwing functions
- Swift lets us throw errors from functions by marking them as `throws` before their return type, then using the `throw` keyword when something goes wrong.
- Recommended read: https://www.donnywals.com/working-with-throwing-functions-in-swift.

## Running throwing functions
- Swift doesn’t like errors to happen when your program runs, which means it won’t let you run an error-throwing function by accident.
- You need to call these functions using three new keywords: `do` starts a section of code that might cause problems, `try` is used before every function that might throw an error, and `catch` lets you handle errors gracefully.

## inout parameters
- All parameters passed into a Swift function are _constants_, so you can’t change them. If you want, you can pass in one or more parameters as `inout`, which means they can be changed inside your function, and those changes reflect in the original value outside the function.
- You also need to pass the parameter using an ampersand, `&`, before its name, which is an explicit recognition that you’re aware it is being used as `inout`.
