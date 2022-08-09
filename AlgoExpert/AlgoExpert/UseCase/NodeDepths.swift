//
//  NodeDepths.swift
//  AlgoExpert
//
//  Created by Miguel on 21/01/22.
//

import Foundation
struct NodeDepths {
    static func test() {
        let root = BinaryTree(value: 1)
        root.left = BinaryTree(value: 2)
        root.left?.left = BinaryTree(value: 4)
        root.left?.left?.left = BinaryTree(value: 8)
        root.left?.left?.right = BinaryTree(value: 9)
        root.left?.right = BinaryTree(value: 5)
        
        root.right = BinaryTree(value: 3)
        root.right?.left = BinaryTree(value: 6)
        root.right?.right = BinaryTree(value: 7)
        
        let result = nodeDepths(root)
        print(result)
    }
    
    static func nodeDepths(_ root: BinaryTree?) -> Int {
        var arrayCount = [Int]()
        calculateNodeDepths(node: root, countNodeDepths: 0, arrayCount: &arrayCount)
        return arrayCount.reduce(0, {$0 + $1})
    }
    static func calculateNodeDepths(node:BinaryTree?, countNodeDepths:Int , arrayCount: inout [Int]) {
        if let node = node {
            var count = 0
            
            if node.value == 1 {
                
            } else {
                count = countNodeDepths + 1
                arrayCount.append(count)
            }
            if node.left == nil , node.right == nil {
                return
            }
            
            calculateNodeDepths(node: node.left, countNodeDepths: count, arrayCount: &arrayCount)
            calculateNodeDepths(node: node.right, countNodeDepths: count, arrayCount: &arrayCount)
        }
    }
}
class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(value: Int) {
        self.value = value
    }
}
