//
//  ValidateSubsequence.swift
//  AlgoExpert
//
//  Created by Miguel on 12/01/22.
//

import Foundation

struct ValidateSubsequence {
    static func test() {

        let array =  [1, 1, 1, 1, 1]
        let sequence = [1, 1, 1]
        
        let result = ValidateSubsequence.isValidSubsequence(array, sequence)
        print(result)
    }
    static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
        // Write your code here.

        let filter = array.filter {item in sequence.contains(item)}
        if filter.count < sequence.count {
            return false
        }
        for (index,item) in sequence.enumerated() {
            if item != filter[index] {
                return false
            }
        }
        return true
    }
}

