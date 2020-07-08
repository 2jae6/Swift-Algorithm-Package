//
//  main.swift
//  sosu
//
//  Created by 1 on 2020/07/06.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ numbers:String) -> Int {
    
    //내림차순으로 가장 큰 수 구하기
    var num = Array(numbers).map{String($0)}.sorted(by: >)

    var bigNum = Int(num.reduce("", +))!
  
    
      //내림차순까지 소수 구하기
    var sosu: Array<Int> = []
    var arr = Array.init(repeating: false, count: bigNum + 1)
    for i in 2 ... bigNum{
        if arr[i] == false{
            sosu.append(i)
            for j in stride(from: i, to: bigNum + 1, by: i){
                arr[j] = true
            }
        }
        
    }

    
    //소수 중 해당 글자가 모두 있는지 확인 있다면 카운트 1
    var count = 0
    for j in 0 ..< sosu.count{
        
        let check = Array(String(sosu[j]))
        var checkBool = false
        var checkNum = num
        for z in 0 ..< check.count{
            if checkNum.contains(String(check[z])){
                checkBool = true
                let index = checkNum.index(of: String(check[z]))!
                checkNum[index] = ""
            }else{
                checkBool = false
                break
            }
        }
        
        if checkBool == true{
        
            count += 1
            checkBool = false
        }
        
    }
    print(count)
    
    return count
}
solution("17")
