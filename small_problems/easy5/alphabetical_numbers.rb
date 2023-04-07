=begin

Problem:
- Input: array of integers
- Output: array sorted alphabetically of the written English number (one, two, three, etc.)

Explicit Rules:
- Method will take 1 argument, an array of integers (our problem takes itegers 0 - 19)
- Method will return an array sorted alphabetically based on the English words for each integer

Implicit Rules:
- Ranges should be converted to arrays when passed as an argument
- Returned array will be integers, not spelled out words

Algorithm:
- Create an array CONSTANT of the integer words
- Define a method called `alphabetic_number_sort` that takes an array of integers as an argument
  - Transform the array to the word values of each integer, using the CONSTANT array's index
  - Sort the array alphabetically
  - Transform the array elements back into integers, using the CONSTANT array's index

=end

NUM_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  words = arr.map { |num| NUM_WORDS[num] }
  words.sort.map { |word| NUM_WORDS.index(word) }
end

p alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]
