//
//  TabView2.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 23/08/22.
//

import SwiftUI

struct TabView2: View {
    var body: some View {
        VStack {
            Text("TAB 2")
            Text("We can get system-wide settings like color scheme(light or dark), size class, device locale using @Environment property wrapper. The full list for the values/settings we can access are here:")
        }
    }
}

struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}
