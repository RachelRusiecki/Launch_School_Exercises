=begin

Problem:
- Input: string
- Output: modified string

Explicit Rules:
- Method will take 1 string argument
- The return value will be the same string but modified so that all number words are now digits

Implicit Rules:
- The original string will be mutated

Algorithm:
- Initialize an array constant containing the strings 'zero' - 'nine'
- Define a method called 'word_to_digit' that takes 1 argument, a string
  - Substitute all word numbers w/ their corresponding index of the constant array

=end

NUMS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  NUMS.each { |word| str.gsub!(/\b#{word}\b/, NUMS.index(word).to_s) }
  str
end

p word_to_digit('Please freight call me at five five five one two three four. Thanks.') == 'Please freight call me at 5 5 5 1 2 3 4. Thanks.'

# Can you change your solution so that the spaces between consecutive numbers are removed? Suppose the string already contains two or more space separated numbers (not words).
# Can you leave those spaces alone, while removing any spaces between numbers that you create?

def word_to_long_digit(str)
  words = str.split.map! do |word|
    if NUMS.include?(word)
      word.gsub(word, NUMS.index(word).to_s)
    elsif NUMS.include?(word.delete('^0-9a-zA-Z')) && word.end_with?('.')
      "#{word.gsub(word.delete('^0-9a-zA-Z'), NUMS.index(word.delete('^0-9a-zA-Z')).to_s)} "
    else
      "#{word} "
    end
  end
  str.delete!(str)
  str << words.join
  str.strip!
end

p word_to_long_digit('1 2 3. Please freight call me at five five five one two three four. Thanks.') == '1 2 3. Please freight call me at 5551234. Thanks.'

# What about dealing with phone numbers? Is there any easy way to format the result to account for phone numbers?
# For our purposes, assume that any 10 digit number is a phone number, and that the proper format should be "(123) 456-7890".

def word_to_phone_number(str)
  words = str.split.map do |word|
    if NUMS.include?(word)
      word.gsub(word, NUMS.index(word).to_s)
    elsif NUMS.include?(word.delete('^0-9a-zA-Z')) && word.end_with?('.')
      "#{word.gsub(word.delete('^0-9a-zA-Z'), NUMS.index(word.delete('^0-9a-zA-Z')).to_s)} "
    else
      "#{word} "
    end
  end
  str.delete!(str)
  str << words.join
  words = str.split.map do |word|
    if word.delete('^0-9a-zA-Z').to_i.to_s == word.delete('^0-9a-zA-Z') && word.delete('^0-9a-zA-Z').length == 10
      word.gsub(word.delete('^0-9a-zA-Z'), "(#{word[0, 3]}) #{word[3, 3]}-#{word[6, 4]}")
    else
      word
    end
  end
  str.delete!(str)
  str << words.join(' ')
end

p word_to_phone_number('1 2 3. Please freight call me at five five five one two three four five six seven. Thanks.') == '1 2 3. Please freight call me at (555) 123-4567. Thanks.'
