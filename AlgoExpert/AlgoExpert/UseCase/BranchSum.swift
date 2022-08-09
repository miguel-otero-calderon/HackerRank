//
//  BranchSum.swift
//  AlgoExpert
//
//  Created by Miguel on 21/01/22.
//

import Foundation
struct BranchSum {
    static func test() {        
        let root = BST(value: 1)
        root.left = BST(value: 2)
        root.left?.left = BST(value: 4)
        root.left?.left?.left = BST(value: 8)
        root.left?.left?.right = BST(value: 9)
        root.left?.right = BST(value: 5)
        root.left?.right?.left = BST(value: 10)
        
        root.right = BST(value: 3)
        root.right?.left = BST(value: 6)
        root.right?.right = BST(value: 7)
        
        let result = branchSums(root: root)
        print(result)
    }
    static func branchSums(root: BST) -> [Int] {
        var arraySums = [Int]()
        calculateBranchSums(node: root, sumPrevious: 0, arraySum: &arraySums)
        return arraySums
    }
    static func calculateBranchSums(node: BST?, sumPrevious:Int , arraySum: inout [Int]) {
        if let node = node {
            let sumPrevious = sumPrevious + node.value
            if node.left == nil && node.right == nil {
                arraySum.append(sumPrevious)
                return
            }
            
            calculateBranchSums(node: node.left, sumPrevious: sumPrevious, arraySum: &arraySum)
            calculateBranchSums(node: node.right, sumPrevious: sumPrevious, arraySum: &arraySum)
        }
    }
}
class BST {
  var value: Int
  var left: BST?
  var right: BST?

  init(value: Int) {
    self.value = value
  }
}
