//
//  ContentView.swift
//  se
//
//  Created by Ayush Khurana on 9/10/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct NavBar: View {
    @State private var selection = 1
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeView().tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }.tag(1)
            CheckOut(ContentsofCheckOut: CheckPageList).tabItem {
                VStack {
                    Image(systemName: "cart.fill")
                    Text("Favorite")
                }
            }.tag(2)
            Profile(ContentsofProfile: ProfilePageList).tabItem {
                VStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            }.tag(3)
            Login().tabItem {
                VStack {
                    Image(systemName: "circle.fill")
                    Text("Login")
                }
            }.tag(4)
        }
        .accentColor(.red)
    }
}

@available(iOS 16.0, *)
struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
