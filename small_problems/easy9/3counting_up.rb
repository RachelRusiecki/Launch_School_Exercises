=begin

Problem:
- Input: integer
- Output: array of integers

Explicit Rules:
- Method will take 1 integer argument
- The return value will be an array of integers from 1 to that number in sequence
- Assume the number is always a valid positive integer

Implicit Rules:
- The return value will always be an array, even in the case of 1

Algorithm:
- Define a method called `sequence` that takes 1 argument, an integer
  - Initialize an empty array variable
  - Iterate through the number
    - Append each number plus 1 to the new array (b/c starts w/ 0)
  - Return the new array

=end

def sequence(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# Food for thought: what do you think sequence should return if the argument is not greater than 0. For instance, what should you do if the argument is -1?
# Can you alter your method to handle this case?

def negative_sequence(num)
  (num..-1).to_a.reverse
end

p negative_sequence(-5) == [-1, -2, -3, -4, -5]
p negative_sequence(-3) == [-1, -2, -3]
p negative_sequence(-1) == [-1]
