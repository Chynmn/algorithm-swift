import Foundation

func solution(_ arr:[Int]) -> [Int] {
        var cnt:Float = 0
    var arr:Array<Int> = arr
    
    while arr.count != Int(pow(2.0, cnt)){
        if arr.count == Int(pow(2.0, cnt)) {
            break
        }else if arr.count > Int(pow(2.0, cnt)) {
                cnt += 1
        } else {
            let appendZero = Int(pow(2.0, cnt)) - arr.count
            for _ in 0..<appendZero {
                arr.append(0)
            }
        }
    }
    return arr
}