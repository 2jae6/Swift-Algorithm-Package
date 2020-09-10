//
//  main.swift
//  minValue
//
//  Created by 1 on 2020/09/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0

    var AArray = A.sorted()
    var BArray = B.sorted()
    
    while AArray.isEmpty == false {
        ans += AArray.first! * BArray.last!
        AArray.removeFirst()
        BArray.removeLast()
    }
    print(ans)
    return ans
}

solution([1, 4, 2], [5, 4, 4])
