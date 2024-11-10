# Take a look at the following code:

name = "Bob"
save_name = name
name = "Alice"
puts name, save_name

# What does this code print out?
# Alice, Bob

# What does this print out? Can you explain these results?

name = "Bob"
save_name = name
name.upcase!
puts name, save_name

# BOB, BOB - because by using the upcase method, we are changing both name and everything that points to name, including save_name.
