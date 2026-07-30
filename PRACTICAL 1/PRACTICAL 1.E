import time

# Merge Sort Function
def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2

        left = arr[:mid]
        right = arr[mid:]

        # Recursively sort both halves
        merge_sort(left)
        merge_sort(right)

        i = j = k = 0

        # Merge the two halves
        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                arr[k] = left[i]
                i += 1
            else:
                arr[k] = right[j]
                j += 1
            k += 1

        # Copy remaining elements of left half
        while i < len(left):
            arr[k] = left[i]
            i += 1
            k += 1

        # Copy remaining elements of right half
        while j < len(right):
            arr[k] = right[j]
            j += 1
            k += 1

# User input
n = int(input("Enter the number of elements: "))

arr = []
print(f"Enter {n} elements:")
for i in range(n):
    arr.append(int(input()))

# Start timer
start_time = time.time()

# Perform Merge Sort
merge_sort(arr)

# Stop timer
end_time = time.time()

# Calculate execution time
execution_time = end_time - start_time

# Display sorted array
print("\nSorted Array:")
print(arr)

# Display execution time
print(f"\nExecution Time: {execution_time:.6f} seconds")

# Display time complexity
print("\nTime Complexity:")
print("Best Case    : O(n log n)")
print("Average Case : O(n log n)")
print("Worst Case   : O(n log n)")
print("Space Complexity: O(n)")
