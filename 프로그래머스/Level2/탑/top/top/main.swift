//
//  main.swift
//  top
//
//  Created by 1 on 2020/07/07.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ heights:[Int]) -> [Int] {
    var result: Array<Int> = []
    
    for i in stride(from: heights.count - 1, to: -1, by: -1){
        var copy_heights = heights[0..<i]
        //  print(heights[i])
        
        //높은 탑이 있나 찾기
        while !copy_heights.isEmpty {
            if heights[i] < copy_heights.last!{
                print(copy_heights.count)
                result.append(copy_heights.count)
                break
            }else{
                copy_heights.popLast()
                if copy_heights.isEmpty{
                    result.append(0)
                }
            }
        }
      
    }
    result.append(0)
    result.reverse()
    print(result)
    return result
}
// 00224
solution([6, 9, 5, 7, 4])
