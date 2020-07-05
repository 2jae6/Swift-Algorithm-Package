//
//  main.swift
//  StringAp
//
//  Created by 1 on 2020/07/03.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Int {
    
    
    var resultString = s
    
    if s.count == 1{
        return 1
    }
    
    
    for i in 1 ... s.count / 2{
        var s = s
        var splitS:Array<String> = []
        //문자열 자르기
        while !s.isEmpty{
            let a = String(s.prefix(i))
            splitS.append(a)
            
            if s.count < i{
                s.removeAll()
            }else{
                s.removeFirst(i)
            }
            
        }
        
        
        
        //문자열 압축하기
        var prev = ""
        var word = ""
        var count = 1
        for z in 0 ..< splitS.count{
            if prev == ""{
                prev = splitS[0]
            }else{
                if prev == splitS[z]{
                    count += 1
                }else{
                    if count == 1{
                        word.append("\(prev)")
                        
                    }else{
                        word.append("\(count)\(prev)")
                        
                    }
                    prev = splitS[z]
                    count = 1
                }
                
            }
            
        }
        
        if count == 1{
            word.append("\(prev)")
            
        }else{
            word.append("\(count)\(prev)")
            
        }
        
        
        
        if word.count < resultString.count{
            resultString = word
        }
        
    }
    
    //문자열 중 가장 짧게 축약된 문자열의 길이
    return resultString.count
}
//2a2ba3c

solution("abcabcdede")
