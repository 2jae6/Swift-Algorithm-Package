//
//  main.swift
//  Collatz
//
//  Created by 1 on 2020/06/20.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation
var count = 0
func solution(_ num:Int) -> Int {
    
    var num = num
    if count == 500{
        return -1
    }
    
    if num == 1{
        print(count)
        return count
    }
    count += 1
    //짝수
    if num % 2 == 0 {
        num = num / 2
       return solution(num)
    }else{ //홀수
        num = num * 3 + 1
        return solution(num)
    }
}

solution(16)
