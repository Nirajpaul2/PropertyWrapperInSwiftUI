//
//  EnviromentExp.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 23/08/22.
//

import SwiftUI

struct EnviromentExp: View {
    var body: some View {
        TabView {
            TabView1()
            .tabItem({
              Text("TabView 1")
            })
            TabView2()
            .tabItem({
              Text("TabView 2")
            })
            TabView3()
            .tabItem({
              Text("TabView 3")
            })
        }
    }
}

struct EnviromentExp_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentExp()
    }
}
