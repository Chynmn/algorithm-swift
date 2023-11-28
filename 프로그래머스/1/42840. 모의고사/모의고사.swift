import Foundation

func solution(_ answers:[Int]) -> [Int] {
    // 학생들의 찍는 패턴
    let student1 = [1,2,3,4,5]
    let student2 = [2,1,2,3,2,4,2,5]
    let student3 = [3,3,1,1,2,2,4,4,5,5]
    
    // 각 학생의 정답 수 관리를 위한 Dictionary(key:, value:)
    var dic: [Int: Int] = [:]
    
    // 시험의 답과 학생의 패턴을 비교
    for i in 0..<answers.count {
        // 패턴과 정답이 같을 때 value를 1 증가
        if answers[i] == student1[i%student1.count] { dic[1] = (dic[1] ?? 0 ) + 1 }
        if answers[i] == student2[i%student2.count] { dic[2] = (dic[2] ?? 0 ) + 1 }
        if answers[i] == student3[i%student3.count] { dic[3] = (dic[3] ?? 0 ) + 1 }
    }
    let result = dic.filter { $0.value == dic.values.max()! }.keys.sorted()
    
    return result
}