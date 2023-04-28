=begin

Problem:
- Input: nested array
- Output: array of strings

Explicit Rules:
- Method will take 1 argument, a nested array of strings & integers
- The return value will be an array of strings where the string is listed the <integer> number of times

Implicit Rules:
- The same string should be returned, so do not get rid of or add plurals
- Assume the nested arrays have 1 string & 1 integer each

Algorithm:
- Define a method called `buy_fruit` that takes 1 argument, a nested array
  - Initialize an empty array object
  - Iterate through the nested array
    - Append the first element of each array to the new array however many times is indicated by the last element
  - Return the new array

=end

def buy_fruit(groceries)
  groceries.map { |fruit, num| [fruit] * num }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
