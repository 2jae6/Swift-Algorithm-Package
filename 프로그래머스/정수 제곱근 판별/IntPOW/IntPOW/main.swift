//
//  main.swift
//  IntPOW
//
//  Created by 1 on 2020/06/19.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


func solution(_ n:Int64) -> Int64 {
    
    var t = 1
    while t * t <= n{
        
        if t * t == n{
            return Int64((t + 1) * (t + 1))
        }
        t += 1
    }
    return -1
}

solution(121)

/*
func solution(_ n:Int64) -> Int64 {
    
    var t = sqrt(Double(n))
    print(t)
    

    if t * t == Double(n){
        return Int64((t + 1) * (t + 1))
    }else{
        return -1
    }
    
}
*/
solution(0)
