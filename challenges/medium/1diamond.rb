# rubocop:disable Layout/LineLength
=begin

Problem:
- Input: string
- Output: string

Explicit Rules:
- Method will take 1 character as an argument
- Print a diamond shape
  - 1st & last rows should contain A
  - All rows have exactly 2 letters with spaces in between
  - Diamond is symmetric, square
  - Letters apppear in ascending and then descending order

Implicit Rules:
- Letters will be capitalized
- Method will be a class method
- Diamond should return 1 long string w/ newlines, not necessarily printing diamonds

Data Structures
- Strings
- Loops
- Ranges

Algorithm:
- Define make_diamond method that takes 1 string argument
  - Initialize new empty string variable
  - Initialize outer space counter variable, set to index of letter argument in alphabet range
  - Initialize inner space counter variable, set to 1
  - Iterate from A - letter w/ index
    - For A:
      - Append outer space # of spaces to newly created string
      - Append A to string
      - Append outer space # of spaces plus \n to newly created string
      - Decrease outer space by 1
    - For other letters:
      - Append outer space # of spaces to newly created string
      - Append current letter to string
      - Append inner space counter # of spaces to string
      - Append current letter to string
      - Append outer space # of spaces plus \n to newly created string
      - Decrease outer space by 1 unless current letter is letter argument
      - Increase inner space by 2 unless current letter is letter argument
  - Reverse letter range
  - Iterate from letter before argument back through A
    - For other letters:
      - Increase outer space by 1
      - Decrease inner space by 2
      - Append outer space # of spaces to newly created string
      - Append current letter to string
      - Append inner space counter # of spaces to string
      - Append current letter to string
      - Append outer space # of spaces plus \n to newly created string
    - For A:
      - Append outer space # of spaces to newly created string
      - Append A to string
      - Append outer space # of spaces plus \n to newly created string

=end
# rubocop:enable Layout/LineLength

class Diamond
  attr_accessor :string, :outer_space, :inner_space, :letter_range

  def initialize(letter)
    @outer_space = ('A'..'Z').to_a.index(letter)
    @inner_space = 1
    @string = ''
    @letter_range = ('A'..letter).to_a
  end

  def <<(str)
    string << str
  end

  def self.make_diamond(letter)
    diamond = Diamond.new(letter)
    create_top_diamond(letter, diamond)
    diamond.letter_range.pop
    create_bottom_diamond(diamond)
    diamond.string
  end

  class << self
    private

    def create_top_diamond(letter, diamond)
      diamond.letter_range.each do |char|
        diamond << ascending_diamond(char, diamond)
        diamond.outer_space -= 1 unless char == letter
        diamond.inner_space += 2 unless char == 'A' || char == letter
      end
    end

    def create_bottom_diamond(diamond)
      diamond.letter_range.reverse.each do |char|
        diamond.inner_space -= 2
        diamond.outer_space += 1
        diamond << descending_diamond(char, diamond)
      end
    end

    def ascending_diamond(char, diamond)
      if char == 'A'
        "#{' ' * diamond.outer_space}A#{' ' * diamond.outer_space}\n"
      else
        "#{' ' * diamond.outer_space}#{char}#{' ' * diamond.inner_space}" \
          "#{char}#{' ' * diamond.outer_space}\n"
      end
    end

    def descending_diamond(char, diamond)
      if char == 'A'
        "#{' ' * diamond.outer_space}A#{' ' * diamond.outer_space}\n"
      else
        "#{' ' * diamond.outer_space}#{char}#{' ' * diamond.inner_space}" \
          "#{char}#{' ' * diamond.outer_space}\n"
      end
    end
  end
end
