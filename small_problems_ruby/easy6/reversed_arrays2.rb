=begin

Problem:
- Input: array
- Output: new array

Explicit Rules:
- Method will take 1 argument, an array
- Return value will be a NEW array w/ the elements of the original array in reverse order
- We cannot use the `reverse` methods or the previous exercise's method

Implicit Rules:
- Only whole elements will be reversed, not individual characters, such as letters in a string
- An empty array will just return a new empty array

Algorithm:
- Define a method called 'reverse_array' that takes 1 argument, an array
  - Initialize a new empty array variable
  - Initialize an index counter variable and set it equal to -1
  - Start a loop
    - Append the last element of the array to the new array (using the index counter)
    - Decrease the index counter by 1
    - Break out of the loop when the absolute value of the index counter is greater the the sixe of the array
  - Return the new array

=end

def reverse(arr)
  new_arr = []
  index = -1
  until index.abs > arr.size
    new_arr << arr[index]
    index -= 1
  end
  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# An even shorter solution is possible by using either inject or each_with_object.

def reverse_challenge(arr)
  arr.each_with_object([]) { |element, new_arr| new_arr.unshift(element) }
end

p reverse_challenge([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_challenge(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse_challenge(['abc']) == ['abc']              # => true
p reverse_challenge([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_challenge(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

def reverse_inject(arr)
  arr.inject([], :unshift)
end

p reverse_inject([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_inject(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse_inject(['abc']) == ['abc']              # => true
p reverse_inject([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_challenge(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]
