# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(n)
  numbers = []
  n.times do |index|
    num = index.even? ? 1 : 0
    numbers << num
  end
  numbers.join
end

puts stringy(6) == "101010"
puts stringy(9) == "101010101"
puts stringy(4) == "1010"
puts stringy(7) == "1010101"

# Modify stringy so it takes an additional optional argument that defaults to 1.
# If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(x, y = 1)
  numbers = []
  if y == 0
    x.times do |index|
    num = index.even? ? 0 : 1
    numbers << num
    end
  else
    x.times do |index|
    num = index.even? ? 1 : 0
    numbers << num
    end
  end
  numbers.join
end

puts stringy(6, 0) == "010101"
puts stringy(9, 0) == "010101010"
puts stringy(4, 0) == "0101"
puts stringy(7, 0) == "0101010"