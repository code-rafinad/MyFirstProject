//
//  UsersView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct UsersView: View {
    @State private var users = ["Ian","Maria","Igor","Sergei","Boris"]
    var body: some View {
        NavigationView{
            
            List{
                ForEach(users, id: \.self) { user in
                    Text(user)
                } .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    func delete(att offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
