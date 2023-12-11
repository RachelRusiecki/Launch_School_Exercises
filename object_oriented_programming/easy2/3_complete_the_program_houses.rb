# Assume you have the following code:

class House
  attr_reader :price

  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other_house); price <=> other_house.price end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# and this output:

# Home 1 is cheaper
# Home 2 is more expensive

# Modify the House class so that the above program will work. You are permitted to define only one new method in House.

# Is the technique we employ here to make House objects comparable a good one? (Hint: is there a natural way to compare Houses? Is price the only criteria you might use?)
# What problems might you run into, if any? Can you think of any sort of classes where including Comparable is a good idea?

# This might not be the best technique to compare houses because we really aren't comparing the House objects with each other. We are comparing their prices, which are Integer objects.
# What we could do instead is call the price method on the house objects getting compared or create a separate method called compare_prices that checks the price specifically.
# That way, we can also compare other criteria of the houses if needed. We would not be able to do this the way it is set up now, for example if we wanted to find which house was taller.
# Including Comparable is useful when dealing with any instance variables that reference numbers.
