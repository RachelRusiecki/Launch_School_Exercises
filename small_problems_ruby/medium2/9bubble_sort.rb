=begin

Problem:
- Input: array
- Output: sorted array

Explicit Rules:
- Method will take 1 array argument.
- The return value should be the sorted array using the bubble sort method.
  - The bubble sort method iterates through the array multiple times.
  - It compares the 1st 2 elements of the array and switches their position if the first element is greater than the second.
  - Then it moves the 2nd and 3rd elements and so forth.
  - The last iteration is when no elements in the array are swapped.
- The method will mutate the array argument.
- Assume the array argument always contains at least 2 elements.

Implicit Rules:
- The return value will be a sorted array from smallest to largest.
- The array values can be any object (numbers, strings, etc.).

Algorithm:
- Define a method called `bubble_sort!` that takes 1 argument, an array.
  - Start a loop.
    - Initialize an index variable and set it equal to 0.
    - Initialize a comparison array variable and set it equal to an empty array.
    - Start another loop.
      - Reassign the comparison array to a new array containing the values of the array argument.
      - Using the index variable, compare the value of the current index of the argument array to the value of the index after the current index in the argument array.
      - If the 1st index is greater than the 2nd…
        - Reassign the value of the 1st index to the value of the 2nd index & vice versa.
      - Increase the index variable by 1.
      - Break out of the inner loop if the index variable is greater than or equal to the size of the array.
    - Break out of the outer loop if the comparison array and the argument array are equal.
  - Return the sorted array.

=end

def bubble_sort!(arr)
  counter = 1
  loop do
    index = 0
    comparison_arr = Array.new(arr)
    loop do
      arr[index], arr[index + 1] = arr[index + 1], arr[index] if arr[index] > arr[index + 1]
      index += 1
      break if index >= arr.size - counter
    end
    break if comparison_arr == arr
    counter += 1
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
