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

//let aaa = didTapAction(firstText: leftText, secondText: rightText)
//print(aaa)

//func didTapAction(firstText: String, secondText: String) -> (firstNumber: Int, secondNumber: Int) {
//    var firstNumber: Int = 0
//    var secondNumber: Int = 0
//
//    guard let firstNumber = Int(firstText) else {
//        return (firstNumber, secondNumber)
//    }
//    guard let secondNumber = Int(secondText) else {
//        return (firstNumber, secondNumber)
//    }
//    return (firstNumber, secondNumber)
//}

//let ddd = didTapAction(firstText: leftText, secondText: rightText)
//print(ddd)

// (String, String)を入力 + Boolも持ってくる　→ アクション内でアンラップ、(Int, Int)引数
// 数字以外は排除　いらない
// 両方とも数字が確定してる→Boolがどうなのか確認
// +or-の符号決定　※この2つの数字も欲しい！
// 足し算する
// 計算結果合わせて３つのint
func didTapAction(firstNumber: Int, secondNumber: Int, firstToggl: Bool, secondToggle: Bool) -> (leftNumber: Int, rightNumber: Int, answerNumber: Int) {
    var leftNumber: Int
    var rightNumber: Int
    var calculationResults: Int = 0
    
    // Togglがtrueかfalseか→数字の+or-決定
    leftNumber = firstToggl ? -firstNumber : firstNumber
    rightNumber = secondToggle ? -secondNumber : secondNumber
    // 足し算
    calculationResults = leftNumber + rightNumber
    return (leftNumber, rightNumber, calculationResults)
}

let rrr = didTapAction(firstNumber: 10, secondNumber: 20, firstToggl: true, secondToggle: false)
print(rrr)
