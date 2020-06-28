//
//  main.swift
//  DartGame
//
//  Created by 1 on 2020/06/25.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

extension String{
    func getArrayAfterRegex(regex: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self,
                                        range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}

func solution(_ dartResult:String) -> Int {
    //점수와 보너스 옵션으로 나눈다.
    //해당하는 보너스를 계산해준다.
    //옵션을 더해준다.
    var score:Array<Double> = []
   // print(dartResult.getArrayAfterRegex(regex: "[0-9]+[(S|D|T)][(*|#)]?"))
    let round = dartResult.getArrayAfterRegex(regex: "[0-9]+[(S|D|T)][(*|#)]?")
    //print(round[0])
    
    //각 라운드당 점수 계산하여 score에 추가
    for i in 0 ..< round.count{
       // print(round[i])
        let scoreimsi = round[i].getArrayAfterRegex(regex: "[0-9]+")
     //   print(scoreimsi)
        let scoreDouble = Double(scoreimsi[0])!
        let bonus = round[i].getArrayAfterRegex(regex: "[(S|D|T)]")
     //   print(bonus)
        let option = round[i].getArrayAfterRegex(regex: "[*|#]?")
     //   print(option)
        
        if bonus[0] == "S"{
            let result = pow(scoreDouble, 1)
            score.append(result)
        }else if bonus[0] == "D"{
            let result = pow(scoreDouble, 2)
            score.append(result)
        }else if bonus[0] == "T"{
            let result = pow(scoreDouble, 3)
            score.append(result)
        }
        //옵션 결정 > 이전 scoreArray에서 값 두배 현재것도 두배
        if option[2] == "*"{
            if i == 0{
                score[i] *= 2
            }else{
            score[i] *= 2
            score[i - 1] *= 2.0
            }
            
        }else if option[2] == "#"{
            score[i] *= -1
        }
    }
    
    
    print(score)
    print(score.reduce(0, +))
    return Int(score.reduce(0, +))
}
//37  2 8 27
solution("1S2D*3T")
