=begin

Problem:
- Input: 1 array
- Output: 1 array containg 2 nested arrays

Explicit Rules:
- Method will take 1 argument, an array
- The return value will be an array containing 2 nested arrays each containing half the elements of the original array
- If the original array has an odd number of elements, the middle element will go to the first returned array

Implicit Rules:
- There will always be 2 arrays returned
  - If there is a single element in the original array, that element will go to the first returned array, and the second returned array will be empty
  - If the original array is empty, both returned arrays will also be empty

Algorithm:
- Define a method called `halvsies` that takes 1 argument, an array
  - Initialize a new empty array variable
  - If the number of elements in the original array is odd...
    - Find the middle index by dividing the size by 2
    - Append the first half of the array to the new array, using their index
    - Append the second half of the array to the new array
  - If the number of elements in the original array is even...
    - Find the middle index by dividing by 2 and then subtracting 1
    - Append the first half of the array to the new array, using their index
    - Append the second half of the array to the new array
  - Return the new array

=end

def halvsies(arr)
  if arr.size.odd?
    [arr[0, (arr.size / 2) + 1], arr[((arr.size / 2) + 1)..]]
  else
    [arr[0, arr.size / 2], arr[(arr.size / 2)..]]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
