=begin

Problem:
- Input: string
- Output: integer

Explicit Rules:
- Calculate the Scrabble points of a string

Implicit Rules:
- Create a Scrabble class
- Will have an initialize method that takes 1 argument
- An empty string should return 0
- Any string that is just whitespace should return 0
- Nil should return 0
- Arguments are case insensitive
- Create class method as well

Data Structures:
- Hash?
- Iteration

Algorithm:
- Define class called Scrabble
  - Initialize constant hash where keys are arrays of letters & values are integer point values
  - Define initialize method that takes 1 argument
    - Save string argument for later
  - Define instance method called score
    - Return 0 if argument is nil, empty string, or whitespace string
    - Split string into array of characters
    - Iterate through each character
      - Transform each letter to its point value using the hash
    - Sum the transformed array
  - Define class method called score that takes 1 string argument
    - Split string into an array of characters
    - Iterate through each character
      - Transform each letter to its point value using the hash
    - Sum the transformed array

=end

class Scrabble
  POINTS = { %w(a e i o u l n r s t) => 1, %w(d g) => 2, %w(b c m p) => 3,
             %w(f h v w y) => 4, %w(k) => 5, %w(j x) => 8, %w(q z) => 10 }

  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil?
    result = []
    POINTS.each do |letters, point_values|
      @word.downcase.each_char do |char|
        result << point_values if letters.include?(char)
      end
    end
    result.sum
  end

  def self.score(word)
    self.new(word).score
  end
end
