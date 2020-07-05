//
//  main.swift
//  BigNumber
//
//  Created by 1 on 2020/07/05.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    let result = numbers.sorted{Int("\($0)\($1)")! > Int("\($1)\($0)")! }
    if result[0] == 0{
        return "0"
    }
    return result.reduce(""){$0 + "\($1)"}
}
solution([3, 30, 34, 5, 9])
