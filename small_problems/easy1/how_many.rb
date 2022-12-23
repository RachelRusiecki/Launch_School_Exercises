# Write a method that counts the number of occurrences of each element in a given array.

vehicles = ["car", "car", "truck", "car", "SUV", "truck", "motorcycle", "motorcycle", "car", "truck", "suv"]

def count_occurrences(array)
  array.each { |x| x.downcase! }
  occurrences = array.tally
  occurrences.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)