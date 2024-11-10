=begin

Problem:
- Input: 2 integers
- Output: array

Explicit Rules:
- Method will take 2 integer arguments
- The 1st integer represents a count or the size of the returned array
- The 2nd integer represents the 1st element of the returned array
- The values of each element will be multiples of the starting integer
- Assume that the count argument is always a positive number
- The starting number can be any whole integer
- A count argument of 0 should return an empty array

Implicit Rules:
- If the starting integer is 0, all elements in the returned array will be 0

Algorithm:
- Define a method called `sequence` that takes 2 integer arguments
  - Initialize an empty array variable
  - Append the product of the starting number and all the integers from 1 to the count number to the new array
  - Return the new array

=end

def sequence(count, start_num)
  (1..count).map { |num| num * start_num }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
