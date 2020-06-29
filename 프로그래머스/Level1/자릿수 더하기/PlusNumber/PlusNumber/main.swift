//
//  main.swift
//  PlusNumber
//
//  Created by 1 on 2020/06/18.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    
    let f = Array(String(n))
    
    for i in 0 ..< f.count{
        let b = Int(String(f[i]))!
        answer += b
    }


    print(answer)
    return answer
}
solution(234)
