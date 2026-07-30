import time

# Binary Search Function
def binary_search(arr, key):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2

        if arr[mid] == key:
            return mid
        elif arr[mid] < key:
            low = mid + 1
        else:
            high = mid - 1

    return -1

# User Input
n = int(input("Enter the number of elements: "))

arr = []
print("Enter the elements:")
for i in range(n):
    arr.append(int(input()))

# Sort the array (Required for Binary Search)
arr.sort()
print("\nSorted List:", arr)

key = int(input("Enter the element to search: "))

# Start Execution Time
start_time = time.perf_counter()

# Perform Binary Search
result = binary_search(arr, key)

# End Execution Time
end_time = time.perf_counter()

# Display Result
if result != -1:
    print(f"\nElement {key} found at index {result}.")
else:
    print(f"\nElement {key} not found in the list.")

# Execution Time
execution_time = end_time - start_time
print(f"Execution Time: {execution_time:.10f} seconds")

# Time Complexity
print("\nTime Complexity:")
print("Best Case   : O(1)")
print("Average Case: O(log n)")
print("Worst Case  : O(log n)")

# Space Complexity
print("Space Complexity: O(1)")
