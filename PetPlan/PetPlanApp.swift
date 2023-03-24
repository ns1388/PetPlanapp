//
//  PetPlanApp.swift
//  PetPlan
//
//  Created by Aanand Aggarwal on 3/11/23.
//

import SwiftUI

struct LoginPage: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image(systemName: "pawprint")
                    .font(.system(size: 80))
                    .foregroundColor(.green)
                
                VStack(spacing: 16) {
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .disableAutocorrection(true)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                }
                
                Button(action: {
                    // Log in action
                }) {
                    Text("Log in")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(8)
                }
                
                HStack {
                    Button(action: {
                        // Register action
                    }) {
                        Text("Register")
                            .font(.subheadline)
                            .foregroundColor(.green)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Reset password action
                    }) {
                        Text("Reset password")
                            .font(.subheadline)
                            .foregroundColor(.green)
                            .underline()
                    }
                }
            }
            .padding()
        }
    }
}
