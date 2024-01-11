# Consider the following code:

class Pet
  attr_reader :type, :name

  def initialize(type, name, shelter)
    @type = type
    @name = name
    shelter.pets << self
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet
    @pets << pet
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    puts pets
  end
end

class Shelter
  attr_accessor :owners, :pets

  def initialize
    @owners = []
    @pets = []
  end

  def adopt(owner, pet)
    owners << owner if !owners.include?(owner)
    owner.pets << pet
    pets.delete(pet)
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.print_pets
      puts ''
    end
    puts 'The Animal Shelter has the following unadopted pets:'
    puts pets
    puts ''
  end
end

shelter = Shelter.new

butterscotch = Pet.new('cat', 'Butterscotch', shelter)
pudding      = Pet.new('cat', 'Pudding', shelter)
darwin       = Pet.new('bearded dragon', 'Darwin', shelter)
kennedy      = Pet.new('dog', 'Kennedy', shelter)
sweetie      = Pet.new('parakeet', 'Sweetie Pie', shelter)
molly        = Pet.new('dog', 'Molly', shelter)
chester      = Pet.new('fish', 'Chester', shelter)
biddy        = Pet.new('hamster', 'Biddy', shelter)
asta         = Pet.new('dog', 'Asta', shelter)
laddie       = Pet.new('dog', 'Laddie', shelter)
fluffy       = Pet.new('cat', 'Fluffy', shelter)
kat          = Pet.new('cat', 'Kat', shelter)
ben          = Pet.new('cat', 'Ben', shelter)
chatterbox   = Pet.new('parakeet', 'Chatterbox', shelter)
bluebell     = Pet.new('parakeet', 'Bluebell', shelter)

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
rrusiecki = Owner.new('R Rusiecki')

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(rrusiecki, biddy)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{rrusiecki.name} has #{rrusiecki.number_of_pets} adopted pets."
puts "The Animal Shelter has #{shelter.pets.size} unadopted pets."

# Write the classes and methods that will be necessary to make this code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.

# The order of the output does not matter, so long as all of the information is presented. Add your own name and pets to this project.
# Suppose the shelter has a number of not-yet-adopted pets, and wants to manage them through this same system.
# Thus, you should be able to add the following output to the example output shown above:

# The Animal Shelter has the following unadopted pets:
# a dog named Asta
# a dog named Laddie
# a cat named Fluffy
# a cat named Kat
# a cat named Ben
# a parakeet named Chatterbox
# a parakeet named Bluebell

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# The Animal shelter has 7 unadopted pets.

# Can you make these updates to your solution? Did you need to change your class system at all? Were you able to make all of your changes without modifying the existing interface?
