//
//  Card.swift
//  se
//
//  Created by Ayush Khurana on 9/10/22.
//

import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price :Int
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "JackDaniel", title: "Whiskey", descrip: "Distilled and Bottled By JACK DANIEL DISTILLERY LYNCHBERG, TENNESSEE, USA",stars: 4,price: 3500 ,expand: false),
    Card(id: 1, image: "BlackLabel", title: "Scotch Whiskey", descrip: "Blended Scotch Whiskey",stars: 3,price: 3400 , expand: false),
    Card(id: 2, image: "ChivasRegal", title: "Scotch Whiskey", descrip: "Blended Scotch Whiskey Blended and Bottled in Scotland",stars: 5,price: 4800 , expand: false),
    Card(id: 3, image: "Corona", title: "Beer", descrip: "Brewed in Mexico",stars: 4,price: 250 , expand: false),
    Card(id: 4, image: "Miller", title: "Beer", descrip: "A Fine Pilsener",stars: 5,price: 180 , expand: false),
    Card(id: 5, image: "budweiser", title: "Beer", descrip: "Rice and best Barley Malt",stars: 4,price: 250, expand: false),
    Card(id: 6, image: "Absolute", title: "Flavoured Vodka", descrip: "Produced and Bottled in Sweden",stars: 3,price: 1300 , expand: false),
    Card(id: 7, image: "Oginski", title: "Vodka", descrip: "Perfect Composition",stars: 4,price: 1500, expand: false),
    Card(id: 8, image: "Smirnoff", title: "Vodka", descrip: "A PURVEYOR TO THE RUSSIAN",stars: 4,price: 700, expand: false),
    Card(id: 9, image: "OldMonk", title: "Rum", descrip: "7 years Old Blended",stars: 4,price: 560, expand: false),
    Card(id: 10, image: "Bacardi", title: "Rum", descrip: "PUERTO RICAN RUM",stars: 5,price: 1200, expand: false),
    Card(id: 11, image: "Botanist", title: "Gin", descrip: "CONCEIVED, DISTILLED & HAND-CRAFTED ON THE ISLAND OF ISLAY",stars: 4,price: 3500 , expand: false),
]

var FoodTypes = ["Whiskey","Vodka","Beer","Gin","Rum","Brandy"]
