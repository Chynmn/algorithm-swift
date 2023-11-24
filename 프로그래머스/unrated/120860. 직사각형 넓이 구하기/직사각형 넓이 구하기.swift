import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
    
    return (dots.last![0] - dots.first![0]) * (dots.last![1] - dots.first![1])
}