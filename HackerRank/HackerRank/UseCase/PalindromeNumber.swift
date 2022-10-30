//
//  PalindromeNumber.swift
//  HackerRank
//
//  Created by Miguel Otero on 30/10/22.
//

import Foundation
import UIKit

struct PalindromeNumber {
    static func test() {
        print(isPalindrome(10))
    }
    static func isPalindrome(_ x: Int) -> Bool {
        let string = String(x)
        return string == String(string.reversed())
    }
}
