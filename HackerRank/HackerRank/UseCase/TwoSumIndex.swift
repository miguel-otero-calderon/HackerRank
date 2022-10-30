//
//  TwoSum.swift
//  HackerRank
//
//  Created by Miguel Otero on 30/10/22.
// https://leetcode.com/problems/two-sum/

import Foundation
import UIKit

struct TwoSumIndex {
    static func test() {
        let array = [3,2,4]
        let target = 6
        print(twoSumIndex(array, target))
    }
    static func twoSumIndex(_ nums: [Int], _ target: Int) -> [Int] {
        for (index,number) in nums.enumerated() {
            let others = nums.suffix(nums.count - index - 1)
            if let complement = others.first { item in item + number == target } {
                let firstIndex = nums.firstIndex(of: number) ?? 0
                let secondIndex = others.firstIndex(of: complement) ?? 0
                return [firstIndex, secondIndex]
            }
        }
        return []
    }
}

