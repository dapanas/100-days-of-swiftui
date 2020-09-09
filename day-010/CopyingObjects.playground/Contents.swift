import UIKit

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// With struct

struct SingerStruct {
    var name = "Taylor Swift"
}

var singerStruct = SingerStruct()
print(singerStruct.name)

var singerStructCopy = singerStruct
singerStructCopy.name = "Justin Bieber"

print(singerStruct.name)
