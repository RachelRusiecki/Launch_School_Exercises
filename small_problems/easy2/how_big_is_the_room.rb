# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_feet = (length * width * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{length * width} square meters (#{square_feet} square feet)."

# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

SQFEET_TO_SQCENTIMETERS = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

square_centimeters = (length * width * SQFEET_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{length * width} square feet (#{length * width * 144} square inches, #{square_centimeters} square centimeters)."
