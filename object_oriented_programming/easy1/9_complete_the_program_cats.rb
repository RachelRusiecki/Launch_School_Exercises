# Consider the following program.

class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
    @colors = colors
  end

  def to_s; "My cat #{@name} is #{@age} years old and has #{@colors} fur." end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# Update this code so that when you run it, you see the following output:

# My cat Pudding is 7 years old and has black and white fur.
# My cat Butterscotch is 10 years old and has tan and white fur.

# An alternative approach to this problem would be to modify the Pet class to accept a colors parameter. If we did this, we wouldn't need to supply an initialize method for Cat.
# Why would we be able to omit the initialize method? Would it be a good idea to modify Pet in this way? Why or why not?
# How might you deal with some of the problems, if any, that might arise from modifying Pet?

# We would be able to omit Cat's initialize method because any Cat object inherits Pet's initialize method.
# It might not ne a good idea to modify Pet's initialize method because that would affect all subclasses that inherit that method from Pet.
# We could deal with these problems by overriding Pet's initialize method to better fit the needs of the subclass.
