//
//  main.swift
//  plusArray
//
//  Created by 1 on 2020/06/21.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = Array(repeating: Array(repeating: 3, count: arr1[0].count), count: arr1.count)
    
    for i in 0 ..< arr1.count{
        for j in 0 ..< arr1[i].count{
            result[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
 
    print(result)
    return result
}
solution([[1], [2]], [[3], [4]])
