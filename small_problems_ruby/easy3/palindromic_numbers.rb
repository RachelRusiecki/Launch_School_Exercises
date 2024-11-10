# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(num)
  str = num.to_s
  loop do
    str.chop! if str.end_with?("0")
    break unless str.end_with?("0")
  end
  str == str.reverse
end

p palindromic_number?(34543)
p palindromic_number?(1232100)
p palindromic_number?(22)
p palindromic_number?(5)

