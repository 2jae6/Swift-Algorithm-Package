//
//  main.swift
//  StrangeString
//
//  Created by 1 on 2020/06/18.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    let str = s.components(separatedBy: " ")
  
    
    for i in 0 ..< str.count{
        for j in 0 ..< str[i].count{
            var index = str[i].index(str[i].startIndex, offsetBy: j)
            if j % 2 == 0{
                result.append(str[i][index].uppercased())
            }else{
                result.append(str[i][index].lowercased())
            }
            
        }
        result.append(" ")
    }
    result.removeLast()
    print(result)
    return result
}
solution("try hello world")
/*
 방법은 여러개
 
 스플릿으로 나눠서 각 단어별로 인덱스에따라 업퍼케이스 후에 다 됐으면 합치기 합칠 때 중간에 공백 다시 넣어주기
 
 인덱스를 확인하고 바꿔나가다가 공백을 만나면 다시 인덱스를 0으로 초기화
 
 */
