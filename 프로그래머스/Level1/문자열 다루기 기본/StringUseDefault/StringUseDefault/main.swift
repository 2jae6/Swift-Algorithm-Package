//
//  main.swift
//  StringUseDefault
//
//  Created by 1 on 2020/06/16.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {

    if s.count == 4 || s.count == 6{
        let num = s.filter{($0.isNumber)}
        if s.count == num.count{
            return true
        }
    }
    
    return false
}


solution("a234")
