//
//  LinkedListCenter.swift
//  HackerRank
//
//  Created by Miguel Otero on 10/08/22.
//

import Foundation
import UIKit
class NodoLinkedListCenter<T> {
    var valor:T
    var next:NodoLinkedListCenter<T>?
    
    init(valor:T) {
        self.valor = valor
    }
}

class LinkedListCenter<T> {
    var firstNodo:NodoLinkedListCenter<T>?
    
    func execute() -> NodoLinkedListCenter<T>? {
        var nodoCurrent = firstNodo
        var count = 0
        var medium = 0
        
        while nodoCurrent != nil {
            nodoCurrent = nodoCurrent?.next
            count += 1
        }
        
        medium = count / 2
        
        count = 0
        nodoCurrent = firstNodo
        while nodoCurrent != nil {
            if count == medium {
                return nodoCurrent
            }
            nodoCurrent = nodoCurrent?.next
            count += 1
        }
        return nil
    }
    
    static func test() {
        let list = LinkedListCenter<Character>()
        var lastNodo:NodoLinkedListCenter<Character>? = nil
        
        for valor in "12345" {
            let nodoCurrent = NodoLinkedListCenter<Character>(valor: valor)
            if lastNodo == nil {
                list.firstNodo = nodoCurrent
            } else {
                lastNodo?.next = nodoCurrent
            }
            lastNodo = nodoCurrent
        }
        print(list.execute()?.valor ?? "")
    }
}
