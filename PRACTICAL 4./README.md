# README – Practical 4

## Practical 4: Implementation and Time Analysis of Factorial

### Summary

This practical implements the **factorial of a number** using two different approaches in Python:

1. **Iterative Method** – Uses a `for` loop to calculate the factorial.
2. **Recursive Method** – The function calls itself repeatedly until it reaches the base condition.

The program accepts the number from the **user as input** and calculates the factorial using both methods. It also measures and displays the **execution time** of each method using Python's `time.perf_counter()` function.

For example, if the input is `5`:

```text
5! = 5 × 4 × 3 × 2 × 1 = 120
```

### Time and Space Complexity

| Method    | Time Complexity | Space Complexity |
| --------- | --------------- | ---------------- |
| Iterative | O(n)            | O(1)             |
| Recursive | O(n)            | O(n)             |

The iterative method requires constant extra memory, while the recursive method requires additional memory for the function call stack.

### Conclusion

The practical demonstrates the implementation and performance analysis of factorial using **iterative and recursive approaches**. Both methods have **O(n) time complexity** and produce the same result. However, the **iterative method is more memory-efficient**, with **O(1) space complexity**, whereas the recursive method uses **O(n) space** due to recursive function calls. Therefore, the iterative approach is generally preferred when memory efficiency is important.
