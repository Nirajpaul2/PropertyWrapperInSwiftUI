//
//  ParentV.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 23/08/22.
//

import SwiftUI

struct ParentV: View {
    
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
            ChildV()
        }
    }
}

struct ParentV_Previews: PreviewProvider {
    static var previews: some View {
        ParentV()
    }
}
