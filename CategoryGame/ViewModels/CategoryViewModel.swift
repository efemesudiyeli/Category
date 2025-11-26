//
//  CategoryViewModel.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//
import Combine
import SwiftUI

class CategoryViewModel: ObservableObject {
    @Published var currentSelectedCategory: Category? = nil
    
    func selectRandomCategory() -> Void {
        if let randomCategory = CategoryDefaultStore.all.randomElement() {
            currentSelectedCategory = randomCategory
        } else {
            print("Error while selecting random category.")
        }
    }
}
