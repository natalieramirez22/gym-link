//
//  LoginView.swift
//  gym-app
//
//  Created by Natalie Ramirez on 5/3/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
//    @EnvironmentObject var viewModel: AuthViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // image
//                Image("house-hunters-logo")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 100, height: 120)
//                    .padding(.vertical, 32)
                
                // form fields
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email Address", placeholder: "uniqname@umich.edu")
                        
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                .foregroundColor(.green)
                
                // sign in button
                
                Button {
                    print("Log user in..")
//                    Task {
//                        try await viewModel.signIn(withEmail: email, password: password)
//                    }
                } label: {
                    NavigationLink(destination: HomeView()) {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                }
                .background(Color(.systemBlue))
                .cornerRadius(30)
                .padding(.top, 24)
                
                Spacer()
                
                // other
                
                NavigationLink {
                    ProfileView()
                } label: {
                    HStack(spacing: 2) {
                        Text("See account information")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                }
                
                Spacer ()
                
                // sign up button
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 2) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                }

            }
        }
    }
}

#Preview {
    LoginView()
}

