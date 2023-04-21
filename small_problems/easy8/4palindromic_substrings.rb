=begin

Problem:
- Input: string
- Output: array of substrings

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be a list of all substrings that are palindromic (same forwards and backwards)
- The return value should be arranged in the same sequence as the substrings appear in the original string
- Duplicate palindromes should be included
- Can us the `substrings` method from previous exercise
- Palindromes are case sensitive ('abA' is not a palindrome)
- Characters are considered part of the palindrome ('ab-a' is not a palindrome)
- Single characters are not considered palindromes

Implicit Rules:
- List will be returned as an array of substrings
- An empty array should be returned if there are no palindromes
- Entire strings are considered substrings so can be palindromes

Algorithm:
- Define a method called `palindromes` that takes 1 argument, a string
  - Use the `substrings` method to determine all the substrings of the string
  - Delete the substring is only 1 character
  - Delete the substring if the reverse of it does not equal the original

=end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(str)
  substrings(str).delete_if { |substr| substr.size < 2 || substr != substr.reverse }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?

def palindromes_challenge(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string.upcase.delete('^a-zA-Z0-9') == string.reverse.upcase.delete('^a-zA-Z0-9') && string.delete('^a-zA-Z0-9').size > 1
end

p palindromes_challenge('abcd') == []
p palindromes_challenge('Madam') == ['Madam', 'ada']
p palindromes_challenge('hello-m.adam-did-madam-goodbye') == [
  'll', '-m.adam', '-m.adam-', '-m.adam-did-madam', '-m.adam-did-madam-', 'm.adam', 'm.adam-', 'm.adam-did-madam', 'm.adam-did-madam-', '.ada',
  '.adam-did-mada', 'ada', 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did', '-did-', 'did', 'did-', '-madam', '-madam-', 'madam',
  'madam-', 'ada', 'oo'
]
p palindromes_challenge('kniTting caSseTtes') == [
  'niTtin', 'iTti', 'Tt', 'Ss', 'seTtes', 'eTte', 'Tt'
]
