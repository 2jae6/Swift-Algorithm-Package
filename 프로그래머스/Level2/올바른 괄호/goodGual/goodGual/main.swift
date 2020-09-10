//
//  main.swift
//  goodGual
//
//  Created by 1 on 2020/09/10.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = true
    
    var stringCount = 0
    
    for i in s{
        if i == "("{
            stringCount += 1
        }else{
            if stringCount <= 0{
                ans = false
                return ans
            }
            stringCount -= 1
        }
    }
    
    if stringCount != 0{
        ans = false
    }
    
    print(ans)
    return ans
}
//solution("(())()")
//solution(")()(")
solution("(()(")
