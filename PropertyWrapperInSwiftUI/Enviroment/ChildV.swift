//
//  ChildV.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 23/08/22.
//

import SwiftUI

struct ChildV: View {
    //MARK: - Property
    @Environment(\.presentationMode) var presentation

    //MARK: - Body
    var body: some View {
           Button("Dismiss") {
               self.presentation.wrappedValue.dismiss()
           }
       }
}

struct ChildV_Previews: PreviewProvider {
    static var previews: some View {
        ChildV()
    }
}
