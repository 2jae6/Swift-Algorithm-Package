//
//  main.swift
//  LandEat
//
//  Created by 1 on 2020/09/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


func solution(_ land:[[Int]]) -> Int{
    
    
    var copyLand = land
    
    for i in 1 ..< copyLand.count{
        copyLand[i][0] += max(copyLand[i - 1][1], copyLand[i - 1][2], copyLand[i - 1][3])
        copyLand[i][1] += max(copyLand[i - 1][0], copyLand[i - 1][2], copyLand[i - 1][3])
        copyLand[i][2] += max(copyLand[i - 1][0], copyLand[i - 1][1], copyLand[i - 1][3])
        copyLand[i][3] += max(copyLand[i - 1][0], copyLand[i - 1][1], copyLand[i - 1][2])
    }
    print(copyLand.last!.max()!)
    
    
    return copyLand.last!.max()!
}

//7, 6, 5
solution([[1, 2, 3, 5], [5, 6, 7, 8], [4, 3, 2, 1]])
