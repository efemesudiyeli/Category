//
//  Player.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import Foundation
import SwiftUI

struct Player: Identifiable {
    var id: UUID = UUID()
    var name: String
    var selectedItem: String? = nil
}
