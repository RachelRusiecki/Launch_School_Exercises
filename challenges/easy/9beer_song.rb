# rubocop:disable Layout/LineLength
=begin

Problem:
- Input: number
- Output: print string

Explicit Rules:
- Print he lyrics of '99 Bottles of Beer' to the terminal

Implicit Rules:
- The number argument will represent the number of starting beers
- A verse will consist of # of bottles on wall & end w/ 1 less on wall
- 1 bottle of beer should not be plural
- 0 bottles should print 'no more bottles'
- If starting with 0, print new store lyrics, restart count @ 99
- Method can take optional second argument, should print all verses from 1st through 2nd argument
- Will be 3 class methods: 1 for 1 verse, 1 for multiple verses, 1 for full song

Data Structures:
- BeerSong class
- Loops / Iteration
- Strings

Algorithm:
- Define class verse method that takes 1 number argument
  - Output the lyrics using string interpolation of the number & number - 1
  - If number is 2, change second line to 1 bottle
  - If number is 0, change second line to 99 bottles
- Define class verses method
  - Iterate from 1st argument down to 2nd argument
  - Print the verses using the verse method
- Define class lyrics method
  - Iterate from 99 to 0
    - Print each verse using the verse method

=end
# rubocop:enable Layout/LineLength

class BeerSong
  def self.verse(num)
    case num
    when 2
      two_bottles_verse
    when 1
      one_bottle_verse
    when 0
      zero_bottles_verse
    else
      default_verse(num)
    end
  end

  def self.verses(first, last)
    result = []
    first.downto(last) { |num| result << verse(num) }
    result.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end

  def self.two_bottles_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, " \
      "1 bottle of beer on the wall.\n"
  end

  def self.one_bottle_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, " \
      "no more bottles of beer on the wall.\n"
  end

  def self.zero_bottles_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, " \
      "99 bottles of beer on the wall.\n"
  end

  def self.default_verse(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, " \
      "#{num - 1} bottles of beer on the wall.\n"
  end
end
