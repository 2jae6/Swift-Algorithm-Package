//
//  main.swift
//  xNumberN
//
//  Created by 1 on 2020/06/21.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result:Array<Int64> = []
    var t = x
    
    for i in 1 ... n{
        result.append(Int64(t))
        t = t + x
    }
    print(result)
    return result
}

solution(2, 5)
