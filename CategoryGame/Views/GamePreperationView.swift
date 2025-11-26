//
//  GameView.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import SwiftUI

struct GamePreperationView: View {
    @StateObject var gameViewModel = GameViewModel()

    var body: some View {
            VStack {
                Text("Add Players!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                Spacer()
                
                ForEach($gameViewModel.players) { player in
                    TextField("Player", text: player.name)
                }
                .textFieldStyle(.roundedBorder)
                .shadow(radius: 1, x: 5, y: 3)
                
                HStack {
                    Spacer()
                    Button {
                        gameViewModel.removeLastPlayer()
                    } label: {
                        Image(systemName: "minus")
                    }
                    Button {
                        gameViewModel.addNewPlayer()
                    } label: {
                        Image(systemName: "plus")
                    }
                }.padding(.top, 2)
                
                NavigationLink {
                    GameCategorySelectionView(gameViewModel: gameViewModel)
                } label: {
                    MainButton(buttonText: "Start", isCTA: true)
                }.padding(.top, 50)
                
                
                Spacer()
            }
            
            .padding()
        }
    
    }


#Preview {
    GamePreperationView()
}
