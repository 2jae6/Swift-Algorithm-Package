//
//  main.swift
//  ArksuSum
//
//  Created by 1 on 2020/06/18.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


func solution(_ n:Int) -> Int {
    if n == 0{
        return 0
    }
    var sum = [Int](1...n)
   

    sum = sum.filter{n % $0 == 0}
    
    print(sum)
    return sum.reduce(0, +)
}

solution(12)

/*
func solution(_ n:Int) -> Int {
    var sum:Array<Int> = []
    
    for i in 1 ... n{
        if n % i == 0{
            sum.append(i)
        }
    }
    return sum.reduce(0, +)
}

solution(12)
*/
