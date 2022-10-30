//
//  RomanToInteger.swift
//  HackerRank
//
//  Created by Miguel Otero on 29/10/22.
//https://leetcode.com/problems/roman-to-integer/

import Foundation
import UIKit
struct RomanToInteger {
    static func test() {
        let s = "MCMXCIV"
        print(romanToInt(s))
    }
    static func romanToInt(_ s: String) -> Int {
        var numberRoman = s
        var number: Int = 0
        let dictionary: [String: Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        
        numberRoman = numberRoman.replacingOccurrences(of: "IV", with: "IIII")
        numberRoman = numberRoman.replacingOccurrences(of: "IX", with: "VIIII")
        
        numberRoman = numberRoman.replacingOccurrences(of: "XL", with: "XXXX")
        numberRoman = numberRoman.replacingOccurrences(of: "XC", with: "LXXXX")
        
        numberRoman = numberRoman.replacingOccurrences(of: "CD", with: "CCCC")
        numberRoman = numberRoman.replacingOccurrences(of: "CM", with: "DCCCC")
        
        let characters:[String] = numberRoman.map({ String($0) })
        
        for character in characters {
            
            let value = dictionary[character] ?? 0
            number = number + value
        }
        
        return number
    }
}
