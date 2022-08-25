//
//  CounterModel.swift
//  PropertyWrapperInSwiftUI
//
//  Created by Niraj Paul on 20/08/22.
//

import Foundation

//MARK: - Counter Model for testing
final class CounterViewModel: ObservableObject {
    @Published var count = 0

    func incrementCounter() {
        count += 1
    }
}

//MARK: - AnotherWay to write
final class CounterViewModelTest: ObservableObject {
    private(set) var count = 0

    func incrementCounter() {
        count += 1
        objectWillChange.send()
    }
}

//MARK: - AnotherWay to write
final class CounterViewModelTest1: ObservableObject {
        var count = 0 {
        willSet {
            objectWillChange.send()
        }
    }
}
