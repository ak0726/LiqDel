//
//  Login.swift
//  se
//
//  Created by Ayush Khurana on 11/21/22.
//


import SwiftUI



@available(iOS 16.0, *)
struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
            NavigationView{
                ZStack{
                    Color.blue.ignoresSafeArea()
                    Circle()
                        .scale(1.7)
                        .foregroundColor(.white.opacity(0.15))
                    
                    Circle()
                        .scale(1.35)
                        .foregroundColor(.white)
                    
                    VStack{
                        Text("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("Username", text: $username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .backgroundStyle(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongUsername))
                        
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .backgroundStyle(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongPassword))
                        
                        
                        Button("Login"){
                            authenticateUser(username: username, password: password)
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                        NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen){
                            //EmptyView()
                        }
                        
                    }
                    
                }.navigationBarHidden(true)
            }
        
    }
    func authenticateUser(username: String, password: String)
    {
        if username.lowercased() == "ayush2607" {
            wrongUsername = 0
            if password.lowercased() == "abcd1234"{
                wrongPassword = 0
                showingLoginScreen = true
            }else{
                wrongPassword = 2
            }
        }else{
            wrongUsername = 2
        }
    }
}

@available(iOS 16.0, *)
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
