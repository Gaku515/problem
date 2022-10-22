//
//  ContentView.swift
//  Product1
//
//  Created by 中川岳 on 2022/10/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var Label="Label"
    @State var number1=""
    @State var number2=""
    @State var number3=""
    @State var number4=""
    @State var number5=""
    
    func changeNum(_ text:String) -> Int{
        guard let num = Int(text) else{
            return 0
        }
        return num
    }
 
    
    var body: some View {
        
        var sumNumber = changeNum(number1)+changeNum(number2)+changeNum(number3)+changeNum(number4)+changeNum(number5)
        

        VStack {
            TextField("",text: self.$number1)
                .frame(width: 100, height: 25)
                .border(Color.black,width:1)
                .keyboardType(.numberPad)
            TextField("",text: self.$number2)
                .frame(width: 100, height: 25)
                .border(Color.black,width:1)
                .keyboardType(.numberPad)
            TextField("",text: self.$number3)
                .frame(width: 100, height: 25)
                .border(Color.black,width:1)
                .keyboardType(.numberPad)
            TextField("",text: self.$number4)
                .frame(width: 100, height: 25)
                .border(Color.black,width:1)
                .keyboardType(.numberPad)
            TextField("",text: self.$number5)
                .frame(width: 100, height: 25)
                .border(Color.black,width:1)
                .keyboardType(.numberPad)
            
        
            
            Button(action: {
                Label = "\(sumNumber)"

            }, label: {
                Text("Button")
            })
            
            Text(Label)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

