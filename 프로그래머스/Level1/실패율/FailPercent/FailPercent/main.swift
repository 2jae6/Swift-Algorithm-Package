//
//  main.swift
//  FailPercent
//
//  Created by 1 on 2020/06/23.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var fail:Dictionary = [Int: Double]()
    // 각 스테이지별 실패율 구하기
    // 실패율 저장하기
    for i in 1 ... N{
        //도달한 수
        let a = stages.filter{$0 >= i}.count
        //클리어한 수
        let b = a - stages.filter{$0 > i}.count
        //실패율
        let failCount = Double(b) / Double(a)
            
        fail[i] = failCount
        
        //실패율 인덱스와 12345의 인덱스를 동일 시 시킨 후 소트
        
    }
    let end = fail.sorted(by: <).sorted(by: {$0.value > $1.value})
    print(end)
    let result = end.map{$0.key}
    print(result)
    //실패율이 높은 순서대로 내림차순 숫자 등록
    
    
    
    return result
}
// [3,4,2,1,5]
solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
