# Consider the following classes:

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end

  def wheels; @wheels = 1 end
end

class Car < Vehicle

  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  @wheels = 8

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

# Refactor these classes so they all use a common superclass, and inherit behavior as needed.

# Would it make sense to define a wheels method in Vehicle even though all of the remaining classes would be overriding it? Why or why not?
# If you think it does make sense, what method body would you write?

# Yes, it would make sense in this case because all objects in the Vehicle class or any subclass will have at least 1 wheel. The implementation would like the above.
