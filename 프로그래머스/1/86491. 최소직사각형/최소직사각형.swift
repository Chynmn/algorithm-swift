import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var width = 0
    var height = 0
    
    for i in sizes {
        width = max(width, i.max()!)
        height = max(height, i.min()!)
    }
    
    return width * height
}