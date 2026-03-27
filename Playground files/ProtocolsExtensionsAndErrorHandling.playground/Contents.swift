import UIKit

protocol CalorieCountable {
    var calories: Int { get }
    func description() -> String
}

class Burger: CalorieCountable {
    let calories = 800
    func description() -> String {
        "This burger has \(calories) calories"
    }
}
struct Fries: CalorieCountable {
    let calories = 500
    func description() -> String {
        "These fries have \(calories) calories"
    }
}
enum Sauce {
    case chili
    case tomato
}
extension Sauce: CalorieCountable {
    var calories: Int {
        switch self {
        case .chili:
            20
        case .tomato:
            15
        }
    }
    func description() -> String {
        "This sauce has \(calories) calories"
    }
}

let burger = Burger()
let fries = Fries()
let sauce = Sauce.chili
let foodArray: [CalorieCountable] = [burger, fries, sauce]
let totalCalories = foodArray.reduce(0, {$0 + $1.calories})
print(totalCalories)

enum WebsiteError: Error {
    case noInternetConnection
    case siteDown
    case wrongURL
}
func checkWebsite(siteUp: Bool) throws -> String {
    if !siteUp {
        throw WebsiteError.siteDown
    }
    return "Site is up"
}

let siteStatus = false
do {
    print(try checkWebsite(siteUp: siteStatus))
} catch {
    print(error)
}

