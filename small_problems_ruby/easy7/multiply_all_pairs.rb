=begin

Problem:
- Input: 2 arrays containing integers
- Output: 1 new array containing integers

Explicit Rules:
- Write a method that takes 2 array arguments containing numbers
- The return value will be a new array containing the product of all pair combinations from the 2 arrays
- The returned array should be sorted by increasing value.
- Assume neither of the imput arrays are empty

Implicit Rules:
- The input arrays will contain whole numbers (integers)
- The size of the returned array will be the product of the sizes of the 2 input arrays

Algorithm:
- Define a method called 'multiply_all_pairs' that takes 2 array arguments each containing integers
  - Create an array of nested arrays of each pair
  - Multiply the integers in each pair together
  - Sort the array

=end

def multiply_all_pairs(nums1, nums2)
  result = nums1.product(nums2).map { |arr| arr.inject(:*) }
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
