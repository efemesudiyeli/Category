//
//  GameView.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var gameViewModel: GameViewModel
    
    var body: some View {
        VStack {
            Text("GAME STARTED")
            
            if gameViewModel.isGameEnded {
                VStack {
                    ForEach(gameViewModel.players) { player in
                        if let selectedItem = player.selectedItem {
                            Text(selectedItem)
                        }
                    }
                }
            }
            
            Button {
                gameViewModel.endGame()
            } label: {
                MainButton(buttonText: "End Game & See Products")
            }

        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    GameView(gameViewModel: GameViewModel())
}
