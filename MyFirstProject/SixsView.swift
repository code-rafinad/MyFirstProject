//
//  SixsView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI


struct TaskRow: View {
    var body: some View {
        Text("Some Task")
    }
}

struct SixsView: View {
    var body: some View {
        List{
            Section(header: Text("Important Tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
                
            }
            Section(header: Text("Other Tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
                
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct SixsView_Previews: PreviewProvider {
    static var previews: some View {
        SixsView()
    }
}
