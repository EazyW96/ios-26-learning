import UIKit

let isRestaurantOpen = false
if !isRestaurantOpen  {
    print("The restaurant was not found")
}

let drinkingAgeLimit = 21
let customerAge = 19
if customerAge < drinkingAgeLimit {
    print("Under age limit, you cannot have alcohol!")
}else {
    print("Over age limit")
}

var trafficLightColor = "teal"
if trafficLightColor ==
    "Red" {
    print("Stop")
} else if trafficLightColor ==
    "Yellow" {
    print("Caution")
} else if trafficLightColor ==
    "Green" {
    print("Go")
    } else {
        print("Invalid color")
    }

trafficLightColor = "teal"
switch trafficLightColor {
case "Red":
    print("Stop")
case "Yellow":
    print("Caution")
case "Green":
    print("Go")
default:
    print("Invalid color")
}

var spouseName: String?
spouseName = " "
print(spouseName ?? "No value in spouseName")
//let greeting = "Hello, " + spouseName!
if let spouseTempVar = spouseName {
    let greeting = "Hello, " + spouseTempVar
    print(greeting)
}

spouseName = nil
print(spouseName ?? "No value in spouseName")
if let spouseName {
    let greeting = "Hello, " + spouseName
    print(greeting)
}
