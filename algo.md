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

## Sorting Algorithms

### Quick Sort
### Merge Sort