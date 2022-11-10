# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
    a += 1
end

puts a

# 7 because the a variable within the block is not the same thing as the first variable a. and so has no effect. This is called variable shadowing.