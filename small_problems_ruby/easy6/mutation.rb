# What will the following code print, and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# This will output an array where CURLY, SHEMP, & CHICO are upcased because the destructive method `upcase!` was used on the elements. The elements from array1 have the same object ID.

# How can this feature of ruby get you in trouble?
# This can have unforseen side effects if array2 was not intended to be changed.

# How can you avoid it?
# Make sure methods do not mutate anything that is not intended to mutate. Use the non-destructive `upcase` method for example.
