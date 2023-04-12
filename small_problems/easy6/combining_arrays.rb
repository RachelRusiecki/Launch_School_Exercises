=begin

Problem:
- Input: 2 separate arrays
- Output: 1 new array

Explicit Rules:
- Method takes 2 arguments, 2 arrays
- The return value will be 1 array with elements from both arrays combined
- There should be no duplicates in the returned array, even if there were duplicates in the original arrays

Implicit Rules:
- The returned array will have the first array's elements listed first, then the second's

Algorithm:
- Define a method called `merge` that takes 2 arrays as arguments
  - Initialize an new empty array variable
  - Iterate through the first array
    - Append each element to the new array
  - Iterate through the second array
    - Append each element to the new array
  - Delete any duplicate elements

=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
