# Data Structures and Algorithms Notes 📚

## Index
- [Search Algorithms](#search-algorithms)
    - [Linear Search](#linear-search)
    - [Binary Search](#binary-search)
        - [Standard Binary Search](#standard-binary-search)
        - [Lower Bound](#lower-bound)
        - [Upper Bound](#upper-bound)

## Search Algorithms

### Linear Search
```
Time Complexity: O(n)
Space Complexity: O(1)
```

![Alt text for the GIF](/resources/algo/Linear%20Search%20Visualization.gif)

- Linear search scans one element at a time
- 


#### Implementation
```python
def linear_search(arr, target):
        for i in range(len(arr)):
                if arr[i] == target:
                        return i
        return -1
```

### Binary Search
```
Time Complexity: O(log n)
Space Complexity: O(1)
```
![Alt text for the GIF](/resources/algo/image.png)

#### Standard Binary Search
```python
def binary_search(arr, target):
        left, right = 0, len(arr) - 1
        
        while left <= right:
                mid = left + (right - left) // 2 #floor divison
                if arr[mid] == target:
                        return mid
                elif arr[mid] < target: #if target is big search in right span
                        left = mid + 1
                else:                   #if target is small search in left span
                        right = mid - 1
                        
        return -1
```
#### Variations/questions
- square root of a number/Find nth root / Find smallest divisor
- First and Last occurences
- count frequency of element
- find element in rotated sorted array with duplicates
- Find rotation point/pivot element
- peak element in array
- find in Bitonic array (increasing then decreasing)
- Search insert position
- Find smallest letter greater than target
- Find closest elements
- minimum number of days to make m bouquets
- Split Array Largest Sum
- Search in nearly sorted array
- Find element in infinite sorted array

### Two pointers/ Sliding window


## Sorting Algorithms

### Quick Sort
### Merge Sort

### Selection Sort
```
Time Complexity: O(n²)
Space Complexity: O(1)
```
- Repeatedly finds minimum element from unsorted part and puts it at the beginning

```python
def selection_sort(arr):
    for i in range(len(arr)):
        min_idx = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr
```

### Bubble Sort
```
Time Complexity: O(n²)
Space Complexity: O(1)
```
- Repeatedly swaps adjacent elements if they are in wrong order

```python
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr
```

### Insertion Sort
```
Time Complexity: O(n²)
Space Complexity: O(1)
```
- Builds final sorted array one item at a time
- Efficient for small data sets

```python
def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i-1
        while j >= 0 and arr[j] > key:
            arr[j+1] = arr[j]
            j -= 1
        arr[j+1] = key
    return arr
```


## Knapsack
## Backtracking
## Dynamic Programming
## Trees
## Graphs
## Tries