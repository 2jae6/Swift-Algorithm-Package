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
