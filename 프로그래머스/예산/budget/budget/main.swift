//
//  main.swift
//  budget
//
//  Created by 1 on 2020/06/22.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var count = 0
    var bd = 0
    let b = d.sorted(by: <)
    for i in b{
        bd += i
        if bd <= budget{
            count += 1
        }else{
            break
        }
    }
    print(count)
    return count
}
solution([1, 3, 2, 5, 4], 9)
