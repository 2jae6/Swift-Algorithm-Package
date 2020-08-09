//
//  main.swift
//  Keypad
//
//  Created by 1 on 2020/08/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var leftHand = 10
    var rightHand = 12

    for i in numbers{
        var num = i

        if (num == 1 || num == 4 || num == 7){
            leftHand = num
            result += "L"
        }else if (num == 3 || num == 6 || num == 9) {
            rightHand = num
            result += "R"
        }else if (num == 2 || num == 5 || num == 8 || num == 0){
            // 거리 구하는 방법? 2라고 가정하고 오른손가락이 6이라 해보자 간격은 2
    
            if num == 0{
                num = 11
            }
            
            var left = abs(((num - leftHand) / 3) + ((num - leftHand) % 3))
            var right = abs(((num - rightHand) / 3) + ((num - rightHand) % 3))
            
            if left < right{
             leftHand = num
             result += "L"
            }else if right < left{
                rightHand = num
                result += "R"
            }else{
                if hand == "right"{
                    rightHand = num
                    result += "R"
                }else if hand == "left"{
                    leftHand = num
                    result += "L"
                }
            }
            
        }
        
        //print("왼손위치:\(leftHand) 오른손 위치:\(rightHand) 눌러야할 숫자:\(i) 사용한 손:\(result) ")
    }
    return result
}
solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left")
solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right")
