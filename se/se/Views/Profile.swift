//
//  Profile.swift
//  se
//
//  Created by Ayush Khurana on 11/11/22.
//

import SwiftUI



struct Profile: View {
    var ContentsofProfile: [ProfileItems]
    var body: some View {
        ScrollView{
            
            ZStack {
                Color(#colorLiteral(red: 0.9021687508, green: 0.1747280955, blue: 0.318703413, alpha: 1))
                    .frame(width: 600, height: 600)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -50, y: -350)
                Color(#colorLiteral(red: 0.9617715478, green: 0.1775636971, blue: 0.3371206522, alpha: 1))
                    .frame(width: 300, height: 300)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -100, y: -250)

                HStack {
                    Text("Profile")
                        .bold()
                        .font(.title)
                    Spacer()
                    Text("Close")
                        .font(.title2)
                }
                
                .padding(.all, 20)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, -250)
                
                List(ContentsofProfile){
                    ProfileItems in ListRowww(eachItem: ProfileItems)
                }.padding(.top, 270)
                    .padding(.leading, 75).font(.headline)
                
                
            }
            HStack {
                Text("Profile")
                    .bold()
                    .font(.title)
                Spacer()
                Text("Close")
                    .font(.title2)
            }
            Text("Profile Viewer")
                .bold()
                .font(.title)

            Spacer()
        }
        
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct ListRowww: View{
    var eachItem: ProfileItems
    var body: some View{
        HStack{
            Text(eachItem.name)
        }
    }
}

var ProfilePageList =
[
    ProfileItems(id: 1, name: "Name"),
    ProfileItems(id: 2, name: "email"),
    ProfileItems(id: 3, name: "Your Orders"),
    ProfileItems(id: 4, name: "Refer and earn"),
    ProfileItems(id: 5, name: "Help"),
    ProfileItems(id: 6, name: "Log Out"),
]

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(ContentsofProfile: ProfilePageList)
    }
}
