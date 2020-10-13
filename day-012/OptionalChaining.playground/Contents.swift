import UIKit

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//

let painters = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = painters["Vincent"]?.first?.uppercased()
let surnameLetter2 = painters["Vincent"]?.first?.uppercased() ?? "?"
