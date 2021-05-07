//
//  SecondView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack{
        Image("pp")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
            .onTapGesture(count: 2) {
                print("Double Tapped")
            }
            Spacer()
        Text("Hello, World!")
        }
        //.ignoresSafeArea()
        .contentShape(Rectangle())
        .onTapGesture {
            print("Hello Apple")
        }
}
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
