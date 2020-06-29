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
   
    //다리에 올라간 트럭들
    var ingBridgeTruck: Array<Int> = []
    //트럭이 올라간 시간
    var ingTimeTruck: Array<Int> = []
    //대기중인 트럭
    var truck_weights = truck_weights
   
    while !truck_weights.isEmpty{
      
  //다리에 트럭을 올리고 내리고를 구현해라
        time += 1
        
        if weight >= truck_weights.first! + ingBridgeTruck.reduce(0, +){
            if ingBridgeTruck.first == truck_weights.first{
                ingBridgeTruck.append(truck_weights[1])
            }else{
                ingBridgeTruck.append(truck_weights.first!)
                
            }
            ingTimeTruck.append(0)
            
        }
        
       ingTimeTruck = ingTimeTruck.map{$0 + 1}
        
        if ingTimeTruck.first == bridge_length{
            ingBridgeTruck.removeFirst()
            ingTimeTruck.removeFirst()
            truck_weights.removeFirst()
        }
        print(time)
        print(ingBridgeTruck)
        print(ingTimeTruck)
    }

    
    print(time)
    return time
}
solution(2, 10, [7, 4, 5, 6])
//solution(100, 10, [10])

