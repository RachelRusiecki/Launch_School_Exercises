# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

(1..99).to_a.each { |n| puts n if n.odd? }

# Other ways:

# numbers = (1..99).to_a
# puts numbers.select { |n| n.odd? }

# 1.upto(99) { |n| puts n if n.odd? }
