import UIKit

// TextFieldに入力される値
let leftText: String = "20"
let rightText: String = "10"

//func didTapAction(firstText: String, secondText: String) -> Int {
//    guard let firstNumber = Int(firstText) else {
//        return 0
//    }
//    guard let secondNumber = Int(secondText) else {
//        return 0
//    }
//    return firstNumber + secondNumber
//}

let aaa = didTapAction(firstText: leftText, secondText: rightText)
print(aaa)

func didTapAction(firstText: String, secondText: String) -> (firstNumber: Int, secondNumber: Int) {
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    
    guard let firstNumber = Int(firstText) else {
        return (firstNumber, secondNumber)
    }
    guard let secondNumber = Int(secondText) else {
        return (firstNumber, secondNumber)
    }
    return (firstNumber, secondNumber)
}

let ddd = didTapAction(firstText: leftText, secondText: rightText)
print(ddd)
