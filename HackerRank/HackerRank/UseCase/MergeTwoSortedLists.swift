//
//  MergeTwoSortedLists.swift
//  HackerRank
//
//  Created by Miguel Otero on 31/10/22.
//

import Foundation

struct MergeTwoSortedLists {
    static func test() {
        
        var list1 = MergeTwoSortedLists.ListNode(1)
        list1.next = MergeTwoSortedLists.ListNode(2)
        list1.next?.next = MergeTwoSortedLists.ListNode(4)
        
        var list2 = MergeTwoSortedLists.ListNode(1)
        list2.next = MergeTwoSortedLists.ListNode(3)
        list2.next?.next = MergeTwoSortedLists.ListNode(4)
        
        print(mergeTwoLists(list1, list2))
        
    }
    static func mergeTwoLists(_ list1: MergeTwoSortedLists.ListNode?, _ list2: MergeTwoSortedLists.ListNode?) -> MergeTwoSortedLists.ListNode? {
        if list1 == nil && list2 != nil {
            return list2
        }
        if list1 != nil && list2 == nil {
            return list1
        }
        guard let list1 = list1 , let list2 = list2 else {
            return nil
        }
        var current1: MergeTwoSortedLists.ListNode?
        var current2: MergeTwoSortedLists.ListNode?
        
        current1 = list1
        current2 = list2
        
        while current1 != nil {
            
        }
        
        return nil
    }
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        
        public init() {
            self.val = 0
            self.next = nil
        }
        
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
        
        public init(_ val: Int, _ next: ListNode?) {
            self.val = val
            self.next = next
        }
    }
}
