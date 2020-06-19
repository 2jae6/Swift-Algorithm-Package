//
//  main.swift
//  smallestDelete
//
//  Created by 1 on 2020/06/19.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {

    if arr.count >= 2{
        var a = arr.sorted(by: >)
        let b = a.last!
           
        let c = arr.filter{$0 != b}
        
        return c
    }else{
        return [-1]
    }
    
}
solution([4, 3, 2, 1])
