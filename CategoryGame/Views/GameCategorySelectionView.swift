//
//  GameCategorySelectionView.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import SwiftUI

struct GameCategorySelectionView: View {
    @ObservedObject var gameViewModel: GameViewModel
    @StateObject var categoryViewModel = CategoryViewModel()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Turn:")
                        .bold()
                    let turnBelongsToName = gameViewModel.players[gameViewModel.turnBelongsToIndex].name
                        Text(turnBelongsToName)
                }
                HStack {
                    Text("Category:")
                        .bold()
                    if let currentSelectedCategory = categoryViewModel.currentSelectedCategory?.name {
                        Text(currentSelectedCategory)
                    }
                }
                HStack {
                    TextField("Product", text: $gameViewModel.turnBelongsToSelectedItem)
                        .textFieldStyle(.roundedBorder)
                        .shadow(radius: 2, x: 5, y: 5)
                        .onChange(
                            of: gameViewModel.turnBelongsToSelectedItem) { oldValue, newValue in
                                gameViewModel.changePlayersSelectedItem(item: gameViewModel.turnBelongsToSelectedItem)

                            }
                }
                
                if gameViewModel.isLastPlayersTurn() {
                    // Start
                    NavigationLink {
                        GameView(gameViewModel: gameViewModel)
                    } label: {
                        MainButton(buttonText: "Start", isCTA: true)
                    }.disabled(gameViewModel.turnBelongsToSelectedItem.isEmpty)

                } else {
                    // Next
                    Button {
                        gameViewModel.changePlayersSelectedItem(item: gameViewModel.turnBelongsToSelectedItem)
                        gameViewModel.selectNextPlayersTurn()
                        gameViewModel.turnBelongsToSelectedItem = ""
                    } label: {
                        MainButton(buttonText: "Next Player", isCTA: true)
                    }.disabled(gameViewModel.turnBelongsToSelectedItem.isEmpty)
                }
               
            }.padding()
        }.onAppear {
            categoryViewModel.selectRandomCategory()
            gameViewModel.startGame()
        }
    }
}

#Preview {
    GameCategorySelectionView(
        gameViewModel: GameViewModel(),
        categoryViewModel: CategoryViewModel()
    )
}
