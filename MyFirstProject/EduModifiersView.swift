//
//  EduModifiersView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct EduModifiersView: View {
    @State private var useGreenText = false
    
    var body: some View {
        Button("Hello, World!") {
            self.useGreenText.toggle()
        }
        .foregroundColor(useGreenText ? .green : .blue)
    }
}

struct EduModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        EduModifiersView()
    }
}
