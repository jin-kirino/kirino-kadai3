//
//  ContentView.swift
//  kirino-kadai3
//
//  Created by 神　樹里乃 on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    // 左の入力値を格納する
    @State private var leftText: String = ""
    // 右の入力値を格納する
    @State private var rightText: String = ""
    // 左のtoggleを管理する
    @State private var isLeftNegativeNumber: Bool = false
    // 右のtoggleを管理する
    @State private var isRightNegativeNumber: Bool = false
    // タプルの計算結果
    @State private var calculation = (leftNumber: 0, rightNumber: 0, total: 0)
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    inputTextView(inputText: $leftText, isMinus: $isLeftNegativeNumber)
                    inputTextView(inputText: $rightText, isMinus: $isRightNegativeNumber)
                }
                .tracking(10)
                Button {
                    // 数字だったら計算
                    if let leftNumber = Int(leftText), let rightNumber = Int(rightText) {
                        calculation = didTapAction(firstNumber: leftNumber, secondNumber: rightNumber, firstToggl: isLeftNegativeNumber, secondToggle: isRightNegativeNumber)
                    }
                    print("タップされた")
                } label: {
                    Text("Button")
                }
                HStack {
                    Spacer()
                    Text("\(calculation.leftNumber)")
                    Spacer()
                    Text("+")
                    Spacer()
                    Text("\(calculation.rightNumber)")
                    Spacer()
                }
                .padding()
                Text("\(calculation.total)")
                Spacer()
            }
            .frame(width: 250)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
        }
        .padding()
    }
    
    func didTapAction(firstNumber: Int, secondNumber: Int, firstToggl: Bool, secondToggle: Bool) -> (leftNumber: Int, rightNumber: Int, total: Int) {
        var leftNumber: Int
        var rightNumber: Int
        var calculationResults: Int
        
        // Togglがtrueかfalseか→数字の+or-決定
        leftNumber = firstToggl ? -firstNumber : firstNumber
        rightNumber = secondToggle ? -secondNumber : secondNumber
        // 足し算
        calculationResults = leftNumber + rightNumber
        return (leftNumber, rightNumber, calculationResults)
    }
}

// TextFieldとtoggleのView
struct inputTextView: View {
    @Binding var inputText: String
    @Binding var isMinus: Bool
    
    var body: some View {
        VStack {
            TextField("", text: $inputText)
                .frame(width: 100)
                .padding()
            HStack {
                Text("+")
                Toggle("", isOn: $isMinus)
                    .labelsHidden()
                Text("-")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
