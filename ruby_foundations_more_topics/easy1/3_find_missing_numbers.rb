# Write a method that takes a sorted array of integers as an argument, & returns an array that includes all of the missing integers b/t the first and last elements of the argument.

def missing(arr)
  (arr[0]..arr[-1]).to_a.delete_if { |num| arr.include?(num) }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# Can you find other ways to solve this problem? What methods might prove useful? Can you find a way to solve this without using a method that requires a block?

def missing_no_block(arr)
  (arr[0]..arr[-1]).to_a - arr
end

p missing_no_block([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing_no_block([1, 2, 3, 4]) == []
p missing_no_block([1, 5]) == [2, 3, 4]
p missing_no_block([6]) == []
