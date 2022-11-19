# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return "Breakfast"
  "Dinner"
  puts "Dinner"
end

puts meal

# Breakfast because the explicit return was used and that will exit the method. Line 9 will not be executed.