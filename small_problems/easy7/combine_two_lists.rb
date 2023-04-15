=begin

Problem:
- Input: 2 arrays
- Output: 1 combined new array

Explicit Rules:
- Method will take 2 array arguments
- The return value will be 1 new array that combines both array's elements, alternating between the 2 arrays
- Assume both array arguments are non-empty & hav the same # of elements

Implicit Rules:
- The new array will begin with the first array's first element, then the second array's first element, etc
- Elements can be any object

Algorithm:
- Define a method called `interleave` that takes 2 array arguments
  - Initialize a new empty array variable
  - Initialize an index varaibele and set it equal to 0
  - Start a loop
    - Append the first element of the first array to the new array (using the index)
    - Append the first element of the second array to the new array (using the index)
    - Increase the index by 1
    - Break out of the loop when the size of the new array is equal to the input array's size times 2
  - Return the new array

=end

def interleave(arr1, arr2)
  combo = []
  idx = 0
  until combo.size == arr1.size * 2
    combo << arr1[idx]
    combo << arr2[idx]
    idx += 1
  end
  combo
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# See if you can rewrite interleave to use zip.

def interleave_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
