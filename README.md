# Swift-Algorithm-Package


## 배열

<details><summary>범위 출력</summary>

~~~

~~~

</details>

## String

<details><summary>String 추가</summary>

~~~

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
