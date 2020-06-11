//
//  main.swift
//  7568
//
//  Created by 1 on 2020/02/10.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

print("Hello, World!")

var n = Int(readLine()!)!
var human = [[Int]]()
var rank:[Int] = []


//입력받는 반복문
for i in 0...n - 1{
    human.append(contentsOf: [readLine()!.components(separatedBy: " ").map{Int($0)!}])
    print(human)
    rank.append(1)
}
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
for i in 0...n - 1{
    for j in 0...n - 1{
        if (human[i][0] < human[j][0] && human[i][1] < human[j][1]){
            rank[i] = rank[i] + 1
        }
    }
}

for i in 0...n - 1{
    print(rank[i])

}
