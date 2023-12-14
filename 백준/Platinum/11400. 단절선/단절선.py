import sys
sys.setrecursionlimit(10 ** 5)

n, m = map(int, sys.stdin.readline().split())
graph = [[] for _ in range(n + 1)]
for _ in range(m):
    a, b = map(int, sys.stdin.readline().split())
    graph[a].append(b)
    graph[b].append(a)

articulation = []
dfsn = [0] * (n + 1)
idx = 1


def dfs(cur, parent):
    global idx
    dfsn[cur] = idx
    low = idx
    idx += 1

    for nxt in graph[cur]:
        if nxt == parent:
            continue

        if dfsn[nxt]:
            low = min(low, dfsn[nxt])
        else:
            child = dfs(nxt, cur)
            low = min(low, child)
            if dfsn[cur] < child:
                articulation.append(tuple(sorted((cur, nxt))))
    
    return low


dfs(1, 0)

articulation.sort()
print(len(articulation))
for edge in articulation:
    print(*edge)