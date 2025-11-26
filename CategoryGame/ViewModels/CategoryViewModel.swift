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
    private var lastRandomItem: Item = Item(name: "Fox")
    private var currentRandomItem: Item = Item(name: "Elephant")
    
    func selectRandomCategory() -> Void {
        if let randomCategory = CategoryDefaultStore.all.randomElement() {
            currentSelectedCategory = randomCategory
        } else {
            print("Error while selecting random category.")
        }
    }
    
    func selectRandomItem() -> Item? {
        if currentSelectedCategory != nil {
            repeat {
                if let item = currentSelectedCategory?.items.randomElement() {
                    currentRandomItem = item
                }
            } while lastRandomItem.name == currentRandomItem.name
            lastRandomItem = currentRandomItem
            return currentRandomItem
        }
        
        return nil
    }
}
