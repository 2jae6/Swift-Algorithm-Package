//
//  main.swift
//  DFS
//
//  Created by 1 on 2020/02/17.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

public class TreeNode<T> {
    public var value: T // 노드가 가지고 있는 값
    public var children = Array<TreeNode>() // 자식 노드가 없을 수도 많을 수도 있으니 배열로 만들자.
    public init(_ value:T){
        self.value = value // 값으로 초기화 하기.
    }
    
    public func add(_ child: TreeNode) { // 노드에 자식노드 추가하기.
        children.append(child)  // 자식노드 배열로 구현했으므로 append 메소드 사용가능!
    }
    
    public func forEachDepthFirst(visit:(TreeNode) -> Void) {
            visit(self)
            // 입력 매개변수로 클로저가 들어올거야. 위에서 호출할 때 먼저 보여줬지?
            // 들어온 클로저의 매개변수에 self 를 넣은 뒤 실행시키는 거야.
            // 여기서 self 는 현재 이 메소드가 호출될 당시의 TreeNode(self)의 인스턴스야.
            // 호출할 때 클로저에 { print($0.value) } 이렇게 넣었었지?
            // 적용하면 클로저에서 $0 은 첫 매개변수를 뜻하므로 self 인 상수 tree 에 있는 TreeNode 인스턴스 인 것이지.
            // 그러므로 print(tree.value) 가 되겠지? 그래서 첫 번째 출력이 beverage
            
            children.forEach {
            // 배열의 forEach 메소드 사용
            // forEach 는 배열의 각각 요소에서 클로저에 들어온 실행을 하라는 의미.
                $0.forEachDepthFirst(visit: visit)
                // 요 부분에서 재귀호출 사용하는거야. 재귀호출 : 자기가 자기 자신을 호출하는 것.
                // beverage 자식노드 hot, cold 잖아 .
                // hot, cold 에서 다시 forEachDepthFirst 메소드를 실행하는 거야. 계속 반복하게 되는거지.
                // 재귀 호출은 다음에 포스팅 따로 해줄게! 반복문도 재귀호출로 구현하는 거야.
            }
    }

}

    let tree = TreeNode("Beverages") // 루트 노드이며 트리 구조를 가지고 있는 것을 tree 라는 상수에 저장한 것
    
    let hot = TreeNode("Hot")
    let cold = TreeNode("Cold")
    
    let tea = TreeNode("Tea")
    let coffee = TreeNode("Coffee")
    let cocoa = TreeNode("Cocoa")
    
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    
    let soda = TreeNode("Soda")
    let milk = TreeNode("Milk")
    
    let gingerAle = TreeNode("ginger ale")
    let bittleLemon = TreeNode("bittle lemon")
    
    tree.add(hot)
    tree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(cocoa)
    
    cold.add(soda)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    
    soda.add(gingerAle)
    soda.add(bittleLemon)



// 깊이우선탐색 호출을 이렇게 할거거든?
tree.forEachDepthFirst {
    print($0.value) // 이 부분이 입력 매개변수의 클로저 부분인 거야 헷갈릴 수 있어서.
}

