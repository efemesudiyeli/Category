//
//  ContentView.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import SwiftUI

struct MainMenuView: View {
    @StateObject var mainMenuViewModel = MainMenuViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // Heading & Logo
                VStack{
                    Image(systemName: "circle.square.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Category")
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                Spacer()
                
                // Main Menu Buttons
                VStack {
                    NavigationLink {
                        GamePreperationView()
                    } label: {
                        MainButton(buttonText: "Play", isCTA: true)
                    }

                    NavigationLink {
                        CategoriesView()
                    } label: {
                        MainButton(buttonText: "Categories")
                    }
                    NavigationLink {
                        TutorialView()
                    } label: {
                        MainButton(buttonText: "Tutorial")
                    }
                    NavigationLink {
                        SettingsView()
                    } label: {
                        MainButton(buttonText: "Settings")
                    }
                }
                
                Spacer()
            }
            .padding()
            
        }
    }
}

#Preview {
    MainMenuView()
}
