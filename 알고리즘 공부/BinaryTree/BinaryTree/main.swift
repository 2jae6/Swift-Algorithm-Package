//
//  main.swift
//  BinaryTree
//
//  Created by 1 on 2020/02/18.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

public class BinaryNode<Element> {
    public var value: Element // 노드의 값
    public var leftChild: BinaryNode? // 왼쪽 노드 (옵셔널)
    public var rightChild: BinaryNode? // 오른쪽 노드 (옵셔널)
    public init(value: Element) {
        self.value = value
    } // 초기화 함수
  
    public func traverseInOrder(visit: (Element) -> Void) {
        leftChild?.traverseInOrder(visit: visit)
        // 왼쪽 노드 먼저 재귀 호출 시작.
        // 매개변수에 상위 visit 쓴 것은 같은 클로저를 쓰겠다. 즉 print($0) 하겠다는 말.
        // 그림에서 보세용.
        visit(value)
        // 클로저로 들어온 visit 에 value 를 매개변수로 넣어서 실행.
        // 그러니까 print($0) 의 $0 는 현재 인스턴스의 value 가 되겠쥬? 이건 7 이겠네.
        // 가운대에 노드 출력하는 연산 있으므로 in-order
        rightChild?.traverseInOrder(visit: visit)
        // 마지막 순서로 오른쪽
    }
    
    public func traversePreOrder(visit: (Element) -> Void) // Pre-order 탐색
    public func traversePostOrder(visit: (Element) -> Void) // Post-order 탐색

}

extension BinaryNode: CustomStringConvertible {
    public var description: String {
        return diagram(for: self)
    }
    
    private func diagram(for node: BinaryNode?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        return diagram(for: node.rightChild, top + " ", top + "┌──", top + "│ ")
            + root + "\(node.value)\n"
            + diagram(for: node.leftChild, bottom + "│ ", bottom + "└──", bottom + " ")
    }
}

var tree: BinaryNode<Int> {
    
    let zero = BinaryNode(value: 0)
    let one = BinaryNode(value: 1)
    let five = BinaryNode(value: 5)
    let seven = BinaryNode(value: 7)
    let eight = BinaryNode(value: 8)
    let nine = BinaryNode(value: 9)
    
    seven.leftChild = one
    one.leftChild = zero
    one.rightChild = five
    seven.rightChild = nine
    nine.leftChild = eight
    
    return seven // 루트노드 반환
}
print(tree)



tree.traverseInOrder {
    print($0)
}
