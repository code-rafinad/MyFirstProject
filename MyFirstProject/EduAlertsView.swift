//
//  EduAlertsView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct EduAlertsView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    @State private var showingAlert3 = false
    @State private var showingActionSheet = false
    var body: some View {
        HStack {
            Button("Show 1") {
                self.showingAlert1 = true
            }.alert(isPresented: $showingAlert1, content: {
                Alert(title: Text("One"), message: nil, dismissButton: .cancel())
            })
            
            Button("Show 2") {
                self.showingAlert2 = true
            }.alert(isPresented: $showingAlert2, content: {
                Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
            })
            Button("Show 3") {
                self.showingAlert3 = true
            }.alert(isPresented: $showingAlert3) {
                Alert(title: Text("Question"), message: Text("Are you sure to delete this?"), primaryButton: .destructive(Text("Delete")) {
                    print("Deleting...")
                }, secondaryButton: .cancel())
            }
            Button("Show Action Sheets") {
                self.showingActionSheet = true
            } .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("What do you want to do?"), message: Text("There is only one choise..."), buttons: [.default(Text("Dissmiss Action sheet")), .cancel(), .destructive(Text("Delete"))])
            }
        }
    }
}

struct EduAlertsView_Previews: PreviewProvider {
    static var previews: some View {
        EduAlertsView()
    }
}
