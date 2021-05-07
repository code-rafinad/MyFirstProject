//
//  EduTabView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct EduTabView: View {
    @State private var selectedView = 2
    var body: some View {
        TabView(selection: $selectedView) {
            ThirdView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                } .tag(1)
            FirstView()
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
