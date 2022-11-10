# What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

a = nil

array.each do |element|
    a = element
end

puts a

# Error because variable within blocks can reference variable outside the block BUT NOT VICE VERSA!