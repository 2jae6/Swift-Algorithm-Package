//
//  main.swift
//  DevelopSkill
//
//  Created by 1 on 2020/07/01.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var copy_Progresses = progresses
    var speeds = speeds
    var resultArray:Array<Int> = []
    var count = 0
    while !copy_Progresses.isEmpty{
        
        
        for i in 0 ..< copy_Progresses.count{
            copy_Progresses[i] += speeds[i]
        }
        
        if copy_Progresses.first! >= 100{
            
            while (copy_Progresses.first! >= 100) {
                count += 1
                copy_Progresses.removeFirst()
                speeds.removeFirst()
                
                if copy_Progresses.isEmpty{
                    break
                }
            }
            resultArray.append(count)
            count = 0
        }
        
    }
    print(resultArray)
    return resultArray
}

//[2, 1]
solution([93, 30, 55], [1, 30, 5])
