=begin

Problem:
- Input: array
- Output: reversed array, same object

Explicit Rules:
- Method takes 1 array argument
- The return value will be the same array object with all elements reversed
- We cannot use the `reverse` methods

Implicit Rules:
- Only whole elements are reversed, not individual characters, such as letters in a string
- An empty array will just return the same empty array

Algorithm:
- Define a method called `reverse_array` that takes 1 array argument
  - Initialize an index variable and set it equal to 0
  - Initialize a negative index variable and set it equal to -1
  - Start a loop
    - Reassign the first element of the array to the last element (using the index & negative index)
    - Increase the index by 1
    - Decrease the negative index by 1
    - Break out of the loop if the index is equal to the size of the array divided by 2
  - Return the original mutated array

=end

# def reverse_array(arr)
#   new_arr = []
#   negative_index = -1
#   until negative_index.abs > arr.size
#     new_arr << arr[negative_index]
#     negative_index -= 1
#   end
#   index = 0
#   until index == arr.size
#     arr[index] = new_arr[index]
#     index += 1
#   end
#   arr
# end

def reverse_array(arr)
  index = 0
  negative_index = -1
  until index == arr.size / 2
    arr[index], arr[negative_index] = arr[negative_index], arr[index]
    index += 1
    negative_index -= 1
  end
  arr
end

list = [1, 2, 3, 4]
p list.object_id

p reverse_array(list)
p reverse_array(%w(a b c d e))
p reverse_array(['abc'])
p reverse_array([])

p list.object_id
