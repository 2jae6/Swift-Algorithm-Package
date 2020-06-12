//
//  main.swift
//  MoiTest
//
//  Created by 1 on 2020/06/12.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


var answers = [1, 3, 2, 4, 2]
var one = [1, 2, 3, 4, 5]
var two = [2, 1, 2, 3, 2, 4, 2, 5]
var three = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
var maxScore = 0
var oneCount = 0
var twoCount = 0
var threeCount = 0
var result:Array<Int> = []

answers.enumerated().forEach{ (index, element) in
    if element == one[index % 5]{
        oneCount += 1
    }
    if element == two[index % 8]{
        twoCount += 1
    }
    if element == three[index % 10]{
        threeCount += 1
    }
}

maxScore = max(max(oneCount, twoCount), threeCount)
print(maxScore, oneCount, twoCount, threeCount)
if maxScore == oneCount{
    result.append(1)
}
if maxScore == twoCount{
    result.append(2)
}
if maxScore == threeCount{
    result.append(3)
}

print(result)
