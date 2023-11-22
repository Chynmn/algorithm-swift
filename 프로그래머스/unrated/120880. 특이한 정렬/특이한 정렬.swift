import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted(by: { (abs($0 - n), -$0) < (abs($1 - n), -$1) })
}