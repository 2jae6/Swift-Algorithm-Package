//
//  main.swift
//  Stack
//
//  Created by 1 on 2020/02/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


public struct Stack<Element> {
    
    //MARK: - storage : 쌓여있는 것들 배열로
    private var storage = Array<Element>()
    public init(){}
    
    //MARK: - push : 쌓기
    public mutating func push(_ element: Element) { // push 위에 쌓기 .
        storage.append(element) // 배열의 appned 메소드로 push(쌓기) 를 표현합니다.
    }
    
     //MARK: - pop : 위에서 꺼내기
    public mutating func pop() -> Element? { // pop 위에서 부터 꺼내기.
        return storage.popLast() // 배열의 popLast() 메소드를 사용해서 마지막에 있는 배열의 아이템 제거하는 연산 수행합니다!
    }
    
}


extension Stack: CustomStringConvertible {
    // CustomStringConvertible 프로토콜 채택.
    // description 정의하는 프로토콜입니다. 이를 채택한 객체를 출력할 때 내가 지정한 설명서를 출력하게 하는 것이죠!
    public var description: String { // 연산 프로퍼티로 실시간으로 바뀌는 Stack 의 stackElements 를 정의
        
        let topDivider = "--- top ---\n" // 출력했을 때 가장 윗쪽을 표현
        let bottomDivider = "\n ----------" // 출력했을 떄 가장 아랫쪽을 표현
        
        let stackElements = storage
            .map { (i) in // 배열에 있는 요소들을 클로저로 변경하는 연산 수행하는 메소드 map()
                "\(i)"
        }.reversed() // 문자열로 바뀐 배열의 요소를 거꾸로 정렬.
        .joined(separator: "\n") // 문자열 사이사이에 줄 바꿈 추가하기. 이게 쌓은 것처럼 표현하려고 전에 거꾸로 정렬 한 것입니다.
        
        return topDivider + stackElements + bottomDivider
    }
}

