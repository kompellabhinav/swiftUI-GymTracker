//
//  Login.swift
//  Gym Bro
//
//  Created by Abhinav Kompella on 1/20/24.
//

import SwiftUI

enum Route {
    case view
}

struct Login: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var navigationPath: [Route] = []
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Color.background
                    .ignoresSafeArea()
                VStack {
                    
                    Spacer()
                        .frame(height: 60)
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 150, height: 150)
                    
                    Spacer()
                        .frame(height: 60)
                    
                    Text("Sign Up")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    LoginField(variable: email, placeholder: "Email")
                    
                    LoginField(variable: password, placeholder: "Password")
                        .padding(10)
                    
                    Spacer()
                        .frame(height: 90)
                    
                    
                    Button(action: {
                        navigationPath.append(.view)
                    }, label: {
                        Text("Login")
                            .padding(EdgeInsets(top: 18, leading: 20, bottom: 18, trailing: 20))
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .frame(width: 200)
                    })
                    .background(Color.button)
                    .cornerRadius(20)
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .view:
                            Dashboard().navigationBarBackButtonHidden(true)
                        }
                    }
                    
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Login()
}

struct LoginField: View {
    
    @State var variable: String
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $variable)
            .padding(EdgeInsets(top: 9, leading: 30, bottom: 9, trailing: 60))
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 1.0))
            .frame(width: 300)
            .cornerRadius(10)
            .padding(3)
            .background(.white)
            .cornerRadius(15)
    }
}
