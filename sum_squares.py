# sum_squares.py

def sum_squares(n: int) -> int:
    s = 0
    i = 1
    while i <= n:
        ii = i          # mirror the Mojo-style temp
        s = s + ii * ii
        i = i + 1
    return s

def main():
    N = 10_000_000
    ans = sum_squares(N)
    print("sum_squares(", N, ") =", ans)

if __name__ == "__main__":
    main()
