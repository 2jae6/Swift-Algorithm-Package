import Foundation

func factorial_recur(n:Int) -> Int {
    if n == 0 { // 요구사항2. 종료조건이면서, 0! 은 1 인 것을 만족시켜줌.
        return 1
    }
    return n * factorial_recur(n: n-1) // 재귀호출.
    // 요구사항 1. 문제의 크기가 작은 방향으로 이동해서 작은것 먼저 해결 (n-1 이므로 1씩 작아지죠?)
}

factorial_recur(n: 3)
