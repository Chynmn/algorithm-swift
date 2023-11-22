import Foundation

func solution(_ money:Int) -> [Int] {
    let ia = 5500
    return [money/ia, money%ia]
}