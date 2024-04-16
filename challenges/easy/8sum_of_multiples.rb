=begin

Problem:
- Input: numbers
- Output: number (sum)

Explicit Rules:
- Method will take at least 1 number as an argument, 2 optional arguments
- Return the sum of all multiples of the set of numbers that are less than the 1st number
- If no set given, use 3 & 5

Implicit Rules:
- If no multiples found, return 0
- There should be both a class method & instance method
  - Class method will always use a set of 3 & 5
  - Instance method will use arguments
- Assume all arguments are positive integers

Data Structure:
- SumOfMultiples class
- Arrays
- Ranges

Algorithm:
- Define initialize method that takes unlimited # of arguments
  - Assign instance variable to array of arguments
- Define to class method that takes 1 integer argument
  - Iterate from 1 through number - 1
    - Delete any number that is not evenly divisible by 3 or 5
  - Sum the remaining numbers
- Define to instance method that takes 1 integer argument
  - Iterate from 1 through number - 1
    - Delete any number that is not evenly divisible by any of the numbers in the istance variable array
  - Sum the remaining numbers

=end

class SumOfMultiples
  def initialize(*divisors)
    @divisors = *divisors.empty? ? [3, 5] : divisors
  end

  def to(num)
    multiples = (1...num).select do |n|
      @divisors.any? { |divisor| n % divisor == 0 }
    end
    multiples.sum
  end

  def self.to(num)
    new.to(num)
  end
end
