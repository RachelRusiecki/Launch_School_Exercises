=begin

Problem:
- Input: 2 arrays of integers
- Output: new array of integers

Explicit Rules:
- Write a method that takes 2 array arguments
- Each array will contain a list of numbers
- The return value will be a new array that contains the product of each index pair of the 2 imput arrays
- Assume the 2 arrays have the same number of elements

Implicit Rules:
- Arrays will have whole numbers (integers)

Algorithm:
- Define a method called `multiply_list` that takes 2 array arguments that each contain a list of integers
  - Initialize a new empty array variable
  - Combine the 2 arrays into 1 array containing nested arrays
  - Pair the elements of each array by their index
  - Multiply each of the elements in the pairs
  - Add the results to the new array

=end

def multiply_list(nums1, nums2)
  nums1.zip(nums2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
