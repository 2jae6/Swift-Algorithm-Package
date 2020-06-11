//
//  main.swift
//  recursive
//
//  Created by 1 on 2020/02/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

public func example( description:String, excute:()->() ) // 실행시킬 때 사용할 메소드
public func processTime(description:String, blockFunction: () -> ()) // 실행시간 측정할 때 사용할 메소드.
 


// 재귀호출로 구현한 팩토리얼
public func factorial_recur(n:Int) -> Int{
      if n == 0 { // 요구사항2. 종료조건이면서, 0! 은 1 인 것을 만족시켜줌.
            return 1
        }
        return n * factorial_recur(n: n-1) // 재귀호출.
        // 요구사항 1. 문제의 크기가 작은 방향으로 이동해서 작은것 먼저 해결 (n-1 이므로 1씩 작아지죠?)
}



// 반복문 으로 구현한
public func factorial_for(n:Int) -> Int{
    var result = 1
        for i in 0 ..< n { // 범위를 굳이 0 부터 한 이유는 0! = 1 이기 때문입니다.
            result = result * (i+1)
        }
        return result
}
