import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []
    
    for i in quiz {
        var list = i.split(separator: " ")
        
        if String(list[1]) == "+" {
            if Int(String(list[0]))! + Int(String(list[2]))! == Int(String(list[4]))! {
                answer.append("O")
            } else {
                answer.append("X")
            }
        } else {
            if Int(String(list[0]))! - Int(String(list[2]))! == Int(String(list[4]))! {
                answer.append("O")
            } else {
                answer.append("X")
            }
        }
    }
    
    return answer
}