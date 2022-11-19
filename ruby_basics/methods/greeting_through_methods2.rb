# Write a method named greet that invokes the following methods:

def hello
  "Hello"
end

def world
  "World"
end

# When greet is invoked with #puts, it should output "Hello World"

def greet
  "#{hello} #{world}"
end

puts greet