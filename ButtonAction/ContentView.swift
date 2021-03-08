//
//  ContentView.swift
//  ButtonAction
//
//  Created by 澤崎正佳 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    @State var output = ""
    @State var word = ""
    @State var callSasuke = false
    @State var callNezuko = false
    
    var body: some View {
        VStack{
            Text(output)
                .padding()
                .font(.title)
            TextField("名前を入力", text: $word)
                .frame(width: 300)
                .padding()
                .border(Color.black)
            Button(action: {
                printName(word, &callSasuke, &callNezuko)
                output = word
            }, label: {
                Text("Button")
            })
            .alert(isPresented: $callSasuke) {
                Alert(title: Text("サスケエエエエエエエエエエエエエエエエエエエエ！！！！！"))
            }
            .alert(isPresented: $callNezuko) {
                Alert(title: Text("ねずこおおおおおおおおおおおおおおおおおおおお！！！！！"))
            }
        }
    }
}

func printName(_ word: String, _ bool1: inout Bool, _ bool2: inout Bool) -> String {
    guard word != "サスケ" else {
        bool1 = true
        return "サスケ"
    }
    guard word != "ねずこ" else {
        bool2 = true
        return "ねずこ"
    }
    return word
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
