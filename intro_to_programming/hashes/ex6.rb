# Given the following code, what's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
p my_hash
p my_hash2

# The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.