# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
    a = element
    puts a
end

puts a

# 3 because we are assigning the value of a to i, then 2, then 3. Variables can be called upon from within block.