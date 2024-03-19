=begin

Problem:
- Input: any # of objects, block
- Output: integer

Explicit Rules:
- Method can take any # of arguments, even 0
- Method will take a block
- Method will return the amount of times the block returns a truthy value
- If no arguments given, return 0
- May only use: each, each_with_object, each_with_index, reduce, loop, for, while, until, no other iterating methods

Data Structures:
- Iteration
- Arrays
- Blocks

Algorithm:
- Define method that takes some # of arguments
  - Initialize a counter variable, set to 0
  - Iterate through an array of all arguments
    - Yield to block, passing in each element as block argument
      - If block returns truthy value, increase counter by 1
  - Return counter

=end

def count(*args)
  counter = 0
  args.each { |ele| counter += 1 if yield(ele) }
  counter
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
