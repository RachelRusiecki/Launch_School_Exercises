# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

puts (1..99).to_a.select { |n| n.even? }
