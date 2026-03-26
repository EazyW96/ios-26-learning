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
