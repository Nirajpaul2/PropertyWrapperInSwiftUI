//
//  CustomBinding.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 20/08/22.
//

import SwiftUI




//MARK: - Example 2
struct CustomBinding: View {
    @State private var firstToggle = false
    @State private var secondToggle = false
    
    var body: some View {
        let firstBinding = Binding(
            get: { self.firstToggle },
            set: {
                self.firstToggle = $0
                
                if $0 == true {
                    self.secondToggle = false
                }
            }
        )
        
        let secondBinding = Binding(
            get: { self.secondToggle },
            set: {
                self.secondToggle = $0
                
                if $0 == true {
                    self.firstToggle = false
                }
            }
        )
        
        return VStack {
            Toggle(isOn: firstBinding) {
                Text("First toggle")
            }
            
            Toggle(isOn: secondBinding) {
                Text("Second toggle")
            }
        }
    }
}

//MARK: - Example 1
struct CustomBinding1: View {
    @State private var username = ""

        var body: some View {
            let binding = Binding(
                get: { self.username },
                set: { self.username = $0 }
            )

            return VStack {
                Text(username)
                TextField("Enter your name", text: binding)
            }
        }
}

struct CustomBinding_Previews: PreviewProvider {
    static var previews: some View {
        CustomBinding()
    }
}
