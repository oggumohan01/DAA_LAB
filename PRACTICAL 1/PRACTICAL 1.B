import time

# Input from the user
n = int(input("Enter the number of elements: "))

arr = []
print(f"Enter {n} elements:")
for i in range(n):
    arr.append(int(input()))

# Start timer
start_time = time.time()

# Bubble Sort
for i in range(n - 1):
    for j in range(n - i - 1):
        if arr[j] > arr[j + 1]:
            arr[j], arr[j + 1] = arr[j + 1], arr[j]

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
print("Best Case    : O(n^2)")
print("Average Case : O(n^2)")
print("Worst Case   : O(n^2)")
print("Space Complexity: O(1)")
