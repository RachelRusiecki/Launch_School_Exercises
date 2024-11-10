=begin

Problem:
- Input: array
- Output: the duplicate element of the array

Explicit Rules:
- Method will take 1 argument, an array
- Exactly 1 element will be a duplicate in the array argument
- Method will return the duplicate element

Implicit Rules:
- Method will only return 1 element
- We can assume all arrays have 1 duplicate value

Algorithm:
- Define a method called `find_dup` that takes 1 argument, an array
  - Initialize a new `duplicate` variable & set it equal to an empty string
  - Iterate through the array
    - Count how many times each element appears in the array
    - Skip any iterations where the element only appears once
    - Assign `duplicate` to the element that appears twice
  - Return the duplicate

=end

def find_dup(arr)
  duplicate = ''
  arr.each do |element|
    next if arr.count(element) == 1
    duplicate = element
  end
  duplicate
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
