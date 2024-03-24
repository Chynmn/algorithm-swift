let n = Int(readLine()!)!

var links: [[Int]] = Array(repeating: [], count: n + 1)
var visited = Array(repeating: false, count: n + 1)

for _ in 1..<n {
  let value = readLine()!.split(separator: " ").map { Int($0)! }
  links[value[0]].append(value[1])
  links[value[1]].append(value[0])
}

var parents = Array(repeating: 0, count: n + 1)

func dfs(start: Int, parent: Int) {
  visited[start] = true
  parents[start] = parent
  
  for i in links[start] {
    if !visited[i] {
      dfs(start: i, parent: start)
    }
  }
}

dfs(start: 1, parent: 0)

for i in 2...n {
  print(parents[i])
}