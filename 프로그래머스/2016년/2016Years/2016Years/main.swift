//
//  main.swift
//  2016Years
//
//  Created by 1 on 2020/06/13.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var a = 1
var b = 1

var month = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var days = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]


var num = month.prefix(a).reduce(0, +) + (b)
print(days[num % 7])

