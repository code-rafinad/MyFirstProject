//
//  EduModifiersView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct customModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
            .padding()
            .background(Color.black)
    }
}

struct CustomText: View {
    var name: String
    var body: some View {
        Text(name)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.black)
            .background(Color.pink)
    }
}

struct EduModifiersView: View {
    @State private var useGreenText = false
    var body: some View {
        VStack(spacing: 20) {
            CustomText(name: "First")
            CustomText(name: "Second")
            Text("FFFFFFFFFFF")
                .modifier(customModifier())
            Button("Change my color!") {
                self.useGreenText.toggle()
            }
            .foregroundColor(useGreenText ? .green : .blue)
        }
    }
}

struct EduModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        EduModifiersView()
    }
}
