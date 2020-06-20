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
func gcd(_ n:Int, _ m:Int) -> Int {
    
    //최대 공약수 구하기
    let r = n % m
    if r != 0{
        return solution(m, r)
    }else{
        print(m)
        result.append(m)
        return result
    }
}
  ~~~

</details>
