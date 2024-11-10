=begin

Problem:
- Input: integer
- Output: multiline strings

Explicit Rules:
- Method will take 1 integer argument
- The method should print stars in the shape of a diamond where the longest part on the diamond contains however many stars of the original integer argument
- Assume all arguments are odd, positive integers

Implicit Rules:
- An argument of 1 will just print out a single star
- The amount of lines print will always equal the integer argument
- The diamonds will start & end w/ 1 star and each line will go up or down by 2
- The return value of the method will be nil because we are printing strings

Algorithm:
- Define a method called `diamond` that takes 1 argument, a positive odd integer
  - Initialize a counter variable for stars & set it equal to 1
  - Initialize a counter variable for spaces & set it equal to half the integer
  - Start a loop
    - Print half of the spaces using the spaces counter
    - Print 1 star using the stars counter
    - Increase the stars counter by 2
    - Decrease the spaces counter by 1
    - Break out of the loop when the counter is greater then the integer
  - Start another loop
    - Decrease the stars counter by 2
    - Increase the spaces counter by 1
    - Print the spaces
    - Print that many stars
    - Break out of the loop when the stars counter is less than 1

=end

def diamond(num)
  stars = 1
  spaces = num / 2
  loop do
    puts "#{' ' * spaces}#{'*' * stars}"
    break if stars >= num
    stars += 2
    spaces -= 1
  end
  loop do
    stars -= 2
    spaces += 1
    break if stars < 1
    puts "#{' ' * spaces}#{'*' * stars}"
  end
end

diamond(1)
diamond(3)
diamond(9)

# Try modifying your solution or our solution so it prints only the outline of the diamond.

def diamond_outline(num)
  outside_spaces = num / 2
  inside_spaces = 1
  puts "#{' ' * outside_spaces}*"
  loop do
    outside_spaces -= 1
    puts "#{' ' * outside_spaces}*#{' ' * inside_spaces}*"
    break if outside_spaces <= 0
    inside_spaces += 2
  end
  loop do
    outside_spaces += 1
    inside_spaces -= 2
    break if inside_spaces < 0
    puts "#{' ' * outside_spaces}*#{' ' * inside_spaces}*"
  end
  puts "#{' ' * outside_spaces}*"
end

diamond_outline(9)
