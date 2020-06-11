import Foundation

public class Node{
     var value:Int
     public var next:Node?
    
    init(value:Int, next:Node? = nil){
        self.value = value
        self.next = next
    }

}
extension Node{
 func ex(){
          guard let next = next else{
              return print("\(value)")
          }
          return print("\(value)" + "\(next)")
  }

}





let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

print(node1)



