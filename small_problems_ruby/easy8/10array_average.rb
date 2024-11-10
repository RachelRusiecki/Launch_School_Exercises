=begin

Problem:
- Input: array of integers
- Output: integer

Explicit Rules:
- Method will take 1 argument, an array of integers
- The return value will be the average of all the integers
- Assume the array is non-empty
- Assume the integers are all positive
- The result should be an integer, not a float
- Do not use the `sum` method; use iteration

Implicit Rules:
- The average of a collection of numbers is the sum divided by the size of the collection

Algorithm:
- Define a method called `average` that takes 1 argument, an array of integers
  - Initialize a `sum` variable & assign it to 0
  - Iterate through the array
    - Reassign `sum` to `sum` plus the current number
  -Divide `sum` by the size of the array

=end

def average(nums)
  sum = 0
  nums.each { |num| sum += num }
  sum / nums.size
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Can you change the return value of `average` from an `Integer` to a `Float`?

def average_float(nums)
  sum = 0
  nums.each { |num| sum += num.to_f }
  sum / nums.size
end

puts average_float([1, 6]) == 3.5
puts average_float([1, 5, 87, 45, 8, 8])
puts average_float([9, 47, 23, 95, 16, 52])
