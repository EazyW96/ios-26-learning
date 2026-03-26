import UIKit

let myRange = 10...20
for number in myRange {
    print(number)
}

let myRange2 = 10..<20
for number in myRange2 {
    print(number)
}

for number in 0...5 {
    print(number)
}

for number in (0...5).reversed() {
    print(number)
}

// while loops
var x = 0
while x < 100 {
    x += 5
    print("x is \(x)")
}

//repeat-while
var y = 0
repeat {
    y += 5
    print("y is \(y)")
} while y < 100

