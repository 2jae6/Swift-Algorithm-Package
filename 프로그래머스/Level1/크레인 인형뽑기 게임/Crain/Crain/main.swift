//
//  main.swift
//  Crain
//
//  Created by 1 on 2020/06/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var moves = moves
    var basket: Array<Int> = []
    var result = 0
    
    for i in 0 ... moves.count - 1{
        var moveNum = moves[i] - 1
        for j in 0 ... board.count - 1{
            if board[j][moveNum] != 0{
                if basket.last == board[j][moveNum]{
                    result += 1
                    basket.popLast()
                }else{
                    basket.append(board[j][moveNum])
                    
                }
                board[j][moveNum] = 0
                break
            }
        }
    }
    return result * 2
}
