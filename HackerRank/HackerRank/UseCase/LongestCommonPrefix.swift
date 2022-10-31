//
//  LongestCommonPrefix.swift
//  HackerRank
//
//  Created by Miguel Otero on 30/10/22.
//  https://leetcode.com/problems/longest-common-prefix/

import Foundation

struct LongestCommonPrefix {
    static func test() {
        print(longestCommonPrefix(["reflower","flow","flight"]))
    }
    static func longestCommonPrefix(_ strs: [String]) -> String {
        guard let minor = strs
            .map({ ($0, $0.count) })
            .sorted(by: { $0.1 < $1.1 })
            .first?.0
        else {
            return ""
        }
        var patern = ""
        for character in minor.map({ String($0) }) {
            patern += character
            
            if strs.allSatisfy({ $0.hasPrefix(patern) }) {
                //continue
            } else {
                let result = patern.prefix(patern.count - 1)
                return String(result)
            }
        }

        return patern
    }
}
