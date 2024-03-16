=begin

Problem:
- Input: array, block
- Output: boolean T/F

Explicit Rules:
- Method will take 1 array (or collection) argument
- Method will yield to a block
- If the block returns a truthy value for any element, the whole method stops iterating & returns false
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
      - If block returns truthy value, break iteration & return false for the whole method
  - Return true if no elements have returned a truthy value

=end

def none?(collection)
  collection.each { |ele| return false if yield(ele) }
  true
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true

# Alternate Solution:

# def none?(collection, &block)
#   !any?(collection, &block)
# end
