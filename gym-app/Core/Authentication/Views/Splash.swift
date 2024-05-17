//
//  Splash.swift
//  gym-app
//
//  Created by Natalie Ramirez on 5/15/24.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        ZStack {
            Color("Navy")
            VStack {
                Image("gym-icon")
                    .resizable()
                    .frame(width: 120, height: 120)
                VStack {
                    Text("gym")
                        .foregroundStyle(Color("Light Blue"))
                        .bold()
                        .font(.custom(
                                "Avenir",
                                fixedSize: 60))
                    Text("link")
                        .foregroundStyle(Color("Light Blue"))
                        .bold()
                        .font(.custom(
                                "Avenir",
                                fixedSize: 60))
                }
                ZStack {
                    VStack {
                        Button(action: {
                            print("signup tapped")
                        }) {
                            Text("Sign Up")
                                .foregroundColor(.blue)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.3)))
                        }
                        Button(action: {
                            print("login tapped")
                        }) {
                            Text("Login")
                                .foregroundColor(.blue)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.3)))
                        }
                    }
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Splash()
}
