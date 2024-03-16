=begin

Problem:
- Input: array, block
- Output: boolean T/F

Explicit Rules:
- Method will take 1 array (or collection) argument
- Method will yield to a block
- If the block returns a truthy value for any 2 elements, the whole method stops iterating & returns false
- Empty arrays will return false
- May not use: all?, any?, none?, one?

Implicit Rules:
- Will an empty array be passed into block?

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  -Inititalize counter variable & set to 0
  - Iterate through collection
    - Yield to the block passing in each element as an argument to block
      - If block returns truthy value, increase counter by 1
      - If block returns truthy value again, break iteration & return false for the whole method
  - Return false if iteration is completed

=end

def one?(collection)
  true_count = 0
  collection.each do |ele|
    true_count += 1 if yield(ele)
    return false if true_count >= 2
  end
  true_count == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false
