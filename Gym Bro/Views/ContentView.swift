//
//  ContentView.swift
//  Gym Bro
//
//  Created by Abhinav Kompella on 1/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            ZStack {
                Color.background
                    .ignoresSafeArea()
                VStack {
                    Text("Gym Bro - Workout Planner")
                        .foregroundStyle(.white)
                    
                    Text("TRACK YOUR FITNESS GOALS")
                        .foregroundStyle(.white)
                        .font(.system(size: 45))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Image("landingPage")
                        .resizable()
                        .frame(width: 240, height: 320)
                        .cornerRadius(10)
                        .padding(3)
                        .background(.white)
                        .cornerRadius(12)
                    
                    Spacer().frame(height: 60)
                    
                    Button(action: {}, label: {
                        Text("START YOUR JOURNEY")
                            .padding(EdgeInsets(top: 18, leading: 60, bottom: 18, trailing: 60))
                            .foregroundColor(.black)
                            .fontWeight(.heavy)
                    })
                    .background(Color.button)
                    .cornerRadius(20)
                    
                    HStack {
                        Text("ALREADY HAVE AN ACCOUNT?")
                            .foregroundStyle(.white)
                            .font(.system(size: 12))
                        
                        NavigationLink(destination: Login().navigationBarBackButtonHidden(true)) {
                            let _ = print("Link")
                            Text("LOGIN")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 12))
                        }
                    }
                    .padding(EdgeInsets(top: 6, leading: 0, bottom: 0, trailing: 0))
                }
            }
        })
    }
}

#Preview {
    ContentView()
}
