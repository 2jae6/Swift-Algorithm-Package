//
//  main.swift
//  Radix
//
//  Created by 1 on 2020/09/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = 25

let twoN =  String(n, radix: 2)
print(twoN)

var nArray:Array<Int> = []


while (n != 0){
    nArray.append(n % 2)
    n = n / 2
}

print(nArray.reversed().map{String($0)}.reduce("", +))

print(twoN.count)




