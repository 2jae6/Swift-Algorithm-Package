//
//  main.swift
//  SeoulSearchKim
//
//  Created by 1 on 2020/06/16.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    
    let x = seoul.index(of: "Kim")!
    print(x)
    return "김서방은 \(x)에 있다"
}
solution(["Jane", "Kim"])
