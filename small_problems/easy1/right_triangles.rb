# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def bottom_right_triangle(n)
  spaces = n - 1
  stars = 1
  loop do
    puts "#{" " * spaces}#{"*" * stars}"
    spaces -= 1
    stars += 1
    break if stars > n
  end
end

bottom_right_triangle(5)

bottom_right_triangle(9)

def top_right_triangle(n)
  spaces = 0
  stars = n
  loop do
    puts "#{" " * spaces}#{"*" * stars}"
    spaces += 1
    stars -= 1
    break if stars == 0
  end
end

top_right_triangle(5)

top_right_triangle(9)

def bottom_left_triangle(n)
  stars = 1
  loop do
    puts "#{"*" * stars}"
    stars += 1
    break if stars > n
  end
end

bottom_left_triangle(5)

bottom_left_triangle(9)

def top_left_triangle(n)
  stars = n
  loop do
    puts "#{"*" * stars}"
    stars -= 1
    break if stars == 0
  end
end

top_left_triangle(5)

top_left_triangle(9)
