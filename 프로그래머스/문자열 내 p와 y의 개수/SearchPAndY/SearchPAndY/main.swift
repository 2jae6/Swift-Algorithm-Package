//
//  main.swift
//  SearchPAndY
//
//  Created by 1 on 2020/06/16.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    let s = s.lowercased()
    let pCount = s.filter{$0 == "p"}.count
    let yCount = s.filter{$0 == "y"}.count
    
    
    if pCount == yCount {
        ans = true
    }else{
        ans = false
    }
    return ans
}
