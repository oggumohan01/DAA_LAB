# Practical 6: Implementation of Chain Matrix Multiplication Using Dynamic Programming

## Aim

To implement the **Matrix Chain Multiplication** problem using the **Dynamic Programming** technique and find the minimum number of scalar multiplications required to multiply a given sequence of matrices.

## Summary

**Matrix Chain Multiplication** is an optimization problem in which we have a sequence of matrices that need to be multiplied together. The order in which the matrices are multiplied can greatly affect the number of calculations required.

The main objective is **not to change the order of the matrices**, but to find the best way to place parentheses so that the total number of scalar multiplications is minimum.

Dynamic Programming is used to divide the problem into smaller subproblems and store their results. This avoids repeated calculations and efficiently finds the optimal multiplication order.

For example, if we have:

```text
A × B × C
```

There are two possible ways:

```text
(A × B) × C
A × (B × C)
```

Dynamic Programming determines which order requires fewer scalar multiplications.

## Problem Statement

Given a sequence of matrices:

```text
A1, A2, A3, ..., An
```

find the most efficient order of multiplication that minimizes the total number of scalar multiplications.

## Algorithm

1. Start the program.
2. Store the dimensions of all matrices in an array.
3. Create a DP table to store the minimum multiplication cost.
4. Consider chains of length 2, 3, and so on.
5. For each possible position to split the matrix chain:

   * Calculate the multiplication cost.
   * Compare it with the current minimum cost.
6. Store the minimum cost in the DP table.
7. The final DP table value gives the minimum number of scalar multiplications.
8. Display the minimum multiplication cost.
9. Stop the program.

## Recurrence Relation

For matrices from `Ai` to `Aj`:

```text
M[i][j] = min(
    M[i][k] + M[k+1][j]
    + p[i-1] × p[k] × p[j]
)
```

where `k` represents the possible splitting position.

## Example

Consider the following matrices:

```text
A1 = 10 × 30
A2 = 30 × 5
A3 = 5 × 60
```

The dimension array is:

```text
[10, 30, 5, 60]
```

The minimum number of scalar multiplications is:

```text
4500
```

## Python Program

```python
# Practical 6
# Implementation of Matrix Chain Multiplication
# Using Dynamic Programming

def matrix_chain_multiplication(p):
    n = len(p) - 1

    # Create DP table
    dp = [[0] * (n + 1) for _ in range(n + 1)]

    # Chain length
    for length in range(2, n + 1):

        for i in range(1, n - length + 2):
            j = i + length - 1

            dp[i][j] = float('inf')

            # Find the best split
            for k in range(i, j):
                cost = (
                    dp[i][k]
                    + dp[k + 1][j]
                    + p[i - 1] * p[k] * p[j]
                )

                if cost < dp[i][j]:
                    dp[i][j] = cost

    return dp[1][n]


# Matrix dimensions
# A1 = 10 x 30
# A2 = 30 x 5
# A3 = 5 x 60

dimensions = [10, 30, 5, 60]

# Calculate minimum multiplication cost
minimum_cost = matrix_chain_multiplication(dimensions)

# Display result
print("Matrix Dimensions:", dimensions)
print("Minimum number of scalar multiplications:", minimum_cost)
```

## Output

```text
Matrix Dimensions: [10, 30, 5, 60]
Minimum number of scalar multiplications: 4500
```

## Time Complexity

**O(n³)**

There are three nested loops used to calculate the minimum multiplication cost.

## Space Complexity

**O(n²)**

A two-dimensional DP table is used to store the minimum multiplication costs.

## Advantages

* Finds the optimal matrix multiplication order.
* Avoids repeated calculations.
* Efficiently solves large matrix-chain problems compared with checking every possible parenthesization.
* Uses the Dynamic Programming technique effectively.

## Result

The Matrix Chain Multiplication problem was successfully implemented using **Dynamic Programming**, and the minimum number of scalar multiplications required to multiply the given matrices was calculated.

## Conclusion

Dynamic Programming provides an efficient solution to the Matrix Chain Multiplication problem. By dividing the matrix chain into smaller subchains and storing their optimal costs, the algorithm finds the multiplication order that requires the **minimum number of scalar multiplications**.

**Practical 6 successfully completed.**
