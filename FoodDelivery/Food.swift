//
//  Food.swift
//  FoodDelivery
//
//  Created by Hung-Chun Tsai on 2020-12-29.
//

import Foundation
import SwiftUI

enum Categories {
    case burger
    case pasta
    case pizza
    case desserts
}

struct Food: Identifiable {
    
    let title: String
    let price: Double
    let category: Categories
    let id = UUID()
    
}

