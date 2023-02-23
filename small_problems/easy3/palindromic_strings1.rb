# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

def palindrome?(arg)
  arg == arg.reverse
end

p palindrome?("madam") == true
p palindrome?("Madam") == false
p palindrome?("madam i'm adam") == false
p palindrome?("356653") == true
p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?([1, 2, 3, 4, 5]) == false
