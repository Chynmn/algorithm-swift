import Foundation

let T = Int(readLine()!)!
for _ in 1...T {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    var r1 = arr[2]
    var r2 = arr[5]
    let r = ((arr[0] - arr[3]) * (arr[0] - arr[3])) + ((arr[1] - arr[4]) * (arr[1] - arr[4]))
    
    if r2 > r1 {
        let temp = r1
        r1 = r2
        r2 = temp
    }
    
    
    if r1 == r2 && r == 0 {
        print("-1")
    }else if (r1 - r2) * (r1 - r2) > r || (r1 + r2) * (r1 + r2) < r  {
        print("0")
    }else if (r1 + r2) * (r1 + r2) == r || r  == (r1 - r2) * (r1 - r2) {
        print("1")
    }else {
        print("2")
    }
}