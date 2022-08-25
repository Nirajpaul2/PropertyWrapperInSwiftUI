//
//  FocusState.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 22/08/22.
//

import SwiftUI


//MARK: - Example 2
struct FocusStateE: View {
    @FocusState private var isEmailFocused: Bool
    @FocusState private var isPasswordFocused: Bool

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("email", text: $email, prompt: Text("email"))
                    .focused($isEmailFocused)
                SecureField("password", text: $password, prompt: Text("password"))
                    .focused($isPasswordFocused)
                
                Button("login") {
                    if email.isEmpty {
                        isEmailFocused = true
                    } else if password.isEmpty {
                        isPasswordFocused = true
                    } else {
                        isPasswordFocused = false
                        isEmailFocused = false
                        
                        login()
                    }
                }
            }
            .navigationTitle("Sign in")
        }
    }
    
    private func login() {
           // login success
        print("I am successfully login")
        
    }
}

//MARK: - Example 1
struct FocusStateE1: View {
    
    @FocusState private var isUsernameFocused: Bool
    @State private var username = "Anonymous"

       var body: some View {
           VStack {
               TextField("Enter your username", text: $username)
                   .focused($isUsernameFocused)

               Button("Toggle Focus") {
                   isUsernameFocused.toggle()
               }
          }
     }
}

//MARK: - Preview
struct FocusStateE_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateE()
    }
}
