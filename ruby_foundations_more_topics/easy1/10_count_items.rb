=begin

Problem:
- Input: array, block
- Output: integer

Explicit Rules:
- Method will take 1 array argument
- Method will take a block
- Return value will be the # of times the block returns true
- May not use count method

Implict Rules:
- Array elements can be any object
- Array arguments can be empty, return value will be 0

Data Structures
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  - Initialize counter variable, set to 0
  - Iterate through array
    - Yield to block, passing in each element as block argument
      - If block return true, increase counter by 1
  - Return counter

=end

# def count(arr)
#   counter = 0
#   arr.each { |ele| counter += 1 if yield(ele) }
#   counter
# end

# p count([1,2,3,4,5]) { |value| value.odd? } == 3
# p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
# p count([1,2,3,4,5]) { |value| true } == 5
# p count([1,2,3,4,5]) { |value| false } == 0
# p count([]) { |value| value.even? } == 0
# p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

# Write a version of the count method that meets the conditions of this exercise, but also does not use each, loop, while, or until.

require 'pry'

def count_non_each(arr)
  arr.inject(0) { |value, ele| yield(ele) ? value += 1 : value }
end

p count_non_each([1,2,3,4,5]) { |value| value.odd? } == 3
p count_non_each([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count_non_each([1,2,3,4,5]) { |value| true } == 5
p count_non_each([1,2,3,4,5]) { |value| false } == 0
p count_non_each([]) { |value| value.even? } == 0
p count_non_each(%w(Four score and seven)) { |value| value.size == 5 } == 2
