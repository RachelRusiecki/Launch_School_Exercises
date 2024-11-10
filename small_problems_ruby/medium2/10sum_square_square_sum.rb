=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Method will take 1 integer argument.
- The return value should be the sum of all positive integers from 1 to the argument squared minus the sum of all squared integers from 1 to the argument.

Implict Rules:
- Return values should be whole integers.
- All of the integers in the 1st part of the equation should be added together before getting squared.
- All of the inetgers in teh 2nd part of the equation should be squared before getting added together.

Algorithm:
- Define a method called `sum_square_difference` that takes 1 argument, an integer.
  - Initialize a sum variable and set it equal to 0.
  - Iterate through a range of integers from 1 to the argument.
    - Reassign the sum variable to the sum of the current number in the range and the sum of the previous iteration.
  - Initialize a squared sum variable and set it equal to 0.
  - Iterate through a range of integers from 1 to the argument.
    - Reassign the squared sum variable to sum of the squared current number in the range and the sum of the previous iteration.
  - Calculate the sum variable squared minus the squared sum variable.

=end

def sum_square_difference(num)
  sum = 0
  squared_sum = 0
  (1..num).each do |n|
    sum += n
    squared_sum += n**2
  end
  sum**2 - squared_sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
