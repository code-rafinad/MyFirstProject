//
//  FivesView.swift
//  MyFirstProject
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI


struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}


struct RestaurantRow: View {
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

struct FivesView: View {
    var body: some View {
        let first = Restaurant(name: "KFC")
        let second = Restaurant(name: "Burger  King")
        let third = Restaurant(name: "Macdonalds")
        let restaurants = [first, second, third]
        
        return List(restaurants) {restaurant in RestaurantRow(restaurant: restaurant)}
    }
    
}

struct FivesView_Previews: PreviewProvider {
    static var previews: some View {
        FivesView()
    }
}
