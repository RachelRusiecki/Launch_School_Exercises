=begin

Problem:
- Input: array
- Output: integer

Explicit Rules:
- Method will take 1 argument, an array of integers
- The return value will be the sum of each leading subsequence for the array
- Assume the array always contains at least 1 integer

Implicit Rules:
- Assume all integers are positive

Algorithm:
- Define a method called 'sum_of_sums' that takes 1 argument, an array of integers
  - Initialize an empty array variable
  - Initialize a counter variable and set it equal to the size of the array
  - Iterate through the array
    - Multiply the first element of the array by the size of the array
    - Append the result to the empty array
    - Decrease the counter variable by 1
    - Multiply the second element of the array by the size of the array - 1 (using counter variable)
    - Return the sum of the newly created array

=end

def sum_of_sums(nums)
  total = []
  counter = nums.size
  nums.each do |num|
    total << num * counter
    counter -= 1
  end
  total.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
