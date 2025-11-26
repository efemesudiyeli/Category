//
//  GameViewModel.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//
import Combine
import SwiftUI

class GameViewModel: ObservableObject {
    // Player
    @Published var players: [Player] = [
        Player(name: "Player 1"),
        Player(name: "Player 2")
    ]
    @Published var turnBelongsTo: Player? = nil
    @Published var turnBelongsToIndex: Int = 0
    @Published var turnBelongsToSelectedItem: String = ""
    @Published var isGameEnded: Bool = false

    func addNewPlayer() -> Void {
        if players.count < 8 {
            players.append(Player(name: "Player \(players.count + 1)"))
        }
    }
    
    func removeLastPlayer() -> Void {
        if players.count > 2 {
            players.removeLast()
        }        
    }
    
    func selectNextPlayersTurn() -> Void {
        if turnBelongsToIndex < players.count {
            turnBelongsTo = players[turnBelongsToIndex]
            turnBelongsToIndex += 1
        }
    }
    
    func startGame() -> Void {
        turnBelongsTo = players[0] // Give turn to first player
    }
    
    func resetGameParameters() -> Void {
        turnBelongsTo = nil
        turnBelongsToIndex = 0
    }
    
    func changePlayersSelectedItem(item: String) -> Void {
        players[turnBelongsToIndex].selectedItem = item
    }
    
    func isLastPlayersTurn() -> Bool {
        if turnBelongsToIndex == players.count - 1 {
            return true
        }
        return false
    }
    
    func endGame() -> Void {
        isGameEnded = true
    }
    
   
}
