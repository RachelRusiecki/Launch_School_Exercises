# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i
puts "It's #{Time.now.year}. You will retire in #{Time.now.year + retirement_age - age}."
puts " You only have #{retirement_age - age} years of work to go!"
