=begin

Problem:
- Input: array
- Output: array

Explicit Rules:
- Method will take 1 array argument
- The return value will be an array containing every other element in the original array
- The values should start w/ the 1st element, then 3rd, then 5th, etc

Implicit Rules:
- An empty array argument will just return an empty array

Algorithm:
- Define a method called `oddities` that takes 1 argument, an array
  - Initialize an empty array variable
  - Iterate through the input array
    - If the index is even, append the element to the new array
  - Return the new array

=end

def oddities(arr)
  others = []
  arr.each_with_index { |ele, idx| others << ele if idx.even? }
  others
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array. Try to solve this exercise in at least 2 additional ways.

def even_elements1(arr)
  evens = []
  arr.each_with_index { |ele, idx| evens << ele if idx.odd? }
  evens
end

p even_elements1([2, 3, 4, 5, 6]) == [3, 5]
p even_elements1([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p even_elements1(['abc', 'def']) == ['def']
p even_elements1([123]) == []
p even_elements1([]) == []
p even_elements1([1, 2, 3, 4, 1]) == [2, 4]

def even_elements2(arr)
  idx = 1
  arr.each_with_object([]) do |_, new_arr|
    new_arr << arr[idx] unless arr[idx] == nil
    idx += 2
  end
end

p even_elements2([2, 3, 4, 5, 6]) == [3, 5]
p even_elements2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p even_elements2(['abc', 'def']) == ['def']
p even_elements2([123]) == []
p even_elements2([]) == []
p even_elements2([1, 2, 3, 4, 1]) == [2, 4]
