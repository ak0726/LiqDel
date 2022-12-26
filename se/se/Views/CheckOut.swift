//
//  CheckOut.swift
//  se
//
//  Created by Ayush Khurana on 9/10/22.
//

import SwiftUI

struct CheckOut: View {
    var ContentsofCheckOut: [CheckPage]
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
                    Text("Order")
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
                
                List(ContentsofCheckOut){
                    CheckPage in ListRow(eachItem: CheckPage)
                }.padding(.top, 270)
                    .padding(.leading, 75)
                    .font(.headline)
                
            }
           
            Text("Place Order")
                .bold()
                .font(.title)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

/*struct Details: Identifiable {
  let id    : Int
  let name  : String
}

var detailsList = [ Details(id: 0,name: "View Bill"),
Details(id: 1,name: "Apply Coupon"),
Details(id: 2,name: "Confirm Order"),
Details(id: 3,name: "PAyment Option"),]*/

struct ListRow: View{
    var eachItem: CheckPage
    var body: some View{
        HStack{
            Text(eachItem.name)
        }
    }
}

var CheckPageList =
[
    CheckPage(id: 1, name: "View Bill"),
    CheckPage(id: 2, name: "Apply Coupon"),
    CheckPage(id: 3, name: "Confirm Order"),
    CheckPage(id: 4, name: "Payment Option"),
]



struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut(ContentsofCheckOut: CheckPageList)
    }
}
