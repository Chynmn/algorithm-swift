var a = Int(readLine()!)!
var i = 1
if a < 10 {
    a = a * 10
}
var c = a
while true {
var ten = c / 10
var one = c % 10

var sum = ten + one
var sumright = sum % 10
var sum2 = one*10 + sumright
    if a == sum2 {
        break
    }
    c = sum2
    i = i + 1
}
print(i)