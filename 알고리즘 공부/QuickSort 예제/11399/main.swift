//
//  main.swift
//  11399
//
//  Created by 1 on 2020/02/05.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation
var sampleArray:[Int] = []
var pArray:[String] = []
var p:[Int] = []
var result = 0
let n = Int(readLine()!)
pArray = readLine()!.components(separatedBy: " ")

print(pArray)
p = pArray.map {Int($0)!}
print(p)



func quickSort(array: [Int]) -> [Int] {
    
    if array.count < 2 { // 배열이 비어있거나 하나만 있는 경우는 이미 '정렬'
        return array
    } else {
        let pivot = array[0] // 피봇의 기준이 무엇이냐에 따라 정렬의 과정도 달라진다. 일단 첫번째 원소를 기준
        let less = array.filter { $0 < pivot } // 피봇을 기준으로 피봇보다 같거나 작은 수들을 less 에 담는다.
        let equal = array.filter{ $0 == pivot}
        let greater = array.filter { $0 > pivot} // 피봇을 기준으로 피봇보다 같거나 큰 수들을 greater 에 담는다.
        return quickSort(array: less) + equal + quickSort(array: greater) // 위의 과정을 반복한다.
    }
}

print(quickSort(array: p))
p = quickSort(array: p)

for i in 0...p.count - 1{
    if i == 0 {
     p[i] = p[i]
    }else{
    p[i] = p[i - 1] + p[i]
    }
    result = result + p[i]
    print("\(i)번쨰입니다: \(result)")
}

