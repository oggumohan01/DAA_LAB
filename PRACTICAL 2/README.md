# Searching Algorithms in Python

## Aim

To implement different searching algorithms using Python, accept input from the user, search for a given element, and analyze the execution time and time complexity of each algorithm.

## Summary

Searching is an important operation in data structures and algorithms. It is used to find a particular element from a collection of data.

In this practical, two common searching algorithms are implemented using Python:

* **Linear Search**
* **Binary Search**

The programs accept elements from the user, search for a specified element, display the result, and calculate the execution time. The time and space complexity of each algorithm are also studied.

Linear Search checks elements one by one, while Binary Search repeatedly divides a sorted array into two halves to find the required element more efficiently.

## Description

This practical contains implementations of commonly used searching algorithms in Python.

The programs:

* Take elements as input from the user.
* Take the search element from the user.
* Search for the given element.
* Display whether the element is found or not.
* Display the position of the element if it is found.
* Calculate the execution time.
* Analyze time and space complexity.

## Algorithms

* Linear Search
* Binary Search

## Requirements

* Python 3.x

## How to Run

Run the required Python program using:

```bash
python linear_search.py
```

or

```bash
python binary_search.py
```

## Input

The user enters the elements and the element to be searched.

### Example

```text
Enter elements: 10 25 30 45 50 65 80
Enter element to search: 45
```

## Output

```text
Element 45 found at position 4
Execution Time: 0.000004 seconds
```

## Time Complexity

| Searching Algorithm | Best Case | Average Case | Worst Case |
| ------------------- | --------- | ------------ | ---------- |
| Linear Search       | O(1)      | O(n)         | O(n)       |
| Binary Search       | O(1)      | O(log n)     | O(log n)   |

## Space Complexity

| Searching Algorithm | Space Complexity |
| ------------------- | ---------------- |
| Linear Search       | O(1)             |
| Binary Search       | O(1)             |

## Linear Search

Linear Search checks each element one by one from the beginning of the array until the required element is found or the end of the array is reached.

## Binary Search

Binary Search repeatedly divides a **sorted array** into two halves and determines which half may contain the required element.

**Note:** Binary Search can only be directly applied when the array is sorted.

## Execution Time

The execution time is measured using Python's `time.perf_counter()` function.

The execution time may vary depending on:

* Number of elements
* Computer hardware
* System load
* Python version

## Project Structure

```text
Searching-Algorithms/
│
├── linear_search.py
├── binary_search.py
└── README.md
```

## Conclusion

This practical demonstrates the implementation and analysis of Linear Search and Binary Search algorithms in Python.

Linear Search is simple and can be used on both sorted and unsorted data, but it can take more time for large datasets. Binary Search is more efficient for large datasets because it reduces the search space by half at every step, but it requires the data to be sorted.

Therefore, the choice of searching algorithm depends on the size and condition of the data.

## Author

**Name:** Your Name

**Course:** Your Course Name

**Practical:** Searching Algorithms
