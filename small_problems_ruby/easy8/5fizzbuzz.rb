=begin

Problem:
- Input: 2 integers
- Output: print output to terminal

Explicit Rules:
- Method will take 2 numbers as arguments
- The first number is the starting number & the second is the ending number
- Print out all the numbers from the starting and ending numbers
- Replace numbers divisible by 3 w/ the word 'Fizz'
- Replace numbers divisible by 5 w/ the word 'Buzz'
- Replace numbers divisible by 3 & 5 w/ the word 'FizzBuzz'

Implicit Rules:
- Numbers will be whole numbers (integers)
- The output should be printed on 1 line, separated by commas

Algorithm:
- Define a method called `fizzbuzz` that takes 2 integer arguments
  - Iterate through the range
    - Print the number
    - If the number is divisible by 3, print 'Fizz' instead
    - If the number is divisible by 5, print 'Buzz' instead
    - If the number is divisible by 3 & 5, print 'FizzBuzz' instead

=end

def fizzbuzz(start_num, end_num)
    result = []
    (start_num..end_num).each do |num|
      case
      when num % 15 == 0 then result << 'FizzBuzz'
      when num % 3 == 0 then result << 'Fizz'
      when num % 5 == 0 then result << 'Buzz'
      else
        result << num
      end
    end
    puts "#{result.join(', ')}"
  end

fizzbuzz(1, 15)
