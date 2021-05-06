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
            Toggle(isOn: $showHello, label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.yellow))
       // .padding()
            if showHello {
                Text("Helloef")
                    .foregroundColor(.blue)
            }
        }
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
