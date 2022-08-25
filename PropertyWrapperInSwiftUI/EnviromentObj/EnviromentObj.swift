//
//  EnviromentObj.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 19/08/22.
//

import SwiftUI

struct EnviromentObj: View {
    
    //MARK: - Property
    @ObservedObject var studentInfo: StudentModel
    @ObservedObject var accountInfo: AccountInfo
    
    //MARK: - Body
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Here is FirstName: \(studentInfo.firstName)")
                TextField("Enter Fname", text: $studentInfo.firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Text("Here is LastName: \(studentInfo.lastName)")
                TextField("Enter Lname", text: $studentInfo.lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                NavigationLink("Go to secondView", destination: SecondView())
            } //: VStack
           
        } //: NAV
        .environmentObject(studentInfo)
        .environmentObject(accountInfo)
    }
}

//MARK: - Preview
struct EnviromentObj_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObj(studentInfo: StudentModel(), accountInfo: AccountInfo())
    }
}
