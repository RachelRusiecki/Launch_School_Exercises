=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Method will take 1 integer argument, representing the 'nth' place in the fibonacci sequence
- The return value will be the last digit of the number in the 'nth' place

Implicit Rules:
- The return value should be an integer

Algorithm:
- Define a method called `fibonacci_last` that takes 1 argument, an integer
    - Initialize a variable to represent the 1st number & set it equal to 1
  - Initialize a variable to represent the 2nd number & set it equal to 1
  - Start a loop
    - Initialize a sum variable & set it equal to the sum of the 1st & 2nd numbers
    - Reassign the 1st number variable to the 2nd number variable
    - Reassign the 2nd number variable to the sum
    - Break out of the loop after the input argument minus 2 times
  - Convert the final sum into a string
  - Split the string into an array of characters
  - Return the last digit of the final sum
  - Convert the last digit back into an integer

=end

def fibonacci_last(num)
  last_2 = [1, 1]
  3.upto(num) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
p fibonacci_last(1_000_007)
p fibonacci_last(123456789)

# Can you provide a solution to this problem that will work no matter how big the number? You should be able to return results almost instantly.

def fast_fibonacci_last(num)
  last_2 = [1, 1]
  num = num % 60
  3.upto(num) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

p fast_fibonacci_last(123456789987745)
