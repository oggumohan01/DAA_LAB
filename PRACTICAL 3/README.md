# Max-Heap Sort Algorithm in Python

## Aim

To implement the **Max-Heap Sort algorithm** using Python, accept input from the user, sort the elements in ascending order, calculate the execution time, and analyze the time and space complexity.

## Summary

Heap Sort is a comparison-based sorting algorithm that uses a **Binary Heap** data structure.

In this practical, a **Max-Heap** is constructed from the input elements. The largest element is placed at the root of the heap. The root element is then exchanged with the last unsorted element, and the remaining elements are heapified again.

This process is repeated until all elements are sorted in ascending order.

## Description

The program:

* Accepts elements from the user.
* Builds a Max-Heap.
* Performs Max-Heap Sort.
* Sorts the elements in ascending order.
* Displays the original array.
* Displays the sorted array.
* Calculates the execution time.
* Provides time and space complexity.

## Algorithm

1. Read the elements from the user.
2. Build a Max-Heap from the given array.
3. Find the largest element at the root of the heap.
4. Swap the root element with the last unsorted element.
5. Reduce the size of the heap.
6. Apply the heapify operation to maintain the Max-Heap property.
7. Repeat the process until all elements are sorted.
8. Display the sorted array.
9. Calculate and display the execution time.

## Requirements

* Python 3.x
* Python IDE such as VS Code, PyCharm, IDLE, or Jupyter Notebook.

## How to Run

Run the Python program using:

```bash
python heap_sort.py
```

## Input

The program accepts integers separated by spaces.

### Example

```text
Enter elements separated by spaces: 45 12 89 33 7 56 21
```

## Output

```text
Original Array: [45, 12, 89, 33, 7, 56, 21]

Sorted Array: [7, 12, 21, 33, 45, 56, 89]

Execution Time: 0.000012 seconds
```

## Time Complexity

| Case         | Time Complexity |
| ------------ | --------------- |
| Best Case    | O(n log n)      |
| Average Case | O(n log n)      |
| Worst Case   | O(n log n)      |

## Space Complexity

| Operation     | Space Complexity               |
| ------------- | ------------------------------ |
| Max-Heap Sort | O(log n) for recursive heapify |

## Execution Time

The program uses Python's `time.perf_counter()` function to measure the execution time of the Max-Heap Sort algorithm.

The execution time may vary depending on:

* Number of input elements
* Computer hardware
* System load
* Python version

## Project Structure

```text
Max-Heap-Sort/
│
├── heap_sort.py
└── README.md
```

## Advantages

* Guaranteed **O(n log n)** time complexity.
* Does not require a separate array for the sorting process.
* Suitable for large datasets.
* Efficient compared with simple quadratic sorting algorithms.

## Limitations

* The implementation is more complex than Bubble Sort or Selection Sort.
* It is generally not a stable sorting algorithm.
* For small datasets, simpler sorting algorithms may be easier to implement.

## Conclusion

The Max-Heap Sort algorithm was successfully implemented using Python. The algorithm first constructs a Max-Heap and then repeatedly moves the largest element to its correct position at the end of the array.

Max-Heap Sort provides **O(n log n)** time complexity in the best, average, and worst cases, making it an efficient sorting algorithm for large datasets.

## Author

**Name:** Your Name

**Course:** Your Course Name

**Practical:** Max-Heap Sort Algorithm
