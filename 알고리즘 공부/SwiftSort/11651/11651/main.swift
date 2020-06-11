//
//  main.swift
//  11651
//
//  Created by 1 on 2020/02/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = Int(readLine()!)!

var jaffo = [(Int, Int)]()

for _ in 0 ... n - 1{
    let imsi = readLine()!.components(separatedBy: " ").map{Int($0)!}
    jaffo.append((imsi.first!, imsi.last!))
}

jaffo.sort { (first, second) -> Bool in
    if first.1 == second.1{
        return first.0 < second.0
    }
    return first.1 < second.1
}


for i in jaffo{
    print(i.0, i.1)
}
//https://gorani95.tistory.com/217
