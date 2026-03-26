import UIKit

//func serviceCharge() {
//    let mealCost = 50
//    let serviceCharge = mealCost / 10
//    print("Service charge is \(serviceCharge)")
//}
//serviceCharge()

//func serviceCharge(mealCost: Int) -> Int {
//    return mealCost / 10
//}
//let serviceChargeAmount = serviceCharge(mealCost: 50)
//print(serviceChargeAmount)
//
//let serviceChargeAmount2 = serviceCharge(mealCost: 100)
//print(serviceChargeAmount2)

//func serviceCharge(forMealPrice mealCost: Int) -> Int {
//    mealCost / 10
//}
//let serviceChargeAmount = serviceCharge(forMealPrice: 50)
//print(serviceChargeAmount)

func calculateMonthlyPayments(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) -> Double {
    func loanAmount() -> Double {
        carPrice - downPayment
    }
    func totalInterest() -> Double {
        interestRate * paymentTerm
    }
    func numberOfMonths() -> Double{
        paymentTerm * 12
    }
    return ((loanAmount() + (loanAmount() *
    totalInterest() / 100)) / numberOfMonths())
}
calculateMonthlyPayments(carPrice: 50000, downPayment: 5000,
interestRate: 3.5, paymentTerm: 7.0)

func approximateValueOfPi1() -> Double {
    3.14159
}
func approximateValueOfPi2() -> Double {
    22.0 / 7.0
}
func pi() -> (() -> Double) {
    approximateValueOfPi1
    // approximateValueOfPi2
}
pi()()


func isThereAMatch(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {
    for number in listOfNumbers {
        if condition(number) {
            return true
        }
    }
    return false
}
func numberIsOdd(number: Int) -> Bool {
    (number % 2) > 0
}
func numberIsEven(number: Int) -> Bool {
    (number % 2) == 0
}
let numbersList = [2, 4, 6, 8]
isThereAMatch(listOfNumbers: numbersList, condition: numberIsEven)

func buySomething(itemValueEntered itemValueField: String, cardBalance: Int) -> Int {
    guard let itemValue = Int(itemValueField) else {
        print("Error in item value")
        return cardBalance
    }
    let remainingBalance = cardBalance - itemValue
    return remainingBalance
}
print(buySomething(itemValueEntered: "10", cardBalance: 50))
print(buySomething(itemValueEntered: "blue", cardBalance: 50))


var numbersArray = [2, 4, 6, 7]

let myClosure = { (number: Int) -> Int in
    let result = number * number
    return result
}
let mappedNumbers = numbersArray.map(myClosure)

var testNumbers = [2, 4, 6, 7]
let mappedTestNumbers = testNumbers.map({
    (number: Int) -> Int in
    let result = number * number
    return result
})
print(mappedTestNumbers)
