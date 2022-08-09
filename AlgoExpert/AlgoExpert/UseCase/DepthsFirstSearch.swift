//
//  DepthsFirstSearch.swift
//  AlgoExpert
//
//  Created by Miguel on 22/01/22.
//

import Foundation
struct DepthsFirstSearch {
    static func test() {
        let root = Node(name: "A")
        root.addChild(name: "B").addChild(name: "C").addChild(name: "D")
        
        let nodeB = root.children.first(where: {item in item.name == "B"})!
        nodeB.addChild(name: "E").addChild(name: "F")
        
        let nodeF = nodeB.children.first(where: {item in item.name == "F"})!
        nodeF.addChild(name: "I").addChild(name: "J")
        
        let nodeD = root.children.first(where: {item in item.name == "D"})!
        nodeD.addChild(name: "G").addChild(name: "H")
        
        let nodeG = nodeD.children.first(where: {item in item.name == "G"})!
        nodeG.addChild(name: "K")
        
        var arrayString = [String]()
        let result = root.depthFirstSearch(array: &arrayString)
        print(result)
    }
}
class Node {
    let name: String
    var children: [Node]
    
    init(name: String) {
        self.name = name
        children = []
    }
    
    func addChild(name: String) -> Node {
        let childNode = Node(name: name)
        children.append(childNode)
        
        return self
    }
    
    func depthFirstSearch(array: inout [String]) -> [String] {
        var arrayString = [String]()
        printChildren(node: self, arrayString: &arrayString)
        return arrayString
    }
    
    func printChildren(node:Node , arrayString: inout [String]) {
        
        if !arrayString.contains(node.name) {
            arrayString.append(node.name)
        }
        
        for item in node.children {
            arrayString.append(item.name)
            printChildren(node: item, arrayString: &arrayString)
        }
        
    }
    
}
