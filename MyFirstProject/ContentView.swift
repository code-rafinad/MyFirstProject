//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 06.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var password = ""
    @State private var showDetail = false
    @State private var celcius: Double = 0
    var textButton = 1
    var body: some View {
        VStack{
            Slider(value: $celcius, in: -100...100, step: 0.1)
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Enter your password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Hello, \(name), your password is \(password), temperature is \(celcius) celcius, that \(celcius * 9/5 + 32) Farenheit")
        }
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
