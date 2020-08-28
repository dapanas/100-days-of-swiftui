# Complex data types
> When the going gets tough, everyone leaves. -- Lynch's Law

## Arrays
- Arrays are collections of values that are stored as a single value.
- Swift crashes if you read an item that doesn’t exist.
- If you're using type annotations, arrays are written in brackets: `[String]`, `[Int]`, `[Double]`, and `[Bool]`.
- Arrays in Swift can be as large or as small as you want. If they are variable, you can add to them freely to build up your data over time, or you can remove or even rearrange items if you want.

## Sets
- Items aren’t stored in any order; they are stored in what is effectively a random order. (It’s not really a random order, it’s just unordered).
- No item can appear twice in a set; all items must be unique.
- If you try to insert a duplicate item into a set, the duplicates get ignored.
- Recommended Read: https://www.avanderlee.com/swift/array-vs-set-differences-explained/

## Tuples
- Tuples allow you to store several values together in a single value.
- You can’t add or remove items from a tuple; they are fixed in size.
- You can’t change the type of items in a tuple; they always have the same types they were created with.
- You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

## Arrays vs Sets vs Tuples
- If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple.
- If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set.
- If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array.

## Dictionaries
- If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array
- The most common way of storing dictionary data is using strings.
- When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, `[String: Double]` and `[String: String]`.

## Dictionary Default Values
- If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back `nil` – nothing at all.

## Creating empty collections
- Arrays, sets, and dictionaries are called collections, because they collect values together in one place.
- If you want to create an empty collection just write its type followed by opening and closing parentheses. 

## Enumerations
- An enum is simply a nice name for a value.
- Behind the scenes, Swift can store its enum values very simply, so they are much faster to create and store than something like a string.

## Enum associated values
- As well as storing a simple value, enums can also store _associated_ values attached to each case. This lets you attach additional information to your enums so they can represent more nuanced data.
- Associated values can be attached to every case, or only some cases. Plus, each case can have as many associated values as you want, as long as each one has a type.
- Enums with associated values let us add extra information to an enum case – think of them as being adjectives to a noun, because it lets us describe the thing in more detail.

## Enum raw values
- Sometimes you need to be able to assign values to enums so they have meaning. This lets you create them dynamically, and also use them in different ways.
- Swift will automatically assign each of those a number starting from 0, and you can use that number to create an instance of the appropriate enum case.
- Recommended Read: https://www.avanderlee.com/swift/enumerations/
