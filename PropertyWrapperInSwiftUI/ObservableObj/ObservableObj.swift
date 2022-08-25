//
//  ObservableObj.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 18/08/22.
//

import SwiftUI

//MARK: - Example 3
struct ObservableObj3: View {
    
    //MARK: - Property
    @ObservedObject var viewModel = CounterViewModel()

    //MARK: - Body
       var body: some View {
           VStack {
               Text("Count is: \(viewModel.count)")
               Button("Increment Counter") {
                   viewModel.incrementCounter()
               }
           }
       }
}


//MARK: - Example 2
struct ObservableObj2: View {
    
    //MARK: - Property
    @ObservedObject var studentInfo: ProductModel
    
    //MARK: - Body
    var body: some View {
        VStack {
            
            List() {
                ForEach(studentInfo.addProduct, id: \.self) { item in
                    Text(item)
                }
            }
            
            Button {
                studentInfo.addProduct.append("Niraj Paul")
            } label: {
                Text("ADD")
            }.padding()
        }
    }
}

//MARK: - Example 1
struct ObservableObj: View {
    
    //MARK: - Peoperty
    @ObservedObject var studentInfo: StudentModel
    
    //MARK: - Body
    var body: some View {
       
        VStack {
            Text("Here is FirstName: \(studentInfo.firstName)")
            TextField("Enter Fname", text: $studentInfo.firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}

struct ObservableObj_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObj(studentInfo: StudentModel())
    }
}
