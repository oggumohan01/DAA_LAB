# Practical 1: Sorting Algorithms

## Aim

To implement different sorting algorithms in Python, accept input from the user, sort the elements, and analyze the execution time and time complexity of each algorithm.

## Description

This practical demonstrates the implementation of commonly used sorting algorithms using Python.

The programs:

* Accept an array of elements from the user.
* Sort the elements in ascending order.
* Display the original and sorted arrays.
* Calculate the execution time.
* Analyze the time and space complexity of the algorithm.

## Algorithms Implemented

The following sorting algorithms are included in this practical:

1. Bubble Sort
2. Selection Sort
3. Insertion Sort
4. Merge Sort
5. Quick Sort
6. Heap Sort
7. Max-Heap Sort

## Technologies Used

* **Programming Language:** Python
* **Version:** Python 3.x

## Input

The user enters the elements separated by spaces.

### Example

```text
Enter elements: 45 12 89 33 7 56 21
```

## Output

The program displays the original array, sorted array, and execution time.

### Example

```text
Original Array: [45, 12, 89, 33, 7, 56, 21]

Sorted Array: [7, 12, 21, 33, 45, 56, 89]

Execution Time: 0.000012 seconds
```

## Time Complexity

| Sorting Algorithm | Best Case  | Average Case | Worst Case |
| ----------------- | ---------- | ------------ | ---------- |
| Bubble Sort       | O(n)       | O(n²)        | O(n²)      |
| Selection Sort    | O(n²)      | O(n²)        | O(n²)      |
| Insertion Sort    | O(n)       | O(n²)        | O(n²)      |
| Merge Sort        | O(n log n) | O(n log n)   | O(n log n) |
| Quick Sort        | O(n log n) | O(n log n)   | O(n²)      |
| Heap Sort         | O(n log n) | O(n log n)   | O(n log n) |

## Space Complexity

| Sorting Algorithm | Space Complexity                      |
| ----------------- | ------------------------------------- |
| Bubble Sort       | O(1)                                  |
| Selection Sort    | O(1)                                  |
| Insertion Sort    | O(1)                                  |
| Merge Sort        | O(n)                                  |
| Quick Sort        | O(log n) average                      |
| Heap Sort         | O(log n) for recursive implementation |

## Execution Time

The execution time of each sorting algorithm is measured using Python's `time.perf_counter()` function.

The execution time may vary depending on:

* Number of input elements
* Computer hardware
* System load
* Python version

## How to Run

Make sure Python 3.x is installed on your computer.

Run an individual program using:

```bash
python filename.py
```

For example:

```bash
python heap_sort.py
```

## Project Structure

```text
Sorting-Algorithms/
│
├── bubble_sort.py
├── selection_sort.py
├── insertion_sort.py
├── merge_sort.py
├── quick_sort.py
├── heap_sort.py
├── README.md
└── requirements.txt
```

## Conclusion

This practical helps in understanding the working and performance of different sorting algorithms. By comparing their execution times and time complexities, we can understand which sorting algorithm is more suitable for different types and sizes of input data.

## Author

**Name:OGGU MOHAN RAO

**Course:?**:CSE AIML

**Practical:** 1 – Sorting Algorithms
