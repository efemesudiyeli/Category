//
//  CategoriesView.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import SwiftUI

struct CategoriesView: View {
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(CategoryDefaultStore.all) { category in
                    Text(category.name)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, minHeight: 100)
                        .background(
                            RoundedRectangle(cornerRadius: 12).fill(.blue)
                        )
                   
                }
            }     .padding(.horizontal, 12)
        }
        .scrollClipDisabled()
        
    }
}

#Preview {
    CategoriesView()
}
