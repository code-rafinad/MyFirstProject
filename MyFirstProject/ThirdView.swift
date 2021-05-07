//
//  ThirdView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            Image("pp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .gesture(DragGesture(minimumDistance: 50)
                            .onEnded{ _ in
                                print("Dragged")})
                .gesture(LongPressGesture(minimumDuration: 2)
                            .onEnded{ _ in
                                print("Pressed")
                        })
            Text("Hello, World!")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
