//
//   FirstBadVersion.swift
//  HackerRank
//
//  Created by Miguel Otero on 13/11/22.
//

import Foundation

struct FirstBadVersion {
    static func test() {
        print(firstBadVersion(2126753390))
//        print(firstBadVersion(20))
    }
    
    static func firstBadVersion(_ versions: Int) -> Int {
                
        var versionMax = versions
        var versionMin = versions/2
        var promedio = 0
        
        while versionMax > 0 {
            if isBadVersion(versionMin) {
                versionMax = versionMin
                versionMin = versionMin/2
            } else {
                promedio = (versionMax + versionMin)/2
                if isBadVersion(promedio) {
                    versionMax = promedio
                } else {
                    if versionMin == promedio {
                        return versionMax
                    }
                    versionMin = promedio
                }
            }
        }
        return 0
    }
    
    static func isBadVersion(_ version: Int) -> Bool {
        if version >= 1702766719 {
            return true
        } else {
            return false
        }
    }
    
//    static func firstBadVersion(_ versions: Int) -> Int {
//        let array:[Int] = Array(1...versions)
//        let index = array.first { item in
//            isBadVersion(item) == true
//        }
//        return index ?? 0
//    }
}
