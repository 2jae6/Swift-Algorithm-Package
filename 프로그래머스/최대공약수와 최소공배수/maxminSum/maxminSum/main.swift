//
//  main.swift
//  maxminSum
//
//  Created by 1 on 2020/06/19.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var result: Array<Int> = []
    result.append(gcd(n, m))
    result.append(n * m / gcd(n, m))
    print(result)
    return result
    
}

solution(2, 5)

func gcd(_ a: Int, _ b: Int) -> Int {
  let r = a % b
  if r != 0 {
    return gcd(b, r)
  } else {
    return b
  }
}
