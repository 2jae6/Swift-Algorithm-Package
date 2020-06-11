import Foundation

var rightArray: Array<String> = []
var leftArray: Array<String> = []


rightArray.append("1번 추가")
rightArray.append("2번 추가")
rightArray.append("3번 추가")
print(rightArray)

leftArray = rightArray.reversed()
leftArray.popLast()
print(leftArray)


