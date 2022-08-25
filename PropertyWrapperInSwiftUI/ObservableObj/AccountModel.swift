//
//  StudentInfo.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Purplle on 18/08/22.
//

import Foundation

//MARK: - Student Model
class StudentModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
}

//MARK: - AccountInfo Model
class AccountInfo: ObservableObject {
    @Published var phoneNo: String = ""
}

//MARK: - ProductModel

class ProductModel: ObservableObject {
    @Published var addProduct: [String] = []
}

