# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  "Dinner"
  puts "Dinner"
end

p meal

# Dinner and nil because we are still invoking puts "Dinner" even though the return value is nil.