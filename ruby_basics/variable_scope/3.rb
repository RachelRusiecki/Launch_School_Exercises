# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
    a = b
    puts a
end

my_value(a + 5)
puts a

# 7 because method does not mutate the original variable a. Same as previous exercises.