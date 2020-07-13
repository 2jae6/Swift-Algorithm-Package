//
//  main.swift
//  makeBigNum
//
//  Created by 1 on 2020/07/12.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation



func solution(_ number:String, _ k:Int) -> String {
    
    //2개를 제거한 모든 수를 구하는 방법
    //두개를 제거
    var splitNum = Array(number).map{String($0)}
    var strCount = number.count - k
    var setStrCount = number.count - k
    var result = ""
    var maxNum = 0
    var start = 0
    
    
    func recursive(_ startidx: Int, _ endidx: Int){
        if result.count == setStrCount{
            return
        }

            for i in startidx ... endidx{
                if Int(splitNum[i])! > maxNum{
                    maxNum = Int(splitNum[i])!
                    start = i
                }
            }
        
        result.append("\(maxNum)")
        strCount -= 1
        maxNum = 0
        recursive(start + 1, number.count - strCount)
        
    }
    
    if number.count == 1{
        return number
    }
    recursive(start, strCount)
    
    return result
}
//3234
solution("1924", 2)
