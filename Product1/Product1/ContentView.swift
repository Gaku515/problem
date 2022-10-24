//
//  ContentView.swift
//  Product1
//
//  Created by 中川岳 on 2022/10/21.
//

import SwiftUI

struct ContentView: View {


    @State var resultText = "Label"
    @State var number1=""
    @State var number2=""
    @State var number3=""
    @State var number4=""
    @State var number5=""

    func changeNum(_ text:String) -> Int {
        Int(text) ?? 0
    }


    var body: some View {

        let sumNumber = changeNum(number1)+changeNum(number2)+changeNum(number3)+changeNum(number4)+changeNum(number5)


        VStack {
            CustomTextField(number: $number1)
            CustomTextField(number: $number2)
            CustomTextField(number: $number3)
            CustomTextField(number: $number4)
            CustomTextField(number: $number5)

            Button(action: {
                resultText = "\(sumNumber)"

            }, label: {
                Text("Button")
            })

            Text(resultText)
        }
    }
}

struct CustomTextField: View {
    @Binding var number: String

    var body: some View {
        TextField("", text: $number)
            .frame(width: 100, height: 25)
            .border(Color.black, width:1)
            .keyboardType(.numberPad)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

