=begin

Problem:
- Input: array
- Output: new array

Explicit Rules:
- Method will take 1 array argument
- The return value will be an new array w/ the 1st element of the original array at the end of the new array
- The original array should not be modified
- Do not use the `rotate` methods

Implicit Rules:
- If the array only has 1 element, the new array will just be identical

Algorithm:
- Define a method called `rotate_array` that takes 1 argument, an array
  - Initialize a new empty array variable
  - Initialize an index variable & set it equal to 1
  - Start a loop
    - Append the 2nd element of the original array to the new array, using the index
    - Increase the index by 1
    - Break out of the loop if the index is equal to the size of the original array minus 1
  - Append the first index of the original array to the new array
  - Return the new array

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]

# Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.

def rotate_str(str)
  "#{str[1..-1]}#{str[0]}"
end

p rotate_str("Hello")

def rotate_int(num)
  "#{num.to_s[1..-1]}#{num.to_s[0]}".to_i
end

p rotate_int(123)
