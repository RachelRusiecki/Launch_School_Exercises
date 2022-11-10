# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
    a += 10
end

my_value(a)
puts a

# 7 because the method does not mutate the original variable a/ This is the same as the previous exercise, we just changed b to a.