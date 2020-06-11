//
//  main.swift
//  Queue
//
//  Created by 1 on 2020/02/17.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

public protocol Queue {
    associatedtype Element
    // associatedtype 키워드는 프로토콜을 정의할 때 제네릭타입 처럼 일반화 시킨 타입을 지정할 떄 사용합니다.
    // 아래에 Element 활용한 메소드들 정의한 것 보이시죠?
    // 이 프로토콜을 채택한 것의 타입이 Int 라면 아래에 정의한 메소드들에서 쓴 Element 는 모두 Int 가 되는 것이죠.
    // 물론 String 도 Double 도 내가 원하는 타입이 될 수도 있구요!
    // 정리하면 Element 는 이 프로토콜을 채택하는 객체가 자기가 원하는 타입의 Queue 를 작성할 수 있도록 해주는 것이쥬.
    mutating func enQueue(_ element: Element) -> Bool
    // 큐 끝에 새로운 큐를 추가하고 성공여부 반환 , 구조체가 이 프로토콜 채택가능성 있기 때문에 mutating 붙여주기 유의.
    mutating func deQueue() -> Element?
    // 가장 먼저 들어온 앞의 큐 제거하고 제거한 큐 반환하기.
    
    var isEmpty: Bool { get } // 큐가 비어있는지 알려주는 읽기전용 프로퍼티 (get은 읽기전용 을 알려주는 겁니다.)
    var peek: Element? { get }
    // 가장 앞의 큐를 알려줍니다.. 제거하는게 아니구요 (deQueue 와 차이)
    // peek 은 '살짝 보다' 라는 뜻입니다^^.
    // get 은 읽기 라는 연산을 수행하고 set 은 쓰기 연산을 수행하는 키워드 입니다. (노파심에 ^^)
}

public struct QueueArray<T>: Queue { // Queue 프로토콜을 채택함.
    private var array = Array<T>()
    // 제네릭 타입 T 로 Queue 프로토콜의 Element 타입이 추론되겠죠? Queue 프로토콜에서 설명한 associatedtype 이니까요!
    public init() {}
    
    // protocol에서 정의한 것들 지켜야쥬?
    public var isEmpty: Bool {
        return array.isEmpty // 배열의 isEmpty 프로퍼티 사용하면 되쥬?
    }
    
    public var peek: T? {
        return array.first // 배열의 first 프로퍼티 사용하면 되쥬?
    }
    
    public mutating func enQueue(_ element: T) -> Bool { // 큐 추가.
        array.append(element)
        // append 연산은 수행속도가 O(1) 입니다. 이 표기법을 몰라도 됩니다. 수행속도 : O(1) > O(n) > O(n2)제곱
        // 왜냐하면 표준라이브러리의 Array 의 append 연산이 O(1) 로 수행됩니다.
        // 이게 뭐냐면 배열이 꽉 찼는데 더 추가해야 될 때마다 해당 배열 인스턴스는 배열의 크기를 두배로 늘립니다.
        // 그림으로 스위프트의 배열에 대해 설명해 드릴게요!
        return true
}
    public mutating func deQueue() -> T? {
            return isEmpty ? nil : array.removeFirst()
            // 비어있으면 제거할 게 없으므로 반환값도 없습니다. 그러므로 isEmpty 를 기준으로 if를 실행합니다.
            // 위의 구문은 isEmpty 가 true 면 nil , false 면 array.removeFirst() 를 반환하라는 뜻입니다.
            // 제거 연산은 수행속도가 O(n) 입니다. 배열에서 첫 아이템 제거 연산이 O(n) 이라서..
            // 배열에서 속도가 왜그래? : 배열의 맨 앞의 아이템을 제거하면 그 뒤에 있는 것들이 한칸씩 앞으로 이동해야 되기 떄문.
            // 그림으로 보시죠!
             }

}
extension QueueArray: CustomStringConvertible {
// CustomStringConvertible 프토토콜을 채택한 객체를 출력할 때 출력내용을 사용자화 해줍니다.
    public var description: String {
        return String(describing: array)
        // array 배열을 출력하도록 설정.
        // Array 구조체는 이 프로토콜이 이미 채택되어 있어서 그냥 출력하면 됩니다.
    }
}
    
    var queueArray = QueueArray<String>() // 인스턴스 생성하구, 제네릭 타입은 String 으로 하겠습니다. 내 이름 추가할 거거든요ㅋㅋ
    queueArray.enQueue("창식") // 큐 추가하구~ 제 이름입니다..^^
    queueArray.enQueue("유정")
    queueArray.enQueue("주혁")
    print(queueArray) // 여기서 한번 출력
    queueArray.deQueue() // 가장 앞에 있는 큐 제거,
    print(queueArray) // 출력
