//
//  main.swift
//  divisorArray
//
//  Created by 1 on 2020/06/15.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var arr = [2, 36 ,1, 3]
var divisor = 10



arr = arr.filter{($0 % divisor == 0)}
arr = arr.sorted(by : <)
if arr.isEmpty{
    arr.append(-1)
}
print(arr)

