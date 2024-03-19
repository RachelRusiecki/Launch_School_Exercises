=begin

Problem:
- Input: 2 arrays
- Output: new array

Explicit Rules:
- Method will take 2 array arguments
- Return value will be new array of 2 element subarrays
  - Each subarray will have a value from each array argument in order
- Array arguments will ot be mutated
- May not use zip method
- Assume both array arguments are the same size

Implicit Rules:
- Assume array arguments are not empty

Algorithm:
- Define method that takes 2 array arguments
  - Initialize a new empty array variable
  - Iterate through the indices of each array
    - Call the element at the current index for each array
    - Push elements as subarray to newly created array
  - Return new array

=end

# def zip(arr1, arr2)
#   result = []
#   arr1.size.times { |idx| result << [arr1[idx], arr2[idx]] }
#   result
# end

def zip(arr1, arr2)
  arr1.size.times.with_object([]) do |idx, result|
    result << [arr1[idx], arr2[idx]]
  end
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
