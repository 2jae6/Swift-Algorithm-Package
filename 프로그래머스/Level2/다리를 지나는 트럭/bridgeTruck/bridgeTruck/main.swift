//
//  main.swift
//  bridgeTruck
//
//  Created by 1 on 2020/06/29.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var time = 0
    
    var sumW = 0
    
    //다리에 올라간 트럭들 무게
    var ingBridgeTruck: Array<Int> = []
    
    //트럭이 올라간 시간
    var ingTimeTruck: Array<Int> = []
    
    //대기중인 트럭
    var copy_Truck_weights = truck_weights
    
    
    
    while !copy_Truck_weights.isEmpty{
        
        time += 1
        if !ingTimeTruck.isEmpty{
            if time == ingTimeTruck.first!{
                ingTimeTruck.removeFirst()
                sumW -= ingBridgeTruck.first!
                ingBridgeTruck.removeFirst()
                
            }
        }
        
        if weight >= copy_Truck_weights.first! + sumW{
            sumW += copy_Truck_weights.first!
            ingBridgeTruck.append(copy_Truck_weights.first!)
            ingTimeTruck.append(time + bridge_length)
            copy_Truck_weights.removeFirst()
        }
    }
    
    
    return ingTimeTruck.last!
}
solution(2, 10, [7, 4, 5, 6])
//solution(100, 10, [10])

// 1~2: 7 / 3: 4 /  4: 4, 5 / 5: 5 /6~7 : 6 / 8: []
