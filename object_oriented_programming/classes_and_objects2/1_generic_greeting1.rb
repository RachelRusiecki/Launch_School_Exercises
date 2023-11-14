# Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

class Cat
  def self.generic_greeting; puts "Hello! I'm a cat!" end
end

Cat.generic_greeting
kitty = Cat.new

# What happens if you run kitty.class.generic_greeting? Can you explain this result?

kitty.class.generic_greeting

# The greeting is printed because the `generic_greeting` method is being called on the return value of calling the `class` method on `kitty`, which is `Cat`, not the actual object itself
