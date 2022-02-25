import Cocoa

// The challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let students: [String] = ["Daniel", "Melissa", "Ana", "Leonardo", "Daniel", "Ana"]
let uniqueStudents: Set<String> = Set(students)
print("The number of students in the array is \(students.count) and there are \(uniqueStudents.count) unique names")
