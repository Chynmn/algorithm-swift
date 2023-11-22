import Foundation

let pron = ["aya", "ye", "woo", "ma"]
var result = 0

func solution(_ babbling:[String]) -> Int {
    for i in 0..<babbling.count {
        for j in 0..<pron.count {
            if babbling[i].hasPrefix(pron[j]) {
                let nextString = babbling[i].components(separatedBy: pron[j])[1]
                
                // 문자가 일치해 뒤에 더이상 확인할 문자가 없는 경우
                if nextString == "" {
                    result += 1
                    break
                } else {
                    // 확인할 문자가 남아 있는 경우
                    solution([nextString])
                }
            }
        }
    }
    
    return result
}