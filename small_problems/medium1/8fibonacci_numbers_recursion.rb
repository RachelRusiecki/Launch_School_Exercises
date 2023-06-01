=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Fibonacci sequence is where the next number is equal to the sum of the 2 previous numbers(1, 1, 2, 3, 5, 8, etc)
- Method will take 1 integer argument representing the place in the Fibonacci sequence
- The return value will the the value of that number in the sequence
- The method must contain recursion, i.e.
  - It must call itself at least once
  - It must have a condition that stops the recursion
  - It must use the result returned by themselves

Implicit Rules:
- The first 2 numbers of the sequence will start w/ 1 & 1

Algorithm:
- Define a method called 'fibonacci' that takes 1 argument, an integer
  - Return 1 if the integer is less than or equal to 2
  - Call the 'fibonacci' method on the number that is 1 less than the input argument
  - Call the 'fibonacci' method on the number that is 2 less than the input argument
  - Return the sum of those 2 numbers

=end

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
