=begin

Problem:
- Input: string
- Output: hash

Explicit Rules:
- Method will take 1 string argument.
- The return value will be a hash containing 3 key value pairs.
  - The 1st pair will represent the percentage of lowercase letters.
  - The 2nd pair will represent the percentage of uppercase letters.
  - The 3rd pair will represent the percentage of non-letter characters.
- Assume the string argument is not empty.

Implicit Rules:
- The hash keys should be symbols.
- The hash values should be floats rounded to 1 decimal place.
- Spaces count as a character.

Algorithm:
- Define a method called 'letter_percentages' that takes 1 argument, a string.
  - Initialize a hash variable w/ 3 symbols as the keys (:lowercase, :uppercase, & :neither) & the values all set to 0.0.
  - Find the total number of chracters using the size method.
  - Split the string into an array of characters.
  - Select all of the lowercase letters into a new array.
  - Find the size of the lowercase array.
  - Divide the number of lowercase letters by the total number of characters and multiply by 100 to get the percentage.
  - Assign the :lowercase key to the resulting percentage value rounded to the nearest 1 decimal place.
  - Select all of the uppercase letters into a new array.
  - Find the size of the uppercase array.
  - Divide the number of uppercase letters by the total number of characters and multiply by 100 to get the percentage.
  - Assign the :uppercase key to the resulting percentage value rounded to the nearest 1 decimal place.
  - Select all of the non-letter characters into a new array.
  - Find the size of the non-letter characters array.
  - Divide the number of non-letter characters by the total number of characters and multiply by 100 to get the percentage.
  - Assign the :neither key to the resulting percentage value rounded to the nearest 1 decimal place.
  - Return the hash.

=end

def letter_percentages(str)
  lettercase_percentages = {}
  lettercase_percentages[:lowercase] = ((str.count('a-z').to_f) / str.size * 100).round(1)
  lettercase_percentages[:uppercase] = ((str.count('A-Z').to_f) / str.size * 100).round(1)
  lettercase_percentages[:neither] = ((str.count('^a-zA-Z').to_f) / str.size * 100).round(1)
  lettercase_percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI') == { lowercase: 66.7, uppercase: 33.3, neither: 0.0 }
