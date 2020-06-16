//
//  main.swift
//  SearchSosu
//
//  Created by 1 on 2020/06/16.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    var arr = Array.init(repeating: false, count: n + 1)

    for i in 2...n{
        if arr[i] == false{
            count += 1
            for j in stride(from: i, to: n + 1, by: i){
                arr[j] = true
            }
        }
    }

    return count
}
solution(10)

/*
func solution(_ n:Int) -> Int {
    var count = 0
    var cnt = 0
    for i in 2 ... n{
        cnt = 0
        for j in 2 ..< i{
            if i % j == 0{
                cnt += 1
                break
            }
        }
        
        if cnt == 0{
            count += 1
        }
    }
    print(count)
   
    return count
}
 */
