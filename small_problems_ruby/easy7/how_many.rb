=begin

Problem:
- Input: array
- Output: count of each element printed to the screen

Explicit Rules:
- Write a method that takes 1 array argument
- The method will count the # of occurences of each element and print them to the screen
- The string elements are case sensitive ('suv' is not he same as 'SUV')

Implicit Rules:
- Print the first element first and then the next one, etc

Algorithm:
- Define a method called `count_occurrences` that takes 1 array argument
  - Initialize an empty array variable
  - Iterate through the array
    - Skip the current iteration if the element appears in the new array
    - Count the number of times each element is listed
    - Print that number to the terminal
    - Append the element to the new array

=end

def count_occurrences(arr)
  duplicate_check = []
  arr.each do |element|
    next if duplicate_check.include?(element)
    puts "#{element} => #{arr.count(element)}"
    duplicate_check << element
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)

# Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV".

def count_occurrences_case_insensitive(arr)
  duplicate_check = []
  downcase = arr.map(&:downcase)
  downcase.each do |element|
    next if duplicate_check.include?(element)
    puts "#{element} => #{downcase.count(element)}"
    duplicate_check << element
  end
end

count_occurrences_case_insensitive(vehicles)
