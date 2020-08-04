//
//  main.swift
//  FailPercent
//
//  Created by 1 on 2020/06/23.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
  var fail:Dictionary = [Int: Double]()
   
    for i in 1 ... N{
       let failPer =  Double(stages.filter{$0 == i }.count)  / Double(stages.filter{$0 >= i}.count)
        fail.updateValue(failPer, forKey: i)
    }
    var result = fail.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}

    return result
}
// [3,4,2,1,5]
solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
