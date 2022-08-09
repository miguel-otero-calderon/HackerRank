//
//  MinimumWaitingTime.swift
//  AlgoExpert
//
//  Created by Miguel on 22/01/22.
//

import Foundation
struct MinimumWaitingTime {
    static func test() {
        var queries =  [3,2,1,2,6]
        let result = minimumWaitingTime(&queries)
        print(result)
    }
    static func minimumWaitingTime(_ queries: inout [Int]) -> Int {
        queries = queries.sorted()
        queries.removeLast()
        var calculate = 0
        for (index,_) in queries.enumerated() {
            for (idx, item) in queries.enumerated() {
                if idx <= index {
                    calculate = calculate + item
                }
            }
        }
        return calculate
      }
}

