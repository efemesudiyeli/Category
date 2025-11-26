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
    let items: [Item]
}

struct CategoryDefaultStore {
    static let all: [Category] = [
        Category(name: "Animals", items: [
            Item(name: "Dog"), Item(name: "Cat"), Item(name: "Lion"),
            Item(name: "Elephant"), Item(name: "Monkey"), Item(name: "Wolf"),
            Item(name: "Tiger"), Item(name: "Bear"), Item(name: "Horse"),
            Item(name: "Fox")
        ]),
        
        Category(name: "Fruits", items: [
            Item(name: "Apple"), Item(name: "Banana"), Item(name: "Orange"),
            Item(name: "Mango"), Item(name: "Grapes"), Item(name: "Peach"),
            Item(name: "Pear"), Item(name: "Pineapple"), Item(name: "Strawberry"),
            Item(name: "Cherry")
        ]),
        
        Category(name: "Vegetables", items: [
            Item(name: "Carrot"), Item(name: "Potato"), Item(name: "Tomato"),
            Item(name: "Onion"), Item(name: "Broccoli"), Item(name: "Lettuce"),
            Item(name: "Spinach"), Item(name: "Cucumber"), Item(name: "Pepper"),
            Item(name: "Garlic")
        ]),
        
        Category(name: "Countries", items: [
            Item(name: "Turkey"), Item(name: "USA"), Item(name: "Germany"),
            Item(name: "France"), Item(name: "Japan"), Item(name: "China"),
            Item(name: "Brazil"), Item(name: "Italy"), Item(name: "Spain"),
            Item(name: "Canada")
        ]),
        
        Category(name: "Cities", items: [
            Item(name: "Istanbul"), Item(name: "Athens"), Item(name: "Oslo"),
            Item(name: "Tokyo"), Item(name: "Paris"), Item(name: "New York"),
            Item(name: "Berlin"), Item(name: "Rome"), Item(name: "London"),
            Item(name: "Madrid")
        ]),
        
        Category(name: "Sports", items: [
            Item(name: "Football"), Item(name: "Basketball"), Item(name: "Tennis"),
            Item(name: "Volleyball"), Item(name: "Swimming"), Item(name: "Boxing"),
            Item(name: "Running"), Item(name: "Cycling"), Item(name: "Karate"),
            Item(name: "Baseball")
        ]),
        
        Category(name: "Colors", items: [
            Item(name: "Red"), Item(name: "Blue"), Item(name: "Green"),
            Item(name: "Yellow"), Item(name: "Black"), Item(name: "White"),
            Item(name: "Purple"), Item(name: "Orange"), Item(name: "Pink"),
            Item(name: "Gray")
        ]),
        
        Category(name: "Jobs", items: [
            Item(name: "Doctor"), Item(name: "Engineer"), Item(name: "Teacher"),
            Item(name: "Designer"), Item(name: "Programmer"), Item(name: "Pilot"),
            Item(name: "Chef"), Item(name: "Driver"), Item(name: "Artist"),
            Item(name: "Nurse")
        ]),
        
        Category(name: "Technology", items: [
            Item(name: "Computer"), Item(name: "Smartphone"), Item(name: "Tablet"),
            Item(name: "Laptop"), Item(name: "Headphones"), Item(name: "Camera"),
            Item(name: "Drone"), Item(name: "Monitor"), Item(name: "Keyboard"),
            Item(name: "Mouse")
        ]),
        
        Category(name: "Cars", items: [
            Item(name: "BMW"), Item(name: "Mercedes"), Item(name: "Audi"),
            Item(name: "Tesla"), Item(name: "Toyota"), Item(name: "Honda"),
            Item(name: "Ford"), Item(name: "Chevrolet"), Item(name: "Volkswagen"),
            Item(name: "Hyundai")
        ]),
        
        Category(name: "Plants", items: [
            Item(name: "Rose"), Item(name: "Tulip"), Item(name: "Lily"),
            Item(name: "Orchid"), Item(name: "Sunflower"), Item(name: "Lavender"),
            Item(name: "Cactus"), Item(name: "Fern"), Item(name: "Bamboo"),
            Item(name: "Daisy")
        ]),
        
        Category(name: "Birds", items: [
            Item(name: "Eagle"), Item(name: "Parrot"), Item(name: "Sparrow"),
            Item(name: "Owl"), Item(name: "Penguin"), Item(name: "Falcon"),
            Item(name: "Crow"), Item(name: "Flamingo"), Item(name: "Seagull"),
            Item(name: "Peacock")
        ]),
        
        Category(name: "Drinks", items: [
            Item(name: "Water"), Item(name: "Tea"), Item(name: "Coffee"),
            Item(name: "Juice"), Item(name: "Milk"), Item(name: "Soda"),
            Item(name: "Energy Drink"), Item(name: "Smoothie"), Item(name: "Lemonade"),
            Item(name: "Hot Chocolate")
        ]),
        
        Category(name: "Desserts", items: [
            Item(name: "Cake"), Item(name: "Cookie"), Item(name: "Brownie"),
            Item(name: "Ice Cream"), Item(name: "Donut"), Item(name: "Pudding"),
            Item(name: "Cheesecake"), Item(name: "Muffin"), Item(name: "Tiramisu"),
            Item(name: "Macaron")
        ]),
        
        Category(name: "Musical Instruments", items: [
            Item(name: "Guitar"), Item(name: "Piano"), Item(name: "Violin"),
            Item(name: "Drums"), Item(name: "Flute"), Item(name: "Saxophone"),
            Item(name: "Trumpet"), Item(name: "Harp"), Item(name: "Cello"),
            Item(name: "Bass")
        ]),
        
        Category(name: "Body Parts", items: [
            Item(name: "Head"), Item(name: "Arm"), Item(name: "Leg"),
            Item(name: "Hand"), Item(name: "Foot"), Item(name: "Eye"),
            Item(name: "Ear"), Item(name: "Nose"), Item(name: "Mouth"),
            Item(name: "Back")
        ]),
        
        Category(name: "Weather", items: [
            Item(name: "Sunny"), Item(name: "Rainy"), Item(name: "Cloudy"),
            Item(name: "Windy"), Item(name: "Stormy"), Item(name: "Snowy"),
            Item(name: "Foggy"), Item(name: "Humid"), Item(name: "Hot"),
            Item(name: "Cold")
        ]),
        
        Category(name: "Planets", items: [
            Item(name: "Mercury"), Item(name: "Venus"), Item(name: "Earth"),
            Item(name: "Mars"), Item(name: "Jupiter"), Item(name: "Saturn"),
            Item(name: "Uranus"), Item(name: "Neptune"), Item(name: "Pluto"),
            Item(name: "Moon")
        ]),
        
        Category(name: "Ocean Life", items: [
            Item(name: "Shark"), Item(name: "Dolphin"), Item(name: "Whale"),
            Item(name: "Octopus"), Item(name: "Seal"), Item(name: "Crab"),
            Item(name: "Jellyfish"), Item(name: "Turtle"), Item(name: "Starfish"),
            Item(name: "Sea Horse")
        ]),
        
        Category(name: "Insects", items: [
            Item(name: "Ant"), Item(name: "Bee"), Item(name: "Butterfly"),
            Item(name: "Mosquito"), Item(name: "Beetle"), Item(name: "Spider"),
            Item(name: "Fly"), Item(name: "Dragonfly"), Item(name: "Wasp"),
            Item(name: "Ladybug")
        ]),
        
        Category(name: "Clothes", items: [
            Item(name: "Shirt"), Item(name: "T-Shirt"), Item(name: "Pants"),
            Item(name: "Jacket"), Item(name: "Shoes"), Item(name: "Hat"),
            Item(name: "Socks"), Item(name: "Scarf"), Item(name: "Gloves"),
            Item(name: "Coat")
        ]),
        
        Category(name: "Kitchen Items", items: [
            Item(name: "Fork"), Item(name: "Knife"), Item(name: "Spoon"),
            Item(name: "Plate"), Item(name: "Cup"), Item(name: "Pan"),
            Item(name: "Pot"), Item(name: "Oven"), Item(name: "Kettle"),
            Item(name: "Blender")
        ]),
        
        Category(name: "Furniture", items: [
            Item(name: "Table"), Item(name: "Chair"), Item(name: "Sofa"),
            Item(name: "Bed"), Item(name: "Wardrobe"), Item(name: "Desk"),
            Item(name: "Bookshelf"), Item(name: "Drawer"), Item(name: "Couch"),
            Item(name: "Lamp")
        ]),
        
        Category(name: "Shapes", items: [
            Item(name: "Circle"), Item(name: "Square"), Item(name: "Triangle"),
            Item(name: "Rectangle"), Item(name: "Pentagon"), Item(name: "Hexagon"),
            Item(name: "Octagon"), Item(name: "Oval"), Item(name: "Star"),
            Item(name: "Diamond")
        ]),
        
        Category(name: "Tools", items: [
            Item(name: "Hammer"), Item(name: "Screwdriver"), Item(name: "Wrench"),
            Item(name: "Drill"), Item(name: "Saw"), Item(name: "Pliers"),
            Item(name: "Tape Measure"), Item(name: "Level"), Item(name: "Chisel"),
            Item(name: "Mallet")
        ]),
        
        Category(name: "Fantasy Creatures", items: [
            Item(name: "Dragon"), Item(name: "Elf"), Item(name: "Dwarf"),
            Item(name: "Orc"), Item(name: "Fairy"), Item(name: "Goblin"),
            Item(name: "Giant"), Item(name: "Wizard"), Item(name: "Troll"),
            Item(name: "Griffin")
        ]),
        
        Category(name: "Mythology", items: [
            Item(name: "Zeus"), Item(name: "Hades"), Item(name: "Poseidon"),
            Item(name: "Thor"), Item(name: "Odin"), Item(name: "Hera"),
            Item(name: "Aphrodite"), Item(name: "Ra"), Item(name: "Anubis"),
            Item(name: "Loki")
        ]),
        
        Category(name: "Apps", items: [
            Item(name: "Instagram"), Item(name: "Twitter"), Item(name: "TikTok"),
            Item(name: "YouTube"), Item(name: "WhatsApp"), Item(name: "Spotify"),
            Item(name: "Snapchat"), Item(name: "Facebook"), Item(name: "Reddit"),
            Item(name: "Pinterest")
        ]),
        
        Category(name: "Games", items: [
            Item(name: "Minecraft"), Item(name: "Fortnite"), Item(name: "GTA V"),
            Item(name: "Zelda"), Item(name: "Call of Duty"), Item(name: "FIFA"),
            Item(name: "League of Legends"), Item(name: "Valorant"), Item(name: "Elden Ring"),
            Item(name: "Skyrim")
        ]),
        
        Category(name: "Languages", items: [
            Item(name: "English"), Item(name: "Turkish"), Item(name: "Spanish"),
            Item(name: "French"), Item(name: "German"), Item(name: "Italian"),
            Item(name: "Russian"), Item(name: "Japanese"), Item(name: "Korean"),
            Item(name: "Arabic")
        ]),
        
        Category(name: "Materials", items: [
            Item(name: "Wood"), Item(name: "Metal"), Item(name: "Plastic"),
            Item(name: "Glass"), Item(name: "Stone"), Item(name: "Iron"),
            Item(name: "Copper"), Item(name: "Silver"), Item(name: "Gold"),
            Item(name: "Cotton")
        ]),
        
        Category(name: "Music Genres", items: [
            Item(name: "Pop"), Item(name: "Rock"), Item(name: "Jazz"),
            Item(name: "Classical"), Item(name: "Rap"), Item(name: "Hip Hop"),
            Item(name: "Country"), Item(name: "EDM"), Item(name: "Metal"),
            Item(name: "Blues")
        ]),
        
        Category(name: "Toys", items: [
            Item(name: "Doll"), Item(name: "Car Toy"), Item(name: "Puzzle"),
            Item(name: "Lego"), Item(name: "Ball"), Item(name: "Robot"),
            Item(name: "Yo-Yo"), Item(name: "Kite"), Item(name: "Teddy Bear"),
            Item(name: "Rubik's Cube")
        ]),
        
        Category(name: "Beverages", items: [
            Item(name: "Cola"), Item(name: "Latte"), Item(name: "Mocha"),
            Item(name: "Iced Tea"), Item(name: "Espresso"), Item(name: "Milkshake"),
            Item(name: "Herbal Tea"), Item(name: "Ayran"), Item(name: "Soda Water"),
            Item(name: "Frappe")
        ]),
        
        Category(name: "Space Objects", items: [
            Item(name: "Comet"), Item(name: "Asteroid"), Item(name: "Nebula"),
            Item(name: "Galaxy"), Item(name: "Black Hole"), Item(name: "Star"),
            Item(name: "Supernova"), Item(name: "Meteor"), Item(name: "Planet"),
            Item(name: "Quasar")
        ]),
        
        Category(name: "Tastes", items: [
            Item(name: "Sweet"), Item(name: "Sour"), Item(name: "Bitter"),
            Item(name: "Salty"), Item(name: "Umami"), Item(name: "Spicy"),
            Item(name: "Savory"), Item(name: "Creamy"), Item(name: "Tangy"),
            Item(name: "Mild")
        ]),
        
        Category(name: "Human Feelings", items: [
            Item(name: "Happy"), Item(name: "Sad"), Item(name: "Angry"),
            Item(name: "Excited"), Item(name: "Calm"), Item(name: "Tired"),
            Item(name: "Fearful"), Item(name: "Lonely"), Item(name: "Proud"),
            Item(name: "Confused")
        ]),
        
        Category(name: "Transportation", items: [
            Item(name: "Car"), Item(name: "Bus"), Item(name: "Train"),
            Item(name: "Plane"), Item(name: "Bike"), Item(name: "Scooter"),
            Item(name: "Ship"), Item(name: "Tram"), Item(name: "Helicopter"),
            Item(name: "Subway")
        ]),
        
        Category(name: "School Items", items: [
            Item(name: "Notebook"), Item(name: "Pencil"), Item(name: "Eraser"),
            Item(name: "Ruler"), Item(name: "Calculator"), Item(name: "Pen"),
            Item(name: "Glue"), Item(name: "Backpack"), Item(name: "Sharpener"),
            Item(name: "Marker")
        ]),
        
        Category(name: "Superheroes", items: [
            Item(name: "Batman"), Item(name: "Superman"), Item(name: "Iron Man"),
            Item(name: "Spider-Man"), Item(name: "Hulk"), Item(name: "Thor"),
            Item(name: "Captain America"), Item(name: "Flash"), Item(name: "Wolverine"),
            Item(name: "Doctor Strange")
        ]),
        
        Category(name: "Historical Figures", items: [
            Item(name: "Einstein"), Item(name: "Newton"), Item(name: "Cleopatra"),
            Item(name: "Napoleon"), Item(name: "Ataturk"), Item(name: "Leonardo da Vinci"),
            Item(name: "Tesla"), Item(name: "Caesar"), Item(name: "Churchill"),
            Item(name: "Gandhi")
        ]),
    ]
}
