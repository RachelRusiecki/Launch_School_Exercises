=begin

Problem:
- Input: array
- Output: string

Explicit Rules:
- Method will take 1 argument, an array of integers
- Muliply all the integers together and then divide by the number of integers (find the average)
- Print the result rounded to 3 decimal places
- Assume the input array is non-empty

Implicit Rules:
- There should always be 3 decimal places, even if there are trailing zeros
- If the array only has a single element, the return value will be the same integer
- The return value will be a string containing the result

Algorithm:
- Define a method called `show_multiplicative_average` that takes 1 argument, an array of strings
  - Multiply all of the integers together
  - Divide the sresult by the size of the array
  - Format the result to show 3 decimal places
  - Use string concatination to return the result with a message

=end

def show_multiplicative_average(nums)
  puts "The result is #{format('%.3f', (nums.inject(:*).to_f / nums.size))}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

# What happens if you omit the call to `to_f` on the first line of our method?

# The code will not print the correct result. There will be only zeros after the decimal place.

def show_multiplicative_average2(numbers)
  product = 1
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average2([3, 5])
show_multiplicative_average2([6])
show_multiplicative_average2([2, 5, 7, 11, 13, 17])
