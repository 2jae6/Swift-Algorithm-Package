//
//  main.swift
//  IntLow
//
//  Created by 1 on 2020/06/18.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let a = Array(String(n)).sorted(by: >)
    print(a)
    let b = a.reduce(""){
        return ("\($0)" + "\($1)")
    }
    
    print(b)
    let c = Int64(b)!
    print(type(of: c))
    
    return c
}
solution(118372)
