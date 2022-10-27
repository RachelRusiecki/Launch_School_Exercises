# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

colors = ["red", "yellow", "blue"]
colors.each_with_index { |color, index| puts "#{index + 1}. #{color}" }