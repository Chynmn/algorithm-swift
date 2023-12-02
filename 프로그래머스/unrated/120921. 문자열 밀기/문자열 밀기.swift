import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var cha = Array(A)
    
    for i in 0..<cha.count {
        
        if String(cha) == B {
            return i
        }
        
        cha.insert(cha.last!, at: 0)
        
        cha.removeLast()
    }
    
    return -1
}