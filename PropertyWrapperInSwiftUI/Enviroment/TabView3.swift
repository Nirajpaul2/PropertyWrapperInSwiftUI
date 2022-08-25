//
//  TabView3.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 23/08/22.
//

import SwiftUI

struct TabView3: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var isLandscape: Bool {
        verticalSizeClass == .compact
    }
    
    var body: some View {
        
        Text(isLandscape ? "I am landscape" : "I am potrate")
            .font(.title.bold())
            .foregroundColor(isLandscape ? .red : .blue)
            .padding()
    }
}

struct TabView3_Previews: PreviewProvider {
    static var previews: some View {
        TabView3()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
