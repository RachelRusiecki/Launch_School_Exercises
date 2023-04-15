=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 string argument
- The return value will be a new string where the characters are staggered b/t lowercase and uppercase
- Other characters (numbers, symbols, spaces, etc) should not be changed but do count as characters ( ex: 'I LoVe')

Implicit Rules:
- The first character will start out capitalized

Algorithm:
- Define a method called `staggered_case` that takes 1 argument, a string
  - Initalize a new empty string variable
  - Initialize an index counter variable and set it equal to 0
  - Iterate through each of the characters
    - If the index of the character is even, capitalize it & append it to the newly created string
    - If the index of the character is odd, lowercase it & append it to the newly created string
  - Return the newly created string

=end

def staggered_case(str)
  staggered_caps = ''
  idx = 0
  str.each_char do |char|
    if idx.even?
      staggered_caps << char.upcase
    else
      staggered_caps << char.downcase
    end
    idx += 1
  end
  staggered_caps
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Can you modify this method so the caller can request that the first character be downcased rather than upcased?
# If the first character is downcased, then the second character should be upcased, and so on.

def staggered_case2(string, need_upper = true)
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case2('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', false) == 'aLl_cApS'
p staggered_case2('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
