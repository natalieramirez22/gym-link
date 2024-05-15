//
//  HomeView.swift
//  gym-app
//
//  Created by Erika Ramirez on 5/15/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Navy")
            VStack {
                // Title
                HStack {
                    // Welcome Text
                    Text("Good Morning ")
                    + Text("Natalie")
                        .bold()
                    
                    // Profile Picture Button
                    NavigationLink(destination: ProfileView()) {
                        Image("gym girl")
                            .resizable()
                            .frame(width: 50, height: 75)
                    }
                    .foregroundColor(Color("Navy"))
                    .background(Color("Light Blue"))
                    .clipShape(Circle())
                    .shadow(radius: 5)
                }
                .navigationBarTitle("Home")
                .padding(.top, 50)
                
                Spacer()
                
                // Streak count
                ZStack {
                    // Second Oval
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("Dark Gray"))
                        .frame(width: 250, height: 40)
                        .padding(.leading, 100)
                    
                    // First Oval
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("Light Blue"))
                        .frame(width: 150, height: 40)
                        .padding(.trailing, 200)
                    
                    // Text
                    HStack {
                        Text("Streak:")
                            .foregroundColor(Color("Dark Gray"))
                            .bold()
                            .font(.system(size: 24))
                        Text("5 days way to go!")
                            .foregroundColor(Color("Light Blue"))
                            .font(.system(size: 20))
                            .padding(.leading, 55)
                    }
                    
                }
                Spacer()
                
                // Saved Workouts Sliding View
                Text("Saved Workouts")
                SlidingView()
                
                Spacer()
                
            }
            .font(.title)
            .foregroundColor(Color("Light Blue"))
            .padding()
        
                
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    HomeView()
}
