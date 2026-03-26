import UIKit

class Animal {
    var name: String
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    
    init(name: String, sound: String, numberOfLegs: Int, breathesOxygen: Bool) {
        self.name = name
        self.sound = sound
        self.numberOfLegs = numberOfLegs
        self.breathesOxygen = breathesOxygen
    }
    
     
    func makeSound() {
        print(sound)
    }
    func description() -> String {
        "name: \(name) sound: \(sound) numberOfLegs: \(numberOfLegs) breathesOxygen: \(breathesOxygen)"
    }
}


class Mammal: Animal {
    let hasFurOrHair: Bool = true
    override func description() -> String {
        super.description() + "hasFurOrHair: \(hasFurOrHair)"
    }
}

let cat = Mammal(name: "Oreo", sound: "Meow", numberOfLegs: 4, breathesOxygen: true)

print(cat.description())
cat.makeSound()

struct Reptile {
    var name: String
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    let hasFurOrHair: Bool = false
    func makeSound() {
        print(sound)
    }
    func description() -> String { 
        "Structure: Reptile name: \(name) sound: \(sound) numberOfLegs: \(numberOfLegs) breathesOxygen: \(breathesOxygen) hasFurOrHair: \(hasFurOrHair)"
    }
}

var snake = Reptile(name: "Snake", sound: "Hiss", numberOfLegs: 0, breathesOxygen: true)
print(snake.description())
snake.makeSound()

struct SampleValueType {
    var sampleProperty = 10
}
var a = SampleValueType()
var b = a
b.sampleProperty = 20
print(a.sampleProperty)
print(b.sampleProperty)

class SampleReferenceType {
    var sampleProperty = 10
}
var c = SampleReferenceType()
var d = c
c.sampleProperty = 20
print(c.sampleProperty)
print(d.sampleProperty)
