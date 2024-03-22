# Given this code:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# Fill out the following method calls for gather so that they produce the corresponding output shown in numbers 1-4 listed below:

gather(items) do |*value1, value2|
  puts value1.join(', ')
  puts value2
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |value1, *value2, value3|
  puts value1
  puts value2.join(', ')
  puts value3
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |value1, *value2|
  puts value1
  puts value2.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |value1, value2, value3, value4|
  puts "#{value1}, #{value2}, #{value3}, and #{value4}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!
