//
//  main.swift
//  average
//
//  Created by 1 on 2020/06/20.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    var a = Double(arr.reduce(0, +))  / Double(arr.count)
    
    print(a)
    return a
}
solution([5, 5])
