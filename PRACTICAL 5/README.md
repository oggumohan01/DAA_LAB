# Practical 5: Implementation of Knapsack Problem Using Dynamic Programming

## Aim

To implement the **0/1 Knapsack Problem** using the **Dynamic Programming** technique and find the maximum profit that can be obtained within a given knapsack capacity.

## Summary

The **Knapsack Problem** is a common optimization problem in computer science. In the 0/1 Knapsack Problem, each item has a **weight** and a **profit**, and each item can either be selected or not selected.

Dynamic Programming is used to solve this problem efficiently by storing previously calculated results in a table. For every item and every possible capacity, the algorithm decides whether including the item gives a better profit than excluding it.

The main idea is:

```text
Maximum Profit =
max(Profit by including item, Profit by excluding item)
```

This approach avoids calculating the same subproblems repeatedly.

## Algorithm

1. Start the program.
2. Read the number of items.
3. Read the profit and weight of each item.
4. Read the knapsack capacity.
5. Create a DP table.
6. For every item, check all possible capacities.
7. If the item's weight is less than or equal to the current capacity:

   * Calculate profit by including the item.
   * Calculate profit by excluding the item.
   * Store the maximum of both.
8. Otherwise, exclude the item.
9. Display the maximum profit.
10. Stop the program.

## Program in Python

```python
# Practical 5
# Implementation of 0/1 Knapsack Problem using Dynamic Programming

def knapsack(weights, profits, capacity):
    n = len(weights)

    # Create DP table
    dp = [[0 for _ in range(capacity + 1)] for _ in range(n + 1)]

    # Fill the DP table
    for i in range(1, n + 1):
        for w in range(1, capacity + 1):

            if weights[i - 1] <= w:
                dp[i][w] = max(
                    profits[i - 1] + dp[i - 1][w - weights[i - 1]],
                    dp[i - 1][w]
                )
            else:
                dp[i][w] = dp[i - 1][w]

    return dp[n][capacity]


# User input
n = int(input("Enter number of items: "))

weights = []
profits = []

for i in range(n):
    print(f"\nItem {i + 1}:")
    weight = int(input("Enter weight: "))
    profit = int(input("Enter profit: "))

    weights.append(weight)
    profits.append(profit)

capacity = int(input("\nEnter knapsack capacity: "))

# Calculate maximum profit
max_profit = knapsack(weights, profits, capacity)

# Display result
print("\nMaximum Profit =", max_profit)
```

## Sample Input

```text
Enter number of items: 4

Item 1:
Enter weight: 1
Enter profit: 1

Item 2:
Enter weight: 3
Enter profit: 4

Item 3:
Enter weight: 4
Enter profit: 5

Item 4:
Enter weight: 5
Enter profit: 7

Enter knapsack capacity: 7
```

## Sample Output

```text
Maximum Profit = 9
```

## Time Complexity

**O(n × W)**

Where:

* `n` = number of items
* `W` = knapsack capacity

The algorithm uses two nested loops, so the time complexity is **O(n × W)**.

## Space Complexity

**O(n × W)**

A two-dimensional DP table of size `(n+1) × (W+1)` is used.

## Result

The 0/1 Knapsack Problem was successfully implemented using **Dynamic Programming**, and the maximum possible profit was calculated without exceeding the given knapsack capacity.

## Conclusion

Dynamic Programming provides an efficient way to solve the 0/1 Knapsack Problem by storing the solutions of smaller subproblems. It avoids repeated calculations and finds the **optimal maximum profit** for the given set of items and knapsack capacity.
