//
//  main.swift
//  2016Years
//
//  Created by 1 on 2020/06/13.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    var a = a
    var b = b
    var month = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var days = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    var num = month.prefix(a).reduce(0, +) + (b)
    return days[num % 7]
}
