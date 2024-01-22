//
//  dashboard.swift
//  Gym Bro
//
//  Created by Abhinav Kompella on 1/20/24.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75, height: 75)
                        .cornerRadius(50)
                        .padding(3)
                        .background(.white)
                        .cornerRadius(70)
                        .padding(.horizontal, 10)
                    
                    VStack (alignment: .leading){
                        Text("WELCOME BACK,")
                            .foregroundStyle(Color.gray)
                            .font(.system(size: 15))
                        
                        Text("ABHINAV KOMPELLA")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                    }
                    
                    Spacer()
                }
                
                HStack {
                    SmallWidget(image: "figure.walk", mainText: "9,000", titleText: "STEPS")
                    SmallWidget(image: "flame.fill", mainText: "3,000", titleText: "CALORIES")
                    SmallWidget(image: "timer", mainText: "60", titleText: "MINUTES")
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Dashboard()
}

struct SmallWidget: View {
    
    var image: String
    var mainText: String
    var titleText: String
    
    var body: some View {
        VStack {
            Image(systemName: image)
                .font(.system(size: 20))
                .foregroundStyle(Color.button)
            
            Text(mainText)
                .padding(.top, 3)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(.heavy)
            
            Text(titleText)
                .foregroundStyle(.gray)
                .font(.system(size: 15))
            
            
        }
        .frame(width: 120, height: 120)
        .background(.widget)
        .cornerRadius(9)
    }
}
