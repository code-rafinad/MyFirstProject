//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 06.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showHello = true
    var body: some View {
        VStack{
            Toggle(isOn: $showHello) {
                Text("Show Hello!")
            }
            .padding()
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
