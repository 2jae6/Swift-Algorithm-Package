//
//  main.swift
//  Kend
//
//  Created by 1 on 2020/06/12.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation





var array = [1, 5, 2, 6, 3, 7, 4]
var commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
var result: Array<Int> = []

for t in 0 ... commands.count - 1 {
    var i = commands[t][0] - 1
    var j = commands[t][1] - 1
    var k = commands[t][2] - 1
    
    let imsiCommands = array[i ... j]
    let sortCommands = imsiCommands.sorted(by: <)
    result.append(sortCommands[k])
}
print(result)
