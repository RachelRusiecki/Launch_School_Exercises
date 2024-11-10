# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num, power)
  multiply(num, num) * (num ** (power - 2))
end

p square(5, 4)
p square(-8, 2)
p square(3, -1)
