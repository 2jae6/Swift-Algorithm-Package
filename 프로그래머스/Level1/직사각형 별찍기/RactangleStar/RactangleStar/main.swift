//
//  main.swift
//  RactangleStar
//
//  Created by 1 on 2020/06/21.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

//print(a + b)

let c = String(repeating: "*", count: a)
for i in 1...b{
    print(c)
}

