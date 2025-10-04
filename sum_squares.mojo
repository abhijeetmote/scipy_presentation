fn sum_squares(n: Int) -> Int128:
    var s: Int128 = 0
    var i: Int = 1
    while i <= n:
        var ii: Int128 = Int128(i)   # promote before squaring
        s = s + ii * ii
        i = i + 1
    return s

fn main():
    var N: Int = 10_000_000
    var ans: Int128 = sum_squares(N)
    print("sum_squares(", N, ") =", ans)
