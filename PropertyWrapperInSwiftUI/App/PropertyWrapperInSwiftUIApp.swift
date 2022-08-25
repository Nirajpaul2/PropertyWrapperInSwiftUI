//
//  PropertyWrapperInSwiftUIApp.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 17/08/22.
//

import SwiftUI

@main

//MARK: - Example for Enviroment
//struct PropertyWrapperInSwiftUIApp: App {
//    var body: some Scene {
//        WindowGroup {
//                EnviromentExp()
//                .environment(\.multilineTextAlignment, .leading)
//                .environment(\.lineLimit, 2)
//                .environment(\.lineSpacing, 20)
//                //.environment(\.font, .largeTitle)
//                .environment(\.colorScheme, .dark)
//           // EnviromentObj(studentInfo: StudentModel(), accountInfo: AccountInfo())
//        }
//    }
//}

//MARK: - Example for Binding
//struct PropertyWrapperInSwiftUIApp: App {
//    var body: some Scene {
//        WindowGroup {
//                BindingExp()
//        }
//    }
//}

//MARK: - @UIApplicationDelegateAdaptor binding
struct PropertyWrapperInSwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SwiftUIView()
        }
    }
}
