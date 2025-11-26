//
//  Category.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//
import Foundation

struct Category: Identifiable {
    var id = UUID()
    let name: String
}

struct CategoryDefaultStore {
    static let all: [Category] = [
        Category(name: "Animals"),
        Category(name: "Fruits"),
        Category(name: "Vegetables"),
        Category(name: "Countries"),
        Category(name: "Cities"),
        Category(name: "Sports"),
        Category(name: "Professions"),
        Category(name: "Movies"),
        Category(name: "TV Shows"),
        Category(name: "Music Genres"),
        Category(name: "Musical Instruments"),
        Category(name: "Colors"),
        Category(name: "Cars"),
        Category(name: "Drinks"),
        Category(name: "Foods"),
        Category(name: "Languages"),
        Category(name: "Planets"),
        Category(name: "Famous People"),
        Category(name: "Historical Events"),
        Category(name: "Books"),
        Category(name: "Clothing"),
        Category(name: "Flowers"),
        Category(name: "Insects"),
        Category(name: "Birds"),
        Category(name: "Sea Creatures"),
        Category(name: "Superheroes"),
        Category(name: "Villains"),
        Category(name: "Cartoon Characters"),
        Category(name: "Brands"),
        Category(name: "Apps"),
        Category(name: "Websites"),
        Category(name: "Hobbies"),
        Category(name: "Games"),
        Category(name: "Animals With Wings"),
        Category(name: "Animals in Water"),
        Category(name: "Fast Food"),
        Category(name: "Desserts"),
        Category(name: "School Subjects"),
        Category(name: "European Countries"),
        Category(name: "Hospital Jobs"),
        Category(name: "Kitchen Items"),
        Category(name: "Bedroom Items"),
        Category(name: "Cold Things"),
        Category(name: "Hot Things"),
        Category(name: "Weather Types"),
        Category(name: "Tools"),
        Category(name: "Electronic Devices"),
        Category(name: "Toys"),
        Category(name: "Landmarks"),
        Category(name: "Myths & Legends")
    ]
}
