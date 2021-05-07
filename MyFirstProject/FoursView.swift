//
//  FoursView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct MusicRow: View {
    var name: String
    var body: some View {
        Text("Music: \(name)")
    }
}

struct FoursView: View {
    var body: some View {
        
            VStack {
                List {
                MusicRow(name: "Rock")
                MusicRow(name: "Rap")
                MusicRow(name: "Classical")
                }
            }
        .frame(height: 300)
    }
}

struct FoursView_Previews: PreviewProvider {
    static var previews: some View {
        FoursView()
    }
}
