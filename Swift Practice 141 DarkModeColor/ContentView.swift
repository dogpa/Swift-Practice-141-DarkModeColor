//
//  ContentView.swift
//  Swift Practice 141 DarkModeColor
//
//  Created by Dogpa's MBAir M1 on 2022/3/29.
//

import SwiftUI

struct ContentView: View {
    @State private var textFieldString = ""
    var body: some View {
        VStack{
            Spacer()
            
            Text("Hello, world!")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .padding(30)
                .foregroundColor(Color("Text"))
                .overlay(RoundedRectangle(cornerRadius: 5, style: .circular).stroke(lineWidth: 2))
            
            Spacer()
            
            Button(action: {},
                   label: {Text("按鈕")
                
            })
                .font(.system(size: 30))
                .padding()
                .background(Color("Button"))
                .padding(20)
                .border(Color("Button"), width: 3)
                .overlay(RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color("Button"), lineWidth: 5))
            
            Spacer()
            
            
            TextField("輸入內容", text: $textFieldString)
                .multilineTextAlignment(.center)
                .padding()
                .overlay( RoundedRectangle(cornerRadius: 5) .stroke(.gray, lineWidth: 5))
                .padding()
                .foregroundColor(Color("TextField"))
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
