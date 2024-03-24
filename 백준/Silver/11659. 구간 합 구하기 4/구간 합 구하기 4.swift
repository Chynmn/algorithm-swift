import Foundation

func solution() -> String {
    var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = input[0]
    let M = input[1]
    
    let arr = readLine()!.split(separator: " ").map{ Int64(String($0))! }
    var psum = Array(repeating: arr[0], count: N)
    
    for i in 1..<N {
        psum[i] = psum[i-1] + arr[i]
    }
    
    var result = ""
    
    for _ in 0..<M {
        input = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let l = input[0] - 1
        let h = input[1] - 1
        
        let sumFromLToH = psum[h] - (l == 0 ? 0 : psum[l - 1])
        result.write("\(sumFromLToH)\n")
    }
    
    return result
}

print(solution())