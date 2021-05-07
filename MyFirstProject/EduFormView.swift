//
//  EduFormView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct EduFormView: View {
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor = 0
    @State private var additionalSettings = false
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Colors")) {
                Picker(selection: $selectedColor, label: Text("Select a color")) {
                    ForEach(0..<colors.count) {
                        Text(self.colors[$0])
                    }
                } .pickerStyle(SegmentedPickerStyle())
                Toggle(isOn: $additionalSettings) {
                    Text("Additional settings")
                }
                
                Button(action: {
                    //
                }, label: {
                    Text("Save changes")
                })
            }
                Section(header: Text("Super Additional Settings")) {
                Toggle(isOn: $additionalSettings) {
                    Text("Super mode")
                }
                
            }
                .disabled(!additionalSettings)
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct EduFormView_Previews: PreviewProvider {
    static var previews: some View {
        EduFormView()
    }
}
