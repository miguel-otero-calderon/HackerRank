//
//  AddTwoNumbers.swift
//  HackerRank
//
//  Created by Miguel Otero on 9/04/23.
//https://leetcode.com/problems/add-two-numbers/

import Foundation

struct AddTwoNumbers {
    static func test() {
        let lista1 = AddTwoNumbers.ListNode(1)
        lista1.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(0)
        
        lista1.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next?.next = AddTwoNumbers.ListNode(1)
        
        let lista2 = AddTwoNumbers.ListNode(5)
        lista2.next = AddTwoNumbers.ListNode(6)
        lista2.next?.next = AddTwoNumbers.ListNode(4)
        
        let resultado = AddTwoNumbers.addTwoNumbers(lista1, lista2)
        var node:AddTwoNumbers.ListNode?
        node = resultado
        while node != nil {
            print(node?.val ?? 0)
            node = node?.next
        }
    }
    
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1: ListNode? = l1
        var l2: ListNode? = l2
        
        var result: ListNode? = ListNode(0)
        let head = result
        
        var carry = 0
        while l1 != nil || l2 != nil || carry > 0 {
            let firstValue = l1?.val ?? 0
            let secondValue = l2?.val ?? 0
            let sum = firstValue + secondValue + carry
            
            let value = sum % 10
            carry = sum / 10
            
            result?.next = ListNode(value)
            result = result?.next
            l1 = l1?.next
            l2 = l2?.next
        }
        
        return head?.next
    }
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
}
