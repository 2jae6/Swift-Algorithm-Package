import Foundation
var sampleArray:[Int] = []
var test = readLine()!.charact

let n = Int(readLine()!)
func quickSort(array: [Int]) -> [Int] {
    
    if array.count < 2 { // 배열이 비어있거나 하나만 있는 경우는 이미 '정렬'
        return array
    } else {
        let pivot = array[0] // 피봇의 기준이 무엇이냐에 따라 정렬의 과정도 달라진다. 일단 첫번째(4)를 기준
        let less = array.filter { $0 < pivot } // 피봇을 기준으로 피봇보다 같거나 작은 수들을 less 에 담는다.
        let greater = array.filter { $0 > pivot} // 피봇을 기준으로 피봇보다 같거나 큰 수들을 greater 에 담는다.
        return quickSort(array: less) + [pivot] + quickSort(array: greater) // 위의 과정을 반복한다.
    }
}
print(quickSort(array: sampleArray))
