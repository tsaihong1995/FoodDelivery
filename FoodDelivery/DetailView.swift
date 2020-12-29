//
//  DetailView.swift
//  FoodDelivery
//
//  Created by Hung-Chun Tsai on 2020-12-29.
//

import SwiftUI

struct DetailView: View {
    
    let currentCategory: Categories
    
    var body: some View {
        List(filterData(foodDataSet: foodData, by: currentCategory)) { food in
            DetailRow(food: food)
                .cornerRadius(20)
        }
            .navigationTitle(Text(categoryString(for: currentCategory)))
            .listStyle(SidebarListStyle())
        
}

func filterData(foodDataSet: [Food], by category: Categories) -> [Food] {
    var filteredArray = [Food]()
    
    for food in foodDataSet {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    
    return filteredArray
}

func categoryString (for category: Categories) -> String {
    switch category {
    case .pizza:
        return "Pizza"
    case .burger:
        return "Burger"
    case .pasta:
        return "Pasta"
    case .desserts:
        return "Desserts"
    }
}

    
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
    
    
}
