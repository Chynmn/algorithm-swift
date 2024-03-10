let input = readLine()!.split(separator:" ").map{Int(String($0))!}
let (N, K) = (input[0], input[1])
var numArray = readLine()!.split(separator:" ").map{Int(String($0))!}
var count = 0
var answer = -1

func mergeSort(_ array: [Int], _ start: Int, _ end: Int) {
    if array.count <= 1 { return }
    if start < end && count < K {
        let center = (start + end) / 2
        mergeSort(array, start, center)
        mergeSort(array, center + 1, end)
        merge(start, center, end)
    }
}

func merge(_ start: Int, _ center: Int, _ end: Int) {
    var i = start
    var j = center + 1
    var t = 0
    var temp = [Int]()
    
    while i <= center && j <= end {
        if numArray[i] <= numArray[j] {
            temp.append(numArray[i])
            i += 1
        } else {
            temp.append(numArray[j])
            j += 1
        }
    }
    
    while i <= center {
        temp.append(numArray[i])
        i += 1
    }
    
    while j <= end {
        temp.append(numArray[j])
        j += 1
    }
    
    i = start
    while i <= end {
        numArray[i] = temp[t]
        count += 1
        if count == K {
            answer = temp[t]
            break
        }
        i += 1
        t += 1
    }
}

mergeSort(numArray, 0, N - 1)
print(answer)