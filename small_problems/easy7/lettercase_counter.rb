=begin

Problem:
- Input: string
- Output: hash

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be a new hash that contains 3 pairs
  - The keys will be the types of characters (lowercase letters, uppercase letters, & neither)
  - The values will be the number of characters that fit the description

Implicit Rules:
- The `neither` category includes anything besdides letters (spaces, numbers, symbols, etc)
- An empty string will still return a hash but all the values will be 0
- The sum of all the hash values will be equal to the size of the string

Algorithm:
- Define a method called `letter_case_count` that takes 1 argument, a string
  - Initialize a new empty hash variable
  - Find the count of lowercase letters in the string
  - Assign the `lowercase` key to the value of that count
  - Find the count of uppercase letters
  - Assign the `uppercase` key to the value of that count
  - Assign the `neither` key to the value of the count of the remaining characters
  - Return the hash

=end

def letter_case_count(str)
  { lowercase: str.count('a-z'), uppercase: str.count('A-Z'), neither: str.count('^a-zA-Z') }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
