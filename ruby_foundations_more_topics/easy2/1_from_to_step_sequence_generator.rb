=begin

Problem:
- Input: 3 integers, block
- Output: string

Explicit Rules:
- Method will take 3 arguments: starting value, ending value, step value
- Method will take a block

Implicit Rules:
- Arguments will be positive integers
- Return value should be the range of the 1st through 2nd arguments because that it how the actual Range#step method works, it returns the original range it was called on.

Data Structures:
- Range
- Iteration

Algorithm:
- Define method that takes 3 integer arguments
  - Initialize array variable, set it to all numbers from 1st through 2nd arguments
  - Initialize value variable, set to 1st argument
  - Iterate through the array
    - Yield to block, passing in value as block argument
    - Reassign value varibale to itself + 3rd argument
  - Return range of 1st through 2nd arguments

=end

def step(starting_value, ending_value, step_value)
  value = starting_value
  loop do
    yield(value)
    break if value + step_value > ending_value
    value += step_value
  end
  value
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
