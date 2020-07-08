//
//  main.swift
//  capet
//
//  Created by 1 on 2020/07/08.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result:Array<Int> = []
    
    var sum = brown + yellow
    var x = 0
    var y = 0
    for i in 1 ... sum {
        if (sum % i) == 0{
            x = sum / i
            y = i
        }
        
        if (x - 2) * (y - 2) == yellow{
            break
        }
       
    }

    result.append(x)
    result.append(y)
    print(result)
    return result
}
solution(8, 1)
//기댓값 : 8 3
//solution(10, 2) 4 3

/*

  //카운트의 약수 가져오기
  var countArray:Array<Int> = []
  
  for i in 1 ... count{
      if count % i == 0{
          countArray.append(i)
      }
  }
  
  
  print(countArray)
  //카운트 어레이 가운데 값 가져오기
  //짝수
  if countArray.count % 2 == 0{
      let mid1 = countArray.index(countArray.startIndex, offsetBy: countArray.count / 2)
      let mid2 = countArray.index(countArray.startIndex, offsetBy: (countArray.count / 2) - 1)
      result.append(countArray[mid1])
      result.append(countArray[mid2])
  }else{
      let mid = countArray.index(countArray.startIndex, offsetBy: countArray.count / 2)
      result.append(countArray[mid])
  }
  
 
  if result.count == 1{
      result.append(result[0])
  }
  
  
  print(result)
 
 
 */
