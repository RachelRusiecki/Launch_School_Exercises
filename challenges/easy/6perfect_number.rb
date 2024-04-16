=begin

Problem:
- Input: number
- Output: string

Explicit Rules:
- Identify if a the given number is abundant, perfect, or deficient
  - Number is abundant if sum of divisors is greater than number
  - Number is perfect if sum of divisors is equal to number
  - Number is deficient if sum of divisors is less than number

Implicit Rules:
- Negative numbers should return a StandardError
- Assume arguments are whole integers
- Class ify method will be a class method

Data Structure:
- PerfectNumber class
- Arrays

Algorithm:
- Define classify method that takes 1 integer argument
  - Raise StandardError if number is negative?
  - Find all divisors of number integer argument
    - Iterate from 1 through 1 less than number
      - If number is not divisible by number evenly, delete it
      - Sum the remaining numbers in the array
  - Return the correct string based on comparison to original argument

=end

class PerfectNumber
  def self.classify(num)
    raise StandardError if num < 1
    return 'abundant' if (1...num).to_a.select { |n| num % n == 0 }.sum > num
    return 'deficient' if (1...num).to_a.select { |n| num % n == 0 }.sum < num
    'perfect'
  end
end
