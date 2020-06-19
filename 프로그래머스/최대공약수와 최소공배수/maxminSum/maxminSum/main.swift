//
//  main.swift
//  maxminSum
//
//  Created by 1 on 2020/06/19.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var nAk:Array<Int> = []
    var mAk:Array<Int> = []
    //최대 공약수 구하기
    for i in 1 ... n{
        if n % i == 0{
            nAk.append(i)
        }
    }
    for i in 1 ... m{
        if m % i == 0{
            mAk.append(i)
        }
    }
    
    print(nAk)
    print(mAk)

    nAk.capacity
    
    // 최소 공배수 구하기
    return []
}
solution(3, 12)
