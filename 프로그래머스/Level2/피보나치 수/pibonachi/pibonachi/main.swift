//
//  main.swift
//  pibonachi
//
//  Created by 1 on 2020/07/15.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation
/*
func solution(_ n:Int) -> Int {
    var a:Array<Int> = [0, 1]
    
  
    for i in 2...n{
        a.append(a[i-1] + a[i-2])
    }
    
    return a[n] % 1234567
}
*/


 func solution(_ n:Int) -> Int {
     var a:Array<Int> = [0, 1]
     if n == 0{
         return 0
     }else if n == 1{
         return 1
     }else{
        for i in 2...n{
            a.append( ((a[i-1] % 1234567) + (a[i-2] % 1234567)) % 1234567 )
        }
     }
     return a[n]
 }
 print(solution(5))

