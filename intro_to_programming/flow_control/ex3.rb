# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Enter a number between 0 and 100."
n = gets.chomp.to_i
if n < 0
    puts "Error! Number is below 0."
elsif n <= 50
    puts "#{n} falls between 0 and 50."
elsif n <= 100
    puts "#{n} falls between 51 and 100."
else
    puts "Error! That number is over 100."
end