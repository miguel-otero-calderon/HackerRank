//
//  FindClosestValueInBST.swift
//  AlgoExpert
//
//  Created by Miguel Otero on 15/08/22.
// https://www.algoexpert.io/questions/find-closest-value-in-bst

import Foundation
import UIKit
class FindClosestValueInBST {
    static func test() {
         //case 1
//         let node = BST(value: 10)
//         node.left = BST(value: 5)
//         node.left?.left = BST(value: 2)
//         node.left?.left?.left = BST(value: 1)
//         node.left?.right = BST(value: 5)
//         node.right = BST(value: 15)
//         node.right?.left = BST(value: 13)
//         node.right?.left?.right = BST(value: 14)
//         node.right?.right = BST(value: 22)
//
//         let findClosestValueInBST = FindClosestValueInBST()
//         print(findClosestValueInBST.findClosestValueInBST(tree: node, target: 12))
        
        //case 2
//        let node = BST(value: 100)
//        node.left = BST(value: 5)
//        node.left?.left = BST(value: 2)
//        node.left?.right = BST(value: 15)
//
//        node.right = BST(value: 502)
//        node.right?.left = BST(value: 204)
//        node.right?.right = BST(value: 5500)
//
//        node.right?.left?.left = BST(value: 203)
//        node.right?.left?.right = BST(value: 205)
//        node.right?.left?.right?.right = BST(value: 207)
//        node.right?.left?.right?.right?.left = BST(value: 206)
//        node.right?.left?.right?.right?.right = BST(value: 208)
//
//
//        let findClosestValueInBST = FindClosestValueInBST()
//        print(findClosestValueInBST.findClosestValueInBST(tree: node, target: 208))
        
        //case 3
//        let node = BST(value: 100)
//        node.left = BST(value: 5)
//        node.left?.left = BST(value: 2)
//        node.left?.left?.left = BST(value: 1)
//        node.left?.left?.left?.left = BST(value: -51)
//        node.left?.left?.left?.left?.left = BST(value: -403)
//        node.left?.left?.left?.right = BST(value: 1)
//        node.left?.left?.right = BST(value: 3)
//        node.left?.right = BST(value: 15)
//        node.left?.right?.left = BST(value: 5)
//        node.left?.right?.right = BST(value: 22)
//
//        node.right = BST(value: 502)
//        node.right?.left = BST(value: 204)
//        node.right?.right = BST(value: 5500)
//
//        node.right?.left?.left = BST(value: 203)
//        node.right?.left?.right = BST(value: 205)
//        node.right?.left?.right?.right = BST(value: 207)
//        node.right?.left?.right?.right?.left = BST(value: 206)
//        node.right?.left?.right?.right?.right = BST(value: 208)

//        let findClosestValueInBST = FindClosestValueInBST()
//        print(findClosestValueInBST.findClosestValueInBST(tree: node, target: -70))
        
        //case 4
        let node = BST(value: 100)
        node.left = BST(value: 5)
        node.right = BST(value: 502)
        
        node.left?.left = BST(value: 2)
        node.left?.right = BST(value: 15)
        
        node.left?.left?.left = BST(value: 1)
        node.left?.left?.right = BST(value: 3)
        
        node.left?.left?.left?.left = BST(value: -51)
        node.left?.left?.left?.right = BST(value: 1)
        
        node.left?.left?.left?.left?.left = BST(value: -403)
        node.left?.left?.left?.left?.right = BST(value: 1)
        node.left?.left?.left?.left?.right?.right = BST(value: 1)
        node.left?.left?.left?.left?.right?.right?.right = BST(value: 1)
        node.left?.left?.left?.left?.right?.right?.right?.right = BST(value: 1)

        let findClosestValueInBST = FindClosestValueInBST()
        print(findClosestValueInBST.findClosestValueInBST(tree: node, target: -1))
        
        
    }
    class BST {
        var value: Int
        var left: BST?
        var right: BST?
        
        init(value: Int) {
            self.value = value
            left = nil
            right = nil
        }
    }
    private var closest: Int = 0
    private var minus:Int = Int.max
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        guard let root = tree else { return closest }
        let value = root.value
        let left = root.left?.value ?? 0
        let right = root.right?.value ?? 0
        
        let difference = abs(value - target)
        let differenceLeft = abs(left - target)
        let differenceRight = abs(right - target)
        
        if minus > difference {
            closest = root.value
            minus = difference
        } else if minus > differenceLeft && left != 0 {
            closest = root.left?.value ?? 0
            minus = differenceLeft
        } else if minus > differenceRight && right != 0 {
            closest = root.right?.value ?? 0
            minus = differenceRight
        }
        
        if root.left == nil && root.right == nil {
            return closest
        }
        
        if (differenceLeft < differenceRight && target < value) || target < -1 {
            return findClosestValueInBST(tree: root.left, target: target)
        } else {
            return findClosestValueInBST(tree: root.right, target: target)
        }
    }
}
