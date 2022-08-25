//
//  TabView1.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 23/08/22.
//

import SwiftUI

struct TabView1: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("TAB 1")
                NavigationLink("SecondView") {
                    ParentV()
                }
                Text("We can get system-wide settings like color scheme(light or dark), size class, device locale using @Environment property wrapper. The full list for the values/settings we can access are here:")
            }
        }
    }
}

struct TabView1_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
    }
}
