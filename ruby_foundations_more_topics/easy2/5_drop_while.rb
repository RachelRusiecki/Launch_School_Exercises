=begin

Problem:
- Input: array, block
- Output: new array

Explicit Rules:
- Method will take 1 array argument
- Method will take a block
- Find 1st falsey value, that element plus the rest of elements becomes the new return array
- Return empty array if argument array is empty or if all block iterations return a truthy value
- May only use each, each_with_object, each_with_index, reduce, loop, for, while, until, no other itertaing methods

Implicit Rules:
- Return array will include all elements that come after the element for which the block returned false, even if they would return a truthy value

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  - Initialize new empty array
  - Iterate through argument array
    - Yield to block, passing in each element as block argument
      - If block returns falsey value, append that element plus all elements after to new empty array.
      - Stop iteration
  - Return new array

=end

def drop_while(arr)
  arr.each_with_index { |ele, idx| return arr[idx..-1] unless yield(ele) }
  []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
