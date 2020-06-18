//
//  main.swift
//  reverseIntArray
//
//  Created by 1 on 2020/06/18.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    let a = Array(String(n).reversed())
    
    
    let b = a.map{Int(String($0))!}
    return b
}
solution(12345)
