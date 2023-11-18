# Take a look at the following code:

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# What output does this code print? Fix this class so that there are no surprises waiting in store for the unsuspecting developer.

# Fluffy
# My name is FLUFFY.
# FLUFFY
# FLUFFY

# What would happen in this case?

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# 42
# My name is 42.
# 42
# 43

# This code "works" because of that mysterious to_s call in Pet#initialize. However, that doesn't explain why this code produces the result it does. Can you?

# The local variable name is assigned to the integer 42. Then the local varibale fluffy is assigned to a new Pet object with 42 as the name.
# The @name instance variable is pointing to a new string object now because of the to_s call in the initialize method. name and @name are pointing to 2 different objects.
