# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0:"
n = ""
loop do
  n = gets.chomp
  if n.to_i <= 0
    puts "Must enter a positive number."
  else
    break
  end
end

array = []
x = 1

loop do
  array << x
  x += 1
  break if x > n.to_i
end

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp

if answer == "s"
  puts "The sum of the integers between 1 and #{n} is #{array.inject(:+)}."
elsif answer == "p"
  puts "The product of the integers between 1 and #{n} is #{array.inject(:*)}."
else
  puts "Oops. Unknown operation."
end
