//
//  ContentView.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 17/08/22.
//

import SwiftUI

/// @AppStorage Property wrapper
/// @AppStorage reads and writes values from UserDefaults, this wrapper effectively watches a key in UserDefaults, and will refresh your UI if that key changes.
///

struct AppStorageEx: View {
    //MARK: - Property
    @AppStorage("username") var username: String = "@Niraj"
    
    
    //MARK: - Body
    var body: some View {
        VStack {
            Text("Welcome, \(username)!")
            
            Button("Log in") {
                username = "@Team"
            }
        }
    }
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageEx()
    }
}
