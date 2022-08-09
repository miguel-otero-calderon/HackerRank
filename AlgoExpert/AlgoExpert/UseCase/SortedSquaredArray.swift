//
//  SortedSquaredArray.swift
//  AlgoExpert
//
//  Created by Miguel on 13/01/22.
//

import Foundation

struct SortedSquaredArray {
    static func test() {

        let array =  [1,2,3,4,5,6,7,8,9]
        
        let result = SortedSquaredArray.sortedSquaredArray(array)
        print(result)
    }
    static func sortedSquaredArray(_ array: [Int]) -> [Int] {
        // Write your code here.
        return array.map{item in item*item}.sorted()
    }
}
