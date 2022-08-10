//
//  LinkedList.swift
//  HackerRank
//
//  Created by Miguel Otero on 9/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153180#overview

import Foundation
import UIKit
class NodoLinkedList<T> {
    var valor:T
    var next:NodoLinkedList<T>?
    
    init(valor:T) {
        self.valor = valor
    }
}

class LinkedList<T> {
    var firstNodo:NodoLinkedList<T>?

    func printList() {
        var current = firstNodo
        while let nodo = current  {
            print(nodo.valor, terminator: " ")
            current = nodo.next
        }
    }

    static func test() {
        let list = LinkedList<Character>()
        var lastNodo:NodoLinkedList<Character>? = nil

        for valor in "abcdefghijklmnñopqrstuvwxyz" {

            let nodoCurrent = NodoLinkedList<Character>(valor: valor)

            if lastNodo == nil {
                list.firstNodo = nodoCurrent
            } else {
                lastNodo?.next = nodoCurrent
            }
            lastNodo = nodoCurrent
        }
        list.printList()
    }
}
