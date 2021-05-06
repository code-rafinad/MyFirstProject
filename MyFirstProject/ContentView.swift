//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 06.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .blue])
        let gradient = AngularGradient(gradient: colors, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        return Circle()
            .strokeBorder(gradient, lineWidth: 50)
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
