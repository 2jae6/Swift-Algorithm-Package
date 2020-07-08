//
//  main.swift
//  H-Index
//
//  Created by 1 on 2020/07/08.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
  
    var h = citations.sorted(by: >)
    
    for i in 0 ..< h.count{
        if h[i] <= i{
            print(i)
            return i
        }
        
    }
    return h.count
}
solution([7])
