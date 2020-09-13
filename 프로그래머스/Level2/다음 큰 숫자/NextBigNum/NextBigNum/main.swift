//
//  main.swift
//  NextBigNum
//
//  Created by 1 on 2020/09/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var nextCount = 0
    n.nonzeroBitCount
    func getCount(number: String) -> Int{
        return Array(number).filter{$0 == "1"}.count
    }
    
    let nTwoCount = getCount(number: String(n, radix: 2))
    
    func recursive(nextNumber: Int) -> Int{
        nextCount = getCount(number: String(nextNumber, radix: 2))
        if nTwoCount == nextCount{
            return nextNumber
        }else{
            return recursive(nextNumber: nextNumber + 1)
        }
        
    }
    
    answer = recursive(nextNumber: n + 1)
    return answer
}

solution(78)
