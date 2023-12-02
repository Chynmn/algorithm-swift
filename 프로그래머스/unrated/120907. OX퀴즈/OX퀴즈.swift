import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []
    
    for q in quiz {
        var list = q.split(separator: " ")
        
        if String(list[1]) == "+" {
            answer.append(Int(String(list[0]))! + Int(String(list[2]))! == Int(String(list[4]))! ? "O" : "X")
        } else {
            answer.append(Int(String(list[0]))! - Int(String(list[2]))! == Int(String(list[4]))! ? "O" : "X")
        }
    }
    
    return answer
}