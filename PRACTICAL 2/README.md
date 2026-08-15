Practical 2: Linear Search and Binary Search
Aim

To implement Linear Search and Binary Search algorithms in Python, accept input from the user, search for a given element, and analyze the execution time and time complexity of each algorithm.

Description

This practical demonstrates the implementation of two commonly used searching algorithms using Python.

The programs:

Accept an array of elements from the user.
Accept the element to be searched.
Perform Linear Search and Binary Search.
Display whether the element is found or not.
Display the position/index of the searched element.
Calculate the execution time.
Analyze the time and space complexity of each algorithm.
Algorithms Implemented

The following searching algorithms are included in this practical:

Linear Search
Binary Search
Technologies Used
Programming Language: Python
Version: Python 3.x
Input

The user enters the elements separated by spaces and then enters the element to be searched.

Example
Enter elements: 45 12 89 33 7 56 21
Enter element to search: 33
Output

The program displays the original array, sorted array for Binary Search, search result, and execution time.

Example
Original Array: [45, 12, 89, 33, 7, 56, 21]


Linear Search:
Element 33 found at index 3
Execution Time: 0.000004 seconds


Sorted Array: [7, 12, 21, 33, 45, 56, 89]


Binary Search:
Element 33 found at index 3
Execution Time: 0.000003 seconds
Time Complexity
Searching Algorithm	Best Case	Average Case	Worst Case
Linear Search	O(1)	O(n)	O(n)
Binary Search	O(1)	O(log n)	O(log n)

Note: Binary Search requires the array to be sorted before searching.

Space Complexity
Searching Algorithm	Space Complexity
Linear Search	O(1)
Binary Search	O(1)

The Binary Search implementation uses an iterative approach, so its additional space complexity is O(1).

Execution Time

The execution time of each searching algorithm is measured using Python's time.perf_counter() function.

start_time = time.perf_counter()


# Searching operation


end_time = time.perf_counter()


execution_time = end_time - start_time

The execution time may vary depending on:

Number of input elements
Computer hardware
System load
Python version
Input data
Linear Search

Linear Search checks each element one by one from the beginning of the array until the required element is found or the entire array has been checked.

Advantages
Simple and easy to implement.
Works with sorted and unsorted arrays.
Suitable for small datasets.
Disadvantages
Slow for large datasets.
May need to check every element.
Binary Search

Binary Search repeatedly divides a sorted array into two halves and searches only the half that may contain the required element.

Advantages
Faster than Linear Search for large sorted datasets.
Reduces the search area by half in every step.
Efficient for large datasets.
Disadvantages
The array must be sorted.
Slightly more complex than Linear Search.
Comparison
Feature	Linear Search	Binary Search
Data requirement	Sorted or unsorted	Sorted
Searching method	Sequential	Divide and conquer
Best Case	O(1)	O(1)
Average Case	O(n)	O(log n)
Worst Case	O(n)	O(log n)
Space Complexity	O(1)	O(1)
Suitable for	Small/unsorted data	Large/sorted data
How to Run

Make sure Python 3.x is installed on your computer.

Run an individual program using:

python filename.py

For example:

python linear_search.py

or

python binary_search.py
Project Structure
Searching-Algorithms/
│
├── linear_search.py
├── binary_search.py
├── README.md
└── requirements.txt
Summary

This practical demonstrates two important searching algorithms: Linear Search and Binary Search. Linear Search searches the elements sequentially and can work with unsorted data. Binary Search is more efficient because it divides a sorted array into two halves during each search step.

The execution time and time complexity of both algorithms are analyzed to understand their performance.

Conclusion

This practical successfully implements Linear Search and Binary Search in Python with user input and execution-time measurement. Linear Search is simple and useful for small or unsorted datasets, while Binary Search is more efficient for large datasets when the data is sorted.

By comparing their time complexities, we can conclude that Binary Search is generally faster than Linear Search for large sorted datasets, with a worst-case search complexity of O(log n) compared with O(n) for Linear Search.

Author

Name: OGGU MOHAN RAO

Course: CSE AIML

Practical: 2 – Linear Search and Binary Search
