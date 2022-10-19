x = 0
3.times do
    x += 1
end
puts x

# returns 3 (1 + 2 + 3)

y = 0
3.times do
    y += 1
    x = y
end
puts x

# error undefined local variable or method because x is not available as it is created within the scope of the do/end block, have to define x outside of method scope