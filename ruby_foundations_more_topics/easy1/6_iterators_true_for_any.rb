=begin

Problem:
- Input: array, block
- Output: boolean T/F

Explicit Rules:
- Method will take 1 array argument
- Method will yield to a block
- If the block returns a truthy value for any element, the whole method stops iterating & returns true
- Empty arrays will return false, even if block returns a truthy value
- May not use: all?, any?, none?, one?

Implicit Rules:
- Will an empty array be passed into block?

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  - Set a counter variable to 0
  - Start a loop
    - Break if counter is the size of array
    - Yield to the block using counter as the index for the array element
      - If block returns truthy value, break iteration & return true for the whole method
    - Increase counter variable by 1
  - Return false if no elements have returned a truthy value

=end

def custom_any?(arr)
  arr.each { |num| return true if yield(num) }
  false
end

p custom_any?([1, 3, 5, 6]) { |value| value.even? } == true
p custom_any?([1, 3, 5, 7]) { |value| value.even? } == false
p custom_any?([2, 4, 6, 8]) { |value| value.odd? } == false
p custom_any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p custom_any?([1, 3, 5, 7]) { |value| true } == true
p custom_any?([1, 3, 5, 7]) { |value| false } == false
p custom_any?([]) { |value| true } == false
p custom_any?({a: 1, b: 2, c: 3}) { |key, value| value.even? }
