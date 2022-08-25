//
//  BindingExp.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 17/08/22.
//

import SwiftUI

struct BindingExp: View {

    //MARK: - Property
    @State private var showingAddUser = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            Button {
                showingAddUser = true
            } label: {
                Text("Present Action Sheet")
            }
            
        }
        .sheet(isPresented: $showingAddUser) {
            AddView(isPresented: $showingAddUser)
        }
    }
}

//MARK: - Preview
struct BindingExp_Previews: PreviewProvider {
    static var previews: some View {
        BindingExp()
    }
}
