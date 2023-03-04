# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

def running_total(arr)
  sum = 0
  arr.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

def running_total_test(arr)
  sum = 0
  arr.each_with_object([]) do |value, new_arr|
    sum += value
    new_arr << sum
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
