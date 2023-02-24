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
    @State private var leftNumber: String = "0"
    // 右の数字を格納する
    @State private var rightNumber: String = "0"
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
                    print("タップされた")
                } label: {
                    Text("Button")
                }
                HStack {
                    Spacer()
                    Text(leftNumber)
                    Text("+")
                    Text(rightNumber)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
