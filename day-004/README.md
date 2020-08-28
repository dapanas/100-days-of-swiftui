#  Loops, loops, and more loops

> It’s hardware that makes a machine fast, but it’s software that makes a fast machine slow. -- Craig Bruce

Swift has a few ways of writing loops, but their underlying mechanism is the same: run some code repeatedly until a condition evaluates as false.

## For loops
- It will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.
- If you don’t use the constant that `for` loops give you, you should use an underscore instead so that Swift doesn’t create needless values.

## While loops
- Give it a condition to check, and its loop code will go around and around until the condition fails.

## Repeat loops
- It’s identical to a `while` loop except the condition to check comes at the end.
- Because the condition comes at the _end_ of the `repeat` loop the code inside the loop will always be executed at least once, whereas `while` loops check their condition before their first run.

## Exiting loops
- You can exit a loop at any time using the `break` keyword.

## Exiting multiple loops
- If we wanted to exit part-way through we need to do two things:
1. We give the outside loop a label.
2. Add our condition inside the inner loop, then use `break LOOPNAME` to exit both loops at the same time.

## Skipping items
- If you just want to skip the current item and continue on to the next one, you should use `continue` instead.
- Just like `break`, you can use `continue` with labeled statements.

## Infinite loops
- To make an infinite loop, just use `true` as your condition. `true` is always true, so the loop will repeat forever.
