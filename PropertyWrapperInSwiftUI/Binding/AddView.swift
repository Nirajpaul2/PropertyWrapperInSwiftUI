//
//  AddView.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 17/08/22.
//

import SwiftUI

struct AddView: View {
    //MARK: - Property
    @Binding var isPresented: Bool

    //MARK: - Body
    var body: some View {
           Button("Dismiss") {
               isPresented = false
           }
       }
}

//MARK: - Preview
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(isPresented: .constant(false))
    }
}
