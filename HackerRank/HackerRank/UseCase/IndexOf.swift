//
//  IndexOf.swift
//  HackerRank
//
//  Created by Miguel Otero on 9/08/22.
//https://www.udemy.com/course/draft/1201392/learn/lecture/7153176#overview

import Foundation
import UIKit
struct IndexOf {
    static func test() {
        print(IndexOf(array: [1,2,3]).execute(indexOf:1) == 0)
        print(IndexOf(array: [1,2,3]).execute(indexOf:3) == 2)
        print(IndexOf(array: [1,2,3]).execute(indexOf:5) == nil)
    }
    let array:[Int]
    init(array:[Int]) {
        self.array = array
    }
    func execute(indexOf:Int) -> Int? {
        return array.firstIndex(of: indexOf)
    }
}
