//
//   ValidParentheses.swift
//  HackerRank
//
//  Created by Miguel Otero on 31/10/22.
//  https://leetcode.com/problems/valid-parentheses/

import Foundation

struct ValidParentheses {
    static func test() {
        print(isValid("()"))
    }
    static func isValid(_ s: String) -> Bool {
        if s.count%2 == 1 {
            return false
        }
        var string = s
        var countPreviuos = 0
        while string.count > 0 {
            string = string.replacingOccurrences(of: "()", with: "")
            string = string.replacingOccurrences(of: "{}", with: "")
            string = string.replacingOccurrences(of: "[]", with: "")
            
            if string.count == 0 {
                return true
            }
            if countPreviuos == string.count {
                return false
            }
            countPreviuos = string.count
        }

        return string.count == 0
    }
}
