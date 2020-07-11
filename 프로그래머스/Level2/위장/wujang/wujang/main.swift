//
//  main.swift
//  wujang
//
//  Created by 1 on 2020/07/02.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var kind: [String: Int] = [:]
    
    for i in 0 ..< clothes.count{
        let key = clothes[i][1]
        let valueCount = kind[key] ?? 1
        kind[key] = valueCount + 1
    }
    
    
    print(kind)
    print(kind.reduce(1){$0 * $1.value} - 1)
    return kind.reduce(1){$0 * $1.value} - 1
    // (n+1) * (m + 1) - 1
}
// map / filter / reduce
solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]])

