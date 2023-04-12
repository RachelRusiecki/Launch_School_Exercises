=begin

Problem:
- Input: integer, representing number of digits
- Output: integer, representing space in the fibonacci sequence

Explicit Rules:
- In the Fibonacci sequence, the next number is the sum of the last 2 numbers (1, 1, 2, 3, 5, 8, 13, 21, etc.)
- Method will take 1 argument, an integer representing the number of digits on a number in the sequence
- The return value will be the place in the sequence where the first number appears that has the amount of digits passed as an argument to the method
- Assume the argument is always greater than or equal to 2

Implicit Rules:
- The return value will be the place in the Fibonacci sequence, not the actual index (so return value will be index + 1)

Algortithm:
- Define a method called `find_fibonacci_index_by_length` that takes 1 argument, an integer that represents the amount of digits we are trying to locate
  - Initialize a variable called `current_num` and assign it to 1
  - Initialize a variable called `last_num` and assign it to 0
  - Create a loop
    - Convert `current_num` to a string
    - Split the string into an array of each character / digit
    - Find the size of the array
    - Break out of the loop if the array size is greater than or equal to the argument passed
    - Reassign `current_num` to `current_num + last_num` & reassign `last_num` to `current_num`
  - Return the index + 1 of the `current_num`

=end

def find_fibonacci_index_by_length(digit)
  current_num = 1
  last_num = 0
  sequence = [current_num]
  loop do
    break if current_num.to_s.size >= digit
    current_num, last_num = (current_num + last_num), current_num
    sequence << current_num
  end
  sequence.index(current_num) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
