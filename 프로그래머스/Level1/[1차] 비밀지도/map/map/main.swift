//
//  main.swift
//  map
//
//  Created by 1 on 2020/06/22.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    func makeThree(one:String, two:String)->String{
        let a = Array(one)
        let b = Array(two)
        var result:Array<String> = []
        var c = ""
        for i in 0 ..< a.count{
            if a[i] == "1" || b[i] == "1"{
               result.append("1")
            }else{
                result.append("0")
            }
           
        }
        
        c = result.joined()
        return c
    }
    
    func makeShap(three:String) -> String{
        var thr = Array(three)
        var resultArray:Array<String> = []
        var resultText = ""
        
        for i in 0 ..< thr.count{
            if thr[i] == "1"{
                resultArray.append("#")
            }else{
                resultArray.append(" ")
            }
        }
        resultText = resultArray.reduce("", +)
        print(resultText)
        return resultText
    }
    
    
    for i in 0 ..< arr1.count{
        var one = String(arr1[i], radix: 2)
        var two = String(arr2[i], radix: 2)
    
        if one.count < n{
            one = String(repeating: "0", count: n - one.count) + one
        }
        if two.count < n{
            two = String(repeating: "0", count: n - two.count) + two
        }
       // print(one)
       // print(two)
       var three = makeThree(one: one, two: two)
       //print(three)
        var end = makeShap(three: three)
        answer.append(end)
       // print(end)
        
    }
    
    
    //2진수로 바꾼다.
    //n보다 작으면 앞을 0으로 채워준다
    //one과 two에서 공통으로 1인부분은 1로 three 만들어준다.
    //1인부분은 #으로 바꿔준다.
    
    
    
    
    print(answer)
    
    return answer
}
solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
