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
    // 左の数字を格納する
    @State private var leftNumber: Int = 0
    // 右の数字を格納する
    @State private var rightNumber: Int = 0
    // 計算結果を格納
    @State private var result: String = "0"
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    TextField("", text: $leftText)
                        .frame(width: 100)
                        .padding()
                    TextField("", text: $rightText)
                        .frame(width: 100)
                        .padding()
                }
                HStack {
                    Text("+")
                    Toggle("", isOn: $isLeftNegativeNumber)
                        .labelsHidden()
                    Text("-")
                    Spacer()
                    Text("+")
                    Toggle("", isOn: $isRightNegativeNumber)
                        .labelsHidden()
                    Text("-")
                }
                .tracking(10)
                Button {
                    // #2 ボタンタップ時のアクション
                    let chengedText = didTapAction(firstText: leftText, secondText: rightText)
                    // Int型に変換済み
                    leftNumber = chengedText.firstNumber
                    rightNumber = chengedText.secondNumber
                    // もし左のtogleがtrueだったらマイナスに変換
                    leftNumber = isLeftNegativeNumber ? -leftNumber : leftNumber
                    rightNumber = isRightNegativeNumber ? -rightNumber : rightNumber
                    result = String(leftNumber + rightNumber)
                    print("タップされた")
                } label: {
                    Text("Button")
                }
                HStack {
                    Text("\(leftNumber)")
                    Text("+")
                    Text("\(rightNumber)")
                }
                .tracking(40)
                .padding()
                Text(result)
                Spacer()
            }
            .frame(width: 250)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
        }
        .padding()
    }
    private func didTapAction(firstText: String, secondText: String) -> (firstNumber: Int, secondNumber: Int) {
        let firstNumber: Int = 0
        let secondNumber: Int = 0
        // 数字以外は返す
        guard let firstNumber = Int(firstText) else {
            return (firstNumber, secondNumber)
        }
        guard let secondNumber = Int(secondText) else {
            return (firstNumber, secondNumber)
        }
        // 2つとも数字の時のみ、Int型に変換
        return (firstNumber, secondNumber)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
