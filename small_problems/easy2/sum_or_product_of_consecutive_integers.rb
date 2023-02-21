# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

num = ""

loop do
  puts "Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  break if num > 0
  puts "Number must be greater than 0."
end

arr = []

loop do
  arr << num
  num -= 1
  break if num == 0
end

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  if choice == "s"
    puts "The sum of the integers between 1 and #{num} is #{arr.inject(:+)}"
    break
  elsif choice == "p"
    puts "The product of the integers between 1 and #{num} is #{arr.inject(:*)}"
    break
  else
    puts "Oops. Unknown operation."
  end
end
