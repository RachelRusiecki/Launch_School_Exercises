=begin

Problem:
- Input: string
- Output: new string w/ capitalized words

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be a new string w/ the first character of every word capitalized and all other letters lowercase
- Words are anything separated by spaces

Implicit Rules:
- Capital letters that appear in the middle of a word need to be lowercased
- If a word starts w/ anything other than a letter, the first element cannot be capitalized, so it will stay the same

Algorithm:
- Define a method called `word_cap` that takes 1 argument, a string
  - Split the string into an array of words
  - Transform each word in the array
    - Capitalize each word
  - Join the words in the array to a string each separated by a space

=end

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Without the `capitalize` method, how would you solve this problem? Try to come up with at least two solutions.

def word_cap2(str)
  result = str.split.map(&:chars).map do |arr|
    arr.each_with_index do |char, idx|
      if idx == 0
        char.upcase!
      else
        char.downcase!
      end
    end
    arr.join
  end
  result.join(' ')
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap3(str)
  arr = []
  str.split.map(&:chars).each do |word_arr|
    counter = 0
    word_arr.each do |char|
      if counter == 0
        char.upcase!
      else
        char.downcase!
      end
      counter += 1
    end
    arr << word_arr.join
  end
  arr.join(' ')
end

p word_cap3('four score and seven') == 'Four Score And Seven'
p word_cap3('the javaScript language') == 'The Javascript Language'
p word_cap3('this is a "quoted" word') == 'This Is A "quoted" Word'
