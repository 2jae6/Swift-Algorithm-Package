//
//  main.swift
//  targetNumber
//
//  Created by 1 on 2020/07/07.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation
//궁극
var count = 0
var numberSize = 0

func dfs(_ idx: Int, _ sum: Int,  _ numbers:[Int], _ target:Int){
    //멈춤
    if idx == numberSize{
        if sum == target{
            count += 1
        }
        return
    }
    //초기 값 설정
    dfs(idx + 1, sum + numbers[idx], numbers, target)
    dfs(idx + 1, sum - numbers[idx], numbers, target)
    
}



func solution(_ numbers:[Int], _ target:Int) -> Int {
    numberSize = numbers.count
    dfs(0, 0, numbers, target)
    print(count)
    return count
}
solution([1, 1, 1, 1, 1], 3)
