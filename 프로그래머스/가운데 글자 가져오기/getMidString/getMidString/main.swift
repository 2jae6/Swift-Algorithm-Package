//
//  main.swift
//  getMidString
//
//  Created by 1 on 2020/06/14.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var a = "abcd"
var b = ""

if a.count % 2 == 0{
    let c = a.index(a.startIndex, offsetBy: (a.count / 2) - 1)
    let d = a.index(a.startIndex, offsetBy: a.count / 2)
    b.append(a[c])
    b.append(a[d])
}else{
    
    let c = a.index(a.startIndex, offsetBy: a.count / 2)
    b.append(a[c])
}

print(b)
