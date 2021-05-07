//
//  EduTabView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct EduTabView: View {
    @State private var selectedView = 1
    var body: some View {
        TabView(selection: $selectedView) {
            Text("First View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                } .tag(1)
            Text("Second View")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                } .tag(2)
        }
    }
}

struct EduTabView_Previews: PreviewProvider {
    static var previews: some View {
        EduTabView()
    }
}
