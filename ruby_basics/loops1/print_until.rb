# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  p numbers.shift
end
