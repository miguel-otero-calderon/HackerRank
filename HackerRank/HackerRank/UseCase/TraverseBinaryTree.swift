//
//  TraverseBinaryTree.swift
//  HackerRank
//
//  Created by Miguel Otero on 12/08/22.
// https://www.udemy.com/course/draft/1201392/learn/lecture/7153196#overview

import Foundation
import UIKit
class NodeTraverseBinaryTree<T> {
    var value:T
    var left:NodeTraverseBinaryTree<T>?
    var right:NodeTraverseBinaryTree<T>?
    
    init(value:T) {
        self.value = value
    }
    
    func printValue() {
        if left != nil {
            left?.printValue()
        }
        print(value)
        if right != nil {
            right?.printValue()
        }
    }
}

class TraverseBinaryTree<T:Comparable> {
    var root:NodeTraverseBinaryTree<T>?
        
    /// init class
    /// - Parameter array: fill binary tree
    init(array: [T]) {
        for value in array {
            var isFull = false
            var nodeCurrent: NodeTraverseBinaryTree<T>?
            if root == nil {
                root = NodeTraverseBinaryTree<T>(value: value)
            } else {
                nodeCurrent = root
                while !isFull {
                    if value <= nodeCurrent!.value {
                        if nodeCurrent?.left == nil {
                            nodeCurrent?.left = NodeTraverseBinaryTree<T>(value: value)
                            isFull = true
                        }
                        nodeCurrent = nodeCurrent?.left
                    } else {
                        if nodeCurrent?.right == nil {
                            nodeCurrent?.right = NodeTraverseBinaryTree<T>(value: value)
                            isFull = true
                        }
                        nodeCurrent = nodeCurrent?.right
                    }
                }
            }
        }
    }
    
    /// Print elements in order.
    func printElements() {
        guard let root = root else {
            return
        }
        root.printValue()
    }
    
    static func test() {
        let traverseBinaryTree = TraverseBinaryTree<Int>(array: [2,0,1,3,4,5])
        traverseBinaryTree.printElements()
    }
}
