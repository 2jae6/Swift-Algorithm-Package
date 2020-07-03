//
//  main.swift
//  StringAp
//
//  Created by 1 on 2020/07/03.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Int {
    
     
    
    
    var resultCount = 0
    
    for z in 1 ..< s.count / 2{

        var sString = s
        var sArray:Array<String> = []
        //글자를 특정 수만큼 자르기
        while !sString.isEmpty{
            let a = String(sString.prefix(z))
            sArray.append(a)
            sString.removeFirst(z)
        }
        print(sArray)
        
        var prev = ""
        var count = 0
        var lastString: Array<String> = []
        for i in 0 ..< sArray.count{
            if prev == ""{
                prev = sArray[i]
                count += 1
            }else{
                if prev == sArray[i]{
                    count += 1
                }else{
                    
                    if count == 1{
                        lastString.append("\(prev)")
                    }else{
                        lastString.append("\(count)\(prev)")
                    }
                    
                    prev = sArray[i]
                    count = 1
                }
            }
        }
        if count == 1{
            lastString.append("\(prev)")
        }else{
            lastString.append("\(count)\(prev)")
        }
        
        //print(lastString)
        var result = lastString.joined()
        print(result)
        if result.count > resultCount{
            resultCount = result.count
        }
    }
    
    print(resultCount)
    return 0
}
//2a2ba3c
solution("abcabcabcabcdededededede")
