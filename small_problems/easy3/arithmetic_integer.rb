# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

num1 = ""
loop do
  puts "==> Enter the first positive number:"
  num1 = gets.chomp.to_i
  break if first >= 0
  puts "==> Number cannot be negative!"
end

num2 = ""
loop do
  puts "==> Enter the second number:"
  num2 = gets.chomp.to_i
  break if num2 != 0
  puts "==> Second number cannot be negative or 0."
end

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1.to_f / num2.to_f}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"
