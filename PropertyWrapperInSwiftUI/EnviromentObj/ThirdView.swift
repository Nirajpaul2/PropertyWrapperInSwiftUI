//
//  ThirdView.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 19/08/22.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var studentData: StudentModel
    @EnvironmentObject var accountInfo: AccountInfo

    var body: some View {
        Text("Student Info: \(studentData.firstName) \(studentData.lastName)")
        Text("Account Info: \(accountInfo.phoneNo)")

        TextField("Enter Phone No", text: $accountInfo.phoneNo)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
