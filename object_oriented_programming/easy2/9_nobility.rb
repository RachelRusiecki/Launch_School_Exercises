# Now that we have a Walkable module, we are given a new challenge. Apparently some of our users are nobility, and the regular way of walking simply isn't good enough.
# Nobility need to strut. We need a new class Noble that shows the title and name when walk is called:

module Walkable
  def walk; puts "#{self} #{gait} forward" end
end

class Animal
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s; name end
end

class Person < Animal
  private

  def gait
    "strolls"
  end
end

class Cat < Animal
  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
  private

  def gait
    "runs"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s; "#{title} #{name}" end

  private

  def gait; 'struts' end
end

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

# We must have access to both name and title because they are needed for other purposes that we aren't showing here.

p byron.name
p byron.title

# This exercise can be solved in a similar manner by using inheritance; a Noble is a Person, and a Cheetah is a Cat, and both Persons and Cats are Animals.
# What changes would you need to make to this program to establish these relationships and eliminate the two duplicated #to_s methods?
# Is to_s the best way to provide the name and title functionality we needed for this exercise?
# Might it be better to create either a different name method (or say a new full_name method) that automatically accesses @title and @name?
# There are tradeoffs with each choice -- they are worth considering.
