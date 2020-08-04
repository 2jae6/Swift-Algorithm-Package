//
//  main.swift
//  makeBigNum
//
//  Created by 1 on 2020/07/12.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation



func solution(_ number:String, _ k:Int) -> String {
    var splitNum = Array(number).map{String($0)}
    var strCount = (number.count - k) - 1
    var setStrCount = number.count - k
    var result = ""
    var maxNum = 0
    var start = 0
    
    func recursive(_ startidx: Int, _ endidx: Int){
        if number.count == 1{
            result = splitNum[0]
            return
        }

        if startidx == endidx{
            print(splitNum)
            //let dd = splitNum.reduce(startidx){$0 + $1}
            //result.append(contentsOf: dd)
            return
        }
            for i in startidx ... endidx{
                if Int(splitNum[i])! > maxNum{
                    maxNum = Int(splitNum[i])!
                    start = i
                }
            }
        
        result.append("\(maxNum)")
        maxNum = 0
        recursive(start + 1, number.count - (k - result.count))
        
    }
    
 
    recursive(start, k)
    print(result)
    return result
}
//3234
solution("1231234", 3)
solution("1924", 2)
//solution("3", 1)
