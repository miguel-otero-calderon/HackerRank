//
//  ClassPhoto.swift
//  AlgoExpert
//
//  Created by Miguel Otero on 29/08/22.
//

import Foundation
struct ClassPhoto {
    static func test() {
        var redShirtHeights = [5,8,1,3,4]
        var blueShirtHeights = [6,9,2,4,5]
        let result = ClassPhoto().classPhotos(&redShirtHeights, &blueShirtHeights)
        print(result)
    }
    func classPhotos(_ redShirtHeights: inout [Int], _ blueShirtHeights: inout [Int]) -> Bool {
        redShirtHeights = redShirtHeights.sorted()
        blueShirtHeights = blueShirtHeights.sorted()
        
        for (index,_) in redShirtHeights.enumerated() {
            let red = redShirtHeights[index]
            let blue = blueShirtHeights[index]
            if blueShirtHeights.last! > redShirtHeights.last! {
                if blue > red {
                } else {
                    return false
                }
            } else {
                if blue < red {
                } else {
                    return false
                }
            }
            print("index: \(index)")
        }
        return true
    }
}
