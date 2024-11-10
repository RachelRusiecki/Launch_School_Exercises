# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i

puts "==> Enter the second number:"
numbers << gets.chomp.to_i

puts "==> Enter the third number:"
numbers << gets.chomp.to_i

puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i

puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i

puts "==> Enter the last number:"
num6 = gets.chomp.to_i

if numbers.include?(num6)
  puts "The number #{num6} appears in #{numbers}."
else
  puts "The number #{num6} does not appear in #{numbers}."
end
