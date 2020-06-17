//
//  main.swift
//  Sijer
//
//  Created by 1 on 2020/06/17.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    
    
    var upper = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    var lower = Array("abcdefghijklmnopqrstuvwxyz")
    var ss = Array(s)
    var result = ""
    
    print(ss)
   
    for i in ss{
        if upper.contains(i){
            var indexNum = upper.index(of: i)! + n
  
            if indexNum > 25{
                indexNum = indexNum - 26
            }
    
            result.append(upper[indexNum])
        }else if lower.contains(i){
            var indexNum = lower.index(of: i)! + n
            
            if indexNum > 25{
                indexNum = indexNum - 26
            }
            result.append(lower[indexNum])
            
        }else{
            result.append(i)
        }
    }
    
    print(result)
    return result
}
solution("AbcD Z", 1)
