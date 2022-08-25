//
//  ContentView_UserProgress.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 20/08/22.
//

import SwiftUI


//MARK: - Example 2

//MARK: - Child View
struct ChildView: View {
    @ObservedObject var progress: UserProgressModel

    var body: some View {
        Button("Increase Score(I'm in Child view)") {
            progress.score += 1
        }
    }
}

//MARK: - Parent View
struct ParentView: View {
    @StateObject var progress = UserProgressModel()

       var body: some View {
           VStack {
               Text("Your score is(I'm in Parent View) \(progress.score)")
               ChildView(progress: progress)
           }
       }
}


//MARK: - Example 1

//MARK: - Child View
struct InnerView: View {
    @EnvironmentObject var progress: UserProgressModel

    var body: some View {
        Button("Increase Score(I'm in Child view)") {
            progress.score += 1
        }
    }
}

//MARK: - Parent View
struct ContentView_UserProgress: View {
    @StateObject var progress = UserProgressModel()

       var body: some View {
           VStack {
               Text("Your score is(I'm in Parent View) \(progress.score)")
               InnerView()
           }
           .environmentObject(progress)
       }
        
}


struct ParentView_UserProgress_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}

//struct ContentView_UserProgress_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView_UserProgress()
//    }
//}
