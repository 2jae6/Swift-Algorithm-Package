//
//  main.swift
//  HaSard
//
//  Created by 1 on 2020/06/20.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ x:Int) -> Bool {
    let strNum = Array(String(x))
    print(strNum)
    let intNum = strNum.map{Int(String($0))!}
    print(intNum)
    
    let div = intNum.reduce(0, +)
    
    if x % div == 0{
        return true
    }else{
        return false
    }
}

solution(10)
