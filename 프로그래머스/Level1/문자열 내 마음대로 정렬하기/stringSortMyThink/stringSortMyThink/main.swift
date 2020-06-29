//
//  main.swift
//  stringSortMyThink
//
//  Created by 1 on 2020/06/15.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


var strings = ["sun", "bed", "car"]

var n = 1

var index = strings[0].index(strings[0].startIndex, offsetBy: n)

let result = strings.sorted(by: {(s1:String, s2:String) -> Bool in
    if s1[index] == s2[index]{
        return s1 < s2
    }else{
        return s1[index] < s2[index]
    }
})
print(result)
