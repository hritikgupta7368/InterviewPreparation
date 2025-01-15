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

Visual representation:
```
[1, 3, 4, 6, 8, 9, 11]
             ↑ mid
[1, 3, 4] 6 [8, 9, 11]
        ↑ mid    
```

#### Standard Binary Search
```python
def binary_search(arr, target):
        left, right = 0, len(arr) - 1
        
        while left <= right:
                mid = left + (right - left) // 2
                if arr[mid] == target:
                        return mid
                elif arr[mid] < target:
                        left = mid + 1
                else:
                        right = mid - 1
                        
        return -1
```

#### Lower Bound
Finds first element >= target
```python
def lower_bound(arr, target):
        left, right = 0, len(arr)
        
        while left < right:
                mid = left + (right - left) // 2
                if arr[mid] >= target:
                        right = mid
                else:
                        left = mid + 1
                        
        return left
```

#### Upper Bound
Finds first element > target
```python
def upper_bound(arr, target):
        left, right = 0, len(arr)
        
        while left < right:
                mid = left + (right - left) // 2
                if arr[mid] > target:
                        right = mid
                else:
                        left = mid + 1
                        
        return left
```

> Note: This is a basic structure. More algorithms and detailed explanations can be added based on requirements.