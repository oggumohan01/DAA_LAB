def matrix_chain_order(p):
    n = len(p) - 1

    # m[i][j] = minimum number of scalar multiplications
    m = [[0] * (n + 1) for _ in range(n + 1)]

    # s[i][j] = position of optimal split
    s = [[0] * (n + 1) for _ in range(n + 1)]

    # length is the chain length
    for length in range(2, n + 1):
        for i in range(1, n - length + 2):
            j = i + length - 1
            m[i][j] = float('inf')

            for k in range(i, j):
                cost = (m[i][k] +
                        m[k + 1][j] +
                        p[i - 1] * p[k] * p[j])

                if cost < m[i][j]:
                    m[i][j] = cost
                    s[i][j] = k

    return m, s


# Print optimal parenthesization
def print_parenthesis(s, i, j):
    if i == j:
        print("A" + str(i), end="")
    else:
        print("(", end="")
        print_parenthesis(s, i, s[i][j])
        print_parenthesis(s, s[i][j] + 1, j)
        print(")", end="")


# Matrix dimensions
# A1 = 10x20
# A2 = 20x30
# A3 = 30x40
# A4 = 40x30

p = [10, 20, 30, 40, 30]

m, s = matrix_chain_order(p)

n = len(p) - 1

print("Chain Matrix Multiplication using Dynamic Programming")
print("------------------------------------------------------")

print("Minimum number of scalar multiplications:", m[1][n])

print("Optimal Parenthesization: ", end="")
print_parenthesis(s, 1, n)

print()
