# README – Practical 7

## Practical 7: Implementation of Making a Change Problem Using Dynamic Programming

### 1. Introduction

The **Making a Change Problem**, also called the **Coin Change Problem**, is a common optimization problem in computer science. The objective is to determine the **minimum number of coins required to make a given target amount** using a set of available coin denominations.

For example, if the available coins are:

```text
1  3  4  5
```

and the target amount is:

```text
7
```

The minimum number of coins required is:

```text
7 = 4 + 3
```

Therefore, the minimum number of coins is:

```text
2
```

This practical implements the problem using the **Dynamic Programming (DP)** technique.

---

## 2. Objective

The main objectives of this practical are:

* To understand the **Making a Change Problem**.
* To implement the problem using **Dynamic Programming**.
* To accept **coin denominations from the user**.
* To accept the **target amount from the user**.
* To find the **minimum number of coins required**.
* To display the **coins used** to make the target amount.
* To calculate the **execution time** of the program.
* To analyze the **time complexity and space complexity**.
* To understand how Dynamic Programming improves the efficiency of the solution.

---

## 3. Concept of Dynamic Programming

Dynamic Programming is an algorithmic technique used to solve problems by dividing them into smaller subproblems and storing the results of those subproblems.

The main idea is:

> **Solve each subproblem only once and store its result for future use.**

In the Coin Change Problem, we create a DP table where:

```text
dp[i] = minimum number of coins required to make amount i
```

Initially:

```text
dp[0] = 0
```

because zero coins are required to make amount `0`.

For other amounts, we initially assume that the amount cannot be formed.

Then we consider each available coin and update the DP table if using that coin gives a better solution.

---

## 4. Example

Suppose:

```text
Coins = 1, 3, 4
Target Amount = 6
```

We calculate the minimum coins for every amount from `0` to `6`.

| Amount | Minimum Coins | Possible Combination |
| -----: | ------------: | -------------------- |
|      0 |             0 | —                    |
|      1 |             1 | 1                    |
|      2 |             2 | 1 + 1                |
|      3 |             1 | 3                    |
|      4 |             1 | 4                    |
|      5 |             2 | 4 + 1                |
|      6 |             2 | 3 + 3                |

Therefore:

```text
Minimum coins = 2
Coins used = 3 + 3
```

---

## 5. Algorithm

1. Start the program.
2. Read the number of coin denominations from the user.
3. Read the coin values.
4. Read the target amount.
5. Create a DP array of size `amount + 1`.
6. Set `dp[0] = 0`.
7. Set all other DP values to infinity initially.
8. For every amount from `1` to the target amount:

   * Check every available coin.
   * If the coin can be used for the current amount, calculate the number of coins required.
   * Store the minimum value in the DP table.
9. Maintain another array to remember which coin was selected.
10. Reconstruct the selected coins from the target amount.
11. Display the minimum number of coins.
12. Display the coins used.
13. Calculate and display the execution time.
14. Display the time and space complexity.
15. Stop the program.

---

## 6. Execution Time Analysis

The program uses Python's:

```python
time.perf_counter()
```

to measure execution time.

The basic structure is:

```python
start = time.perf_counter()

# Algorithm execution

end = time.perf_counter()

execution_time = end - start
```

This gives the approximate amount of time taken by the algorithm to execute.

The actual execution time may be different on different computers because it depends on the processor, memory, operating system, Python version, and other running programs.

---

## 7. Time Complexity

Let:

* `n` = number of coin denominations
* `A` = target amount

The program checks every coin for every amount.

Therefore:

```text
Time Complexity = O(n × A)
```

For example, if:

```text
n = 4
A = 100
```

the algorithm performs work proportional to:

```text
4 × 100 = 400
```

So the time complexity is:

**O(n × A)**

---

## 8. Space Complexity

The program uses arrays whose size depends on the target amount.

The main arrays are:

```text
dp[]
parent[]
```

Both require approximately `A` positions.

Therefore:

```text
Space Complexity = O(A)
```

---

## 9. Advantages

The Dynamic Programming approach has several advantages:

1. **Avoids repeated calculations**
   Previously calculated results are stored and reused.

2. **Efficient solution**
   It is much more efficient than checking every possible combination.

3. **Finds the minimum number of coins**
   The algorithm guarantees the minimum number of coins when a solution exists.

4. **Can identify the selected coins**
   By maintaining the `parent` array, we can determine which coins form the solution.

5. **Suitable for optimization problems**
   Dynamic Programming is useful when a problem has overlapping subproblems and optimal substructure.

---

## 10. Limitations

1. The algorithm requires additional memory for the DP table.
2. Memory requirements increase when the target amount becomes very large.
3. Execution time increases as the number of coins and target amount increase.
4. The standard DP approach is not always the most memory-efficient solution for extremely large amounts.

---

## 11. Sample Input

```text
Enter number of coin denominations: 4
Enter coin values: 1 3 4 5
Enter target amount: 7
```

## 12. Sample Output

```text
------ RESULT ------

Minimum coins required: 2
Coins used: [4, 3]

Execution Time: 0.0000125000 seconds

Time Complexity: O(n × amount)
Space Complexity: O(amount)
```

The exact execution time can vary from one computer to another.

---

## 13. Applications

The Making a Change Problem has applications in:

* Vending machines
* Currency systems
* Payment systems
* ATM systems
* Cash management
* Resource allocation
* Optimization problems
* Algorithm design and analysis

---

# Conclusion

The **Making a Change Problem was successfully implemented using Dynamic Programming in Python**. The program accepts the available coin denominations and target amount as user input and calculates the **minimum number of coins required** to make the target amount. It also identifies the actual coins used in the optimal solution.

Dynamic Programming improves the efficiency of the solution by **storing previously calculated results and reusing them**, thereby avoiding unnecessary repeated calculations. The execution time of the algorithm was measured using Python's `time.perf_counter()` function, which helps in understanding the practical performance of the implementation.

The algorithm has a **time complexity of O(n × A)**, where `n` is the number of coin denominations and `A` is the target amount. Its **space complexity is O(A)** because the DP and parent arrays depend on the target amount.

Thus, this practical demonstrates how **Dynamic Programming can be effectively used to solve optimization problems** and provides a clear understanding of algorithm implementation, execution-time measurement, and complexity analysis.
