//
//  NonConstructibleChange.swift
//  AlgoExpert
//
//  Created by Miguel Otero on 16/08/22.
// https://www.algoexpert.io/questions/non-constructible-change

import Foundation
import UIKit

//*****************imcomplete**************************
struct NonConstructibleChange {
    static func test() {
        //case 1
        var coins = [1,2,5]
        let nonConstructibleChange = NonConstructibleChange()
        print(nonConstructibleChange.nonConstructibleChange(&coins)) //4
        
        //case 2
//        coins = [5, 7, 1, 1, 2, 3, 22]
//        print(nonConstructibleChange.nonConstructibleChange(&coins)) //20
    }
    func nonConstructibleChange(_ coins: inout [Int]) -> Int {
        coins = coins.sorted()
        let sumaMax = coins.reduce(0,+)
        print(sumaMax)
        return -1
    }
}
