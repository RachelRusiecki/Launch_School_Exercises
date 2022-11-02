# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

hash = {a: 1, b: 2, c: 3}
if hash.has_value?(1)
    puts "true"
else
    puts "false"
end