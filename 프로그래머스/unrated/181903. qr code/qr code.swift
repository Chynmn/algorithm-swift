import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let code = code.map { String($0) }
    return stride(from: 0, to: code.count, by: q).reduce("") {
        let index = $1 + r
        return index < code.count ? $0 + code[index] : $0
    }
}