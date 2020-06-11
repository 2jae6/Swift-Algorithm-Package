//
//  main.swift
//  10870
//
//  Created by 1 on 2020/02/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = Int(readLine()!)!

func fibonacii(n: Int) -> Int{
    if n == 0 || n == 1 {
        return n
    }else{
        return fibonacii(n: n-1) + fibonacii(n: n-2)
    }
}
print(fibonacii(n: n))
