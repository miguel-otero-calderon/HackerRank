//
//  FindSecondPlusBig.swift
//  HackerRank
//
//  Created by Miguel Otero on 15/08/22.
//
//Reto #32: EL SEGUNDO
/* MoureDev
 * https://retosdeprogramacion.com/semanales2022
 * Dado un listado de números, encuentra el SEGUNDO más grande.
 */
import Foundation
import UIKit
struct FindSecondPlusBig {
    static func test() {
        let array = [1,2,3,4,5,6,7,10,12,5,4,3,15]
        print(array.findSecondPlusBig())
    }
}
extension Collection where Iterator.Element == Int {
    func findSecondPlusBig() -> Int? {
        var temp = self.sorted()
        temp.removeLast()
        return temp.last
    }
}
