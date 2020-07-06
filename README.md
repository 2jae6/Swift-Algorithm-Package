# Swift-Algorithm-Package


## 배열

<details><summary>2차원 배열 초기화</summary>

~~~
 var test: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: 4)
// 숫자 0 을 test[3][4] 만큼 만든다.    
~~~

</details>

<details><summary>모든 String 원소 String으로 합치기</summary>

~~~
//result 배열 c String
 c = result.joined()
~~~

</details>

<details><summary>모든 String 원소 String으로 합치기</summary>

~~~
//result 배열 c String
 c = result.reduce("", +)
~~~

</details>

<details><summary>2차원 배열에서 한 인덱스를 기준으로 뽑기</summary>

~~~
    for i in 0 ..< clothes.count{
        let key = clothes[i][1]
        let valueCount = kind[key] ?? 1
        kind[key] = valueCount + 1
    }
~~~

</details>

<details><summary>Set으로 쉽게 배열 중복 제거</summary>

~~~
   print(Array(Set(sortArr)))
~~~

</details>

<details><summary>Set을 사용하지 않고 배열 중복제거 확장</summary>

~~~
  extension Array where Element:Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()

        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }

        return result
    }
}
~~~

</details>

<details><summary>조합구하기 ab와 ba 같은</summary>

~~~
 func allPossibleCombinations() -> [[Element]] {
    var output: [[Element]] = [[]]
    for groupSize in 1...self.count {
        for (index1, item1) in self.enumerated() {
            var group = [item1]
            for (index2, item2) in self.enumerated() {
                if group.count < groupSize {
                    if index2 > index1 {
                        group.append(item2)
                        if group.count == groupSize {
                            output.append(group)
                            group = [item1]
                            continue
                        }
                    }
                } else {
                    break
                }
            }
            if group.count == groupSize {
                output.append(group)
            }
        }
    }
    return output
}

}
~~~

</details>

<details><summary>두개의 배열 중 겹치는 것 </summary>

~~~
let arr1 = array1.filter{!array2.contains($0)}
~~~

</details>

<details><summary>콤비네이션 구하기 함수 </summary>

~~~
func combinations(_ array: [Character]) -> [String] {
    if array.count == 0 { return [] }

    return (0..<array.count).flatMap { i -> [String] in
        var removedArray = array
        let elem = String(removedArray.remove(at: i))
        return [elem] + combinations(removedArray).map { elem + $0 }
    }
}
~~~

</details>

## String

<details><summary>String 반복하기</summary>

~~~
String(repeating: "A", count: 3)
//A를 3번 반복
~~~

</details>


<details><summary>String 처음부터, 끝부터 일정 수만큼 가져오기</summary>

~~~
let test = "ABCD"
test.prefix(2) // "AB"
test.suffix(2) // "CD"
~~~

</details>

<details><summary>정규 표현식</summary>

~~~
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
~~~

</details>

<details><summary>String 처음부터 특정 갯수 나누기</summary>

~~~
          while !s.isEmpty{
            let a = String(s.prefix(i))
            splitS.append(a)
            
            if s.count < i{
                s.removeAll()
            }else{
                s.removeFirst(i)
            }
            
        }
~~~

</details>

## Int

<details><summary>자연수를 각 자리 별로 나누기 10 -> 1, 0</summary>

~~~
    let strNum = Array(String(x))
    print(strNum)
    let intNum = strNum.map{Int(String($0))!}
    print(intNum)
~~~

</details>


## 입력 받기

 <details><summary>한번에 두 개 변수에 정수를 입력 받기</summary>
  
  ~~~
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
  ~~~

</details>

<details><summary>한번에 두 개 변수에 정수를 입력 받기</summary>
  
  ~~~
  var input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0]
var k = input[1]
  ~~~
  
 </details>
  
    
 <details><summary>한번에 두 개 변수에 정수를 입력 받기</summary>
  
  ~~~
    var nm: Array<String> = []
    var n: Int
    var m: Int
    nm = readLine()!.components(separatedBy: " ")
    n = Int(nm[0])!
    m = Int(nm[1])!
  ~~~

</details>

## 잡다한 코드

 <details><summary>최대 공약수 찾기</summary>
  
  ~~~
func gcd(_ a: Int, _ b: Int) -> Int {
  let r = a % b
  if r != 0 {
    return gcd(b, r)
  } else {
    return b
  }
}
  ~~~

</details>

 <details><summary>최소 공배수 찾기</summary>
  
  ~~~
func lcm(_ m: Int, _ n: Int) -> Int {
  return m*n / gcd(m, n)
}
  ~~~

</details>

 <details><summary>2진수 16진수 만들기</summary>
  
  ~~~
  //radix의 수만 2나 16으로 바꿔주면 됌
let a = 15
let b = String(a, radix: 2)
  ~~~

</details>

 <details><summary>소수 찾기</summary>
  
  ~~~
   var suso: Array<Int> = []
    var arr = Array.init(repeating: false, count: bigNum + 1)
    var count = 0
    for i in 2 ... bigNum{
        if arr[i] == false{
            count += 1
            suso.append(i)
            for j in stride(from: i, to: bigNum + 1, by: i){
                arr[j] = true
            }
        }
        
    }
  ~~~

</details>
