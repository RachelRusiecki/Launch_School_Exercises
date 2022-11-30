# We want to iterate through the numbers array and return a new array containing only the even numbers. However, our code isn't producing the expected output. Why not?
# How can we change it to produce the expected result?

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers

# It is making the odd numbers nil because it has to iterate over every single number, not just select the even numbers. We should use the select method instead.

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers