=begin

Problem:
Input: string
Output: number

Explicit Rules:
- Find the number of differences between 2 strings
- If 1 string is longer, only compare the length of the shorter string

Implicit Rules:
- Strings will represent DNA strands, so all strings will be composed of 4 capital letters (A C G T)
- Create class called DNA
- Will create initialize method that takes 1 string argument
- Will create instance method called hamming_distance that takes 1 string argument
- Empty strings will return 0 differences
- If comparing different sixed strings, do not actually shorten longer string

Data Structures:
- Srings
- Arrays
- Iteration

Algorithm:
- Define a method that takes 1 string argument
  - Initialize new counter variable, set to 0
  - Iterate through each character in the string argument
    - Compare each character against the strand instance variable
      - If the characters at the same index do not match, increase counter variable by 1
  - Return counter varibale
=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    differences = 0
    shorter = @strand.size <= other_strand.size ? @strand : other_strand
    shorter.size.times do |idx|
      differences += 1 if @strand[idx] != other_strand[idx]
    end
    differences
  end
end
