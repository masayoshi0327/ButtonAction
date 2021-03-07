//
//  ContentView.swift
//  ButtonAction
//
//  Created by 澤崎正佳 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    @State var word = ""
    
    var body: some View {
        VStack{
            Text(word)
                .padding()
                .font(.title)
            Button(action: {
                a(word: &word)
            }, label: {
                Text("Button")
            })
        }
    }
}

func a(word : inout String) {
    word = "Hello!"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
