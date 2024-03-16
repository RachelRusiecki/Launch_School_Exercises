=begin

Problem:
- Input: array, block
- Output: boolean T/F

Explicit Rules:
- Method will take 1 array (or collection) argument
- Method will yield to a block
- If the block returns a falsey value for any element, the whole method stops iterating & returns false
- Empty arrays will return true, even if block returns a falsey value
- May not use: all?, any?, none?, one?

Implicit Rules:
- Will an empty array be passed into block?

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  - Iterate through collection
    - Yield to the block passing in each element as an argument to block
      - If block returns falsey value, break iteration & return false for the whole method
  - Return true if no elements have returned a falsey value

=end

def all?(collection)
  collection.each { |ele| return false unless yield(ele) }
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true
