import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    //  없는 사람 0  옷있는 사람 1 여분도 있는 사람2
    var n = n
    var lost = lost
    var reserve = reserve
    var student = [Int](repeating: 1, count: n)
    for i in lost{
        var index = i - 1
        student[index] = student[index] - 1
    }
    
    for j in reserve{
        var index = j - 1
        student[index] = student[index] + 1
    }
    
    //0주변에 있는 사람 찾기
    for (index, value) in student.enumerated(){
        if value == 0{
            if (index > 0 && student[index - 1] == 2){
                student[index - 1] -= 1
                student[index] += 1
            }else if (index < student.count - 1) && student[index + 1] == 2{
                student[index + 1] -= 1
                student[index] += 1
            }
        }
    }
    
    print(student)
    var result = student.filter{($0 >= 1)}.count
    print(result)
    
    return result
}
