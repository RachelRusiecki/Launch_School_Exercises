=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Method will take 1 integer argument that represents the 'nth' place in the fibonacci sequence
- The output will be the number in the 'nth' place of the fibonacci sequence
- Do not use recursion

Implicit Rules:
- The fibonacci sequence is where the next number in the sequence is the sum of the 2 previous numbers
- The first 2 numbers both start at 1

Algorithm:
- Define a method called 'fibonacci' that takes 1 argument, an integer
  - Initialize a variable to represent the 1st number & set it equal to 1
  - Initialize a variable to represent the 2nd number & set it equal to 1
  - Start a loop
    - Initialize a sum variable & set it equal to the sum of the 1st & 2nd numbers
    - Reassign the 1st number variable to the 2nd number variable
    - Reassign the 2nd number variable to the sum
    - Break out of the loop after the input argument minus 2 times
  - Return the final sum

=end

def fibonacci(num)
  a = 1
  b = 1
  sum = 0
  (num - 2).times do
    sum = a + b
    a = b
    b = sum
  end
  sum
end

p fibonacci(20) == 6765
p fibonacci(100)
p fibonacci(100_001)
