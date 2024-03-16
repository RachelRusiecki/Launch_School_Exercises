=begin

Problem:
-Input: string
-Output: string

Explicit Rules:
- Method will take 1 string argument
- Method should return a new decrypted string

Implicit Rules:
- Assume string argument is not empty
- Capitalization will remain the same
- Non letter objects will remain the same

Data Structures:
- strings
- hash?

Algorithm:
- Define method that takes 1 string argument
  - Create hash w/ all letter pairs
  - Initialize empty string variable
  - Iterate through each char of string arg
    - Append value of the letter key to new string
    - Correct lowercase vs uppercase letters
      - If original char is uppercase, upcase the new char
  - Return new string
  
=end

def decrypt(str)
  name = ''
  str.each_char do |char|
    case char
    when 'a'..'m', 'A'..'M' then name << (char.ord + 13).chr
    when 'n'..'z', 'N'..'Z' then name << (char.ord - 13).chr
    else name << char
    end
  end
  name
end

def decrypt_non_ascii(str)
  letter_pairs = { 'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r',
                   'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w',
                   'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b',
                   'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
                   'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'l',
                   'z' => 'm', }
  name = ''
  str.each_char do |char|
    if letter_pairs.key?(char.downcase)
      if char.upcase == char
        name << letter_pairs[char.downcase].upcase
      else
        name << letter_pairs[char]
      end
    else
      name << char
    end
  end
  name
end

p decrypt('Nqn Ybirynpr')
p decrypt('Tenpr Ubccre')
p decrypt('Nqryr Tbyqfgvar')
p decrypt('Nyna Ghevat')
p decrypt('Puneyrf Onoontr')
p decrypt('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
p decrypt('Wbua Ngnanfbss')
p decrypt('Ybvf Unvog')
p decrypt('Pynhqr Funaaba')
p decrypt('Fgrir Wbof')
p decrypt('Ovyy Tngrf')
p decrypt('Gvz Orearef-Yrr')
p decrypt('Fgrir Jbmavnx')
p decrypt('Xbaenq Mhfr')
p decrypt('Fve Nagbal Ubner')
p decrypt('Zneiva Zvafxl')
p decrypt('Lhxvuveb Zngfhzbgb')
p decrypt('Unllvz Fybavzfxv')
p decrypt('Tregehqr Oynapu')
