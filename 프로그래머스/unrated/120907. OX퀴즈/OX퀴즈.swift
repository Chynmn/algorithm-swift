import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []
    
    for q in quiz {
        var list = q.components(separatedBy: " ")
        
        if String(list[1]) == "+" {
            answer.append(Int(list[0])! + Int(list[2])! == Int(list[4])! ? "O" : "X")
        } else {
            answer.append(Int(list[0])! - Int(list[2])! == Int(list[4])! ? "O" : "X")
        }
    }
    
    return answer
}