//
//  TandemBicycle.swift
//  AlgoExpert
//
//  Created by Miguel Otero on 29/08/22.
//

import Foundation
struct TandemBicycle {
    static func test() {
//        var redShirtSpeeds = [5,5,3,9,2]
//        var blueShirtSpeeds = [3,6,7,2,1]

        var redShirtSpeeds = [5,5,3,9,2]
        var blueShirtSpeeds = [3, 6, 7, 2, 1]
        
        let maximun = TandemBicycle().tandemBicycle(&redShirtSpeeds, &blueShirtSpeeds, true)
        print("maximun \(maximun)")
        
        let minumun = TandemBicycle().tandemBicycle(&redShirtSpeeds, &blueShirtSpeeds, false)
        print("minumun \(minumun)")
    }
    func tandemBicycle(_ redShirtSpeeds: inout [Int], _ blueShirtSpeeds: inout [Int], _ fastest: Bool) -> Int {
        var pars = [Int]()
        
        if fastest { //maximun
            redShirtSpeeds.sort { $0 < $1 }
            blueShirtSpeeds.sort { $0 > $1 }
        } else { //minimun
            redShirtSpeeds.sort { $0 < $1 }
            blueShirtSpeeds.sort { $0 < $1 }
        }
        print("redShirtSpeeds \(redShirtSpeeds)" )
        print("blueShirtSpeeds \(blueShirtSpeeds)" )
        for (index,_) in redShirtSpeeds.enumerated() {
            let red = redShirtSpeeds[index]
            let blue = blueShirtSpeeds[index]
            if fastest {
                if red > blue {
                    pars.append(red)
                } else {
                    pars.append(blue)
                }
            } else {
                if red < blue {
                    pars.append(red)
                } else {
                    pars.append(blue)
                }
            }
        }
        return pars.reduce(0) { partialResult, item in
            partialResult + item
        }
    }
}
