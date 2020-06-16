//
//  main.swift
//  StringLowCased
//
//  Created by 1 on 2020/06/16.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    let result = s.sorted(by: >)
    var resultString = ""

    for i in result{
        resultString += String(i)
        
    }
    print(resultString)
    return resultString
}

solution("Zbcdefg")
