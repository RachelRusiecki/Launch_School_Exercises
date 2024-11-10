=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 string argument
- The return value will be a new string where the letters are staggered b/t lowercase and uppercase
- Other characters (numbers, symbols, spaces, etc) do not count as characters but they should still be included in the return value

Implicit Rules:
- The string should start with a capital letter

Algorithm:
- Define a method called `staggered_case` that takes 1 argument, a string
  - Initialize a new empty string variable
  - Initialize a counter variable and set it equal to 1
  - Iterate through each character
   - If the character is a letter & the counter is even, capitalize it & append it to the new string
   - If the character is a letter & the counter is odd, downcase it & append it to the new string 
   - If the character is anything else (number, symbol, space, etc), append it to the new string & skip the rest of the iteration
   - Increase the counter by 1
  - Return the new string

=end

def staggered_case(str)
  staggered_caps = ''
  counter = 1
  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      if counter.odd?
        staggered_caps << char.upcase
      else
        staggered_caps << char.downcase
      end
      counter += 1
    else
      staggered_caps << char
    end
  end
  staggered_caps
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state.

def staggered_case2(string, need_upper = true)
  result = ''
  if need_upper == false
    string.chars.each do |char|
      if char =~ /[a-z]/i
        if need_upper
          result += char.downcase
        else
          result += char.upcase
        end
        need_upper = !need_upper
      else
        result += char
      end
    end
  else
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    end
  end
  result
end

p staggered_case2('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL CAPS', false) == 'AlL cApS'
p staggered_case2('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
