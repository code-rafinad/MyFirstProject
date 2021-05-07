//
//  NavigationView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct NavigView: View {
    var body: some View {
        NavigationView {
            Text("SwiftUI")
                .navigationBarTitle("Welcome", displayMode: .inline)
                .navigationBarItems(trailing: HStack {
                    Button("Help"){print("Helped")}
                    Button("About"){print("About tapped")}
                    
                })
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigView()
    }
}
