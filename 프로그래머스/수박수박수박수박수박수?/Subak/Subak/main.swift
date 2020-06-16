//
//  main.swift
//  Subak
//
//  Created by 1 on 2020/06/15.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = 5

var result = ""
result = String(repeating: "수박", count: n)
result = String(result.prefix(n))
print(result)
