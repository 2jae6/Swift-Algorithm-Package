import Foundation

class Node{
    var value:Int
    var next:Node?
    
    init(value:Int, next:Node? = nil){
        self.value = value
        self.next = next
    }
    
}
extension Node: CustomStringConvertible{
    var description: String {
        guard let next = next else{
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}


func ex(description: String){
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)

    node1.next = node2
    node2.next = node3
    
    print(node1)
}
ex(description: "S")





