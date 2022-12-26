//
//  OnBoardingPage.swift
//  se
//
//  Created by Ayush Khurana on 9/10/22.
//

import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "discover", title: "Discover places near you", descrip: "We make it simple to find the Liquor you crave. Enter your  home addresse and let us do the rest."),
    Page(id: 1, image: "choose", title: "Choose liquor you want to drink", descrip: "We make it simple to find the liquor you crave. Enter your  home addresse and let us do the rest."),
    Page(id: 2, image: "pick", title: "Your Drink is on the way", descrip: "We make it simple to find the Liquor you crave. Enter your  home addresse and let us do the rest.")
]
