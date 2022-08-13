//
//  FunctionMap.swift
//  HackerRank
//
//  Created by Miguel Otero on 12/08/22.
//  https://www.udemy.com/course/draft/1201392/learn/lecture/7153200#overview

import Foundation
import UIKit

struct FunctionMap<T> {
    
    static func test() {
        print(["1","2","3"].mapX{ item in Int(item)!})
        print([1,2,3].mapX{ item in String(item) })
    }
}

extension Collection {
    func mapX<T>(transformer:(Iterator.Element) -> T)  -> [T] {
        var result = [T]()
        self.forEach { item in
            result.append(transformer(item))
        }
        return result
    }
}
