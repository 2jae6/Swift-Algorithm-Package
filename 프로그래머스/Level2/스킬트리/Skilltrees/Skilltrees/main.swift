//
//  main.swift
//  Skilltrees
//
//  Created by 1 on 2020/09/08.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation
//
//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//    var result = 0
//
//
//
//    for i in skill_trees{
//        var currentSKill = ""
//
//        for j in i{
//            if skill.contains(j){
//                currentSKill += String(j)
//            }
//        }
//
//        if skill.hasPrefix(currentSKill){
//            result += 1
//        }
//    }
//    print(result)
//    return result
//}

func solution(_ skill:String, _ skill_trees:[String]) -> Int {

    func available(_ s: String, _ t: String) -> Bool {
        let alza = t.filter { s.contains($0) }
        return s.starts(with: alza)
    }

    return skill_trees.map { available(skill, $0) }.filter { $0 }.count
}

solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"])
