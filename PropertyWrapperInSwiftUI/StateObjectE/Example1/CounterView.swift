//
//  StateObjectE.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 20/08/22.
//

import SwiftUI

struct RandomNumberView: View {
    @State var randomNumber = 0

    var body: some View {
        VStack {
            Text("Random number is: \(randomNumber)")
            Button("Randomize number") {
                randomNumber = (0..<1000).randomElement()!
            }
            
            CounterView()
                .padding(.top, 50)
            
        }.padding(.bottom)
    }
}

struct CounterView: View {
    
    //@StateObject property wrapper is responsible for keeping the object alive throughout the life of our app.

     @StateObject var viewModel = CounterViewModel()
     //@ObservedObject var viewModel = CounterViewModel()

       var body: some View {
           VStack {
               Text("Count is: \(viewModel.count)")
               Button("Increment Counter") {
                   viewModel.incrementCounter()
               }
           }
       }
}

struct RandomNumberView_Previews: PreviewProvider {
    static var previews: some View {
        RandomNumberView()
    }
}
