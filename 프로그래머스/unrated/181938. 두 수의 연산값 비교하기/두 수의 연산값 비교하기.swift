import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let result = Int(String(a) + String(b))!
    let comp = 2 * a * b
    
    if(result >= comp) {
        return result
    } else {
        return comp
    }
    
    return 0
}