//
//  SecondView.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 19/08/22.
//

import SwiftUI

struct SecondView: View {
   
    @EnvironmentObject var accountInfo: AccountInfo

    var body: some View {
        VStack {
            Text("Phone No: \(accountInfo.phoneNo)")
            TextField("Enter Phone No", text: $accountInfo.phoneNo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            NavigationLink("Go to ThirdView", destination: ThirdView())
        }
    }
        
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
