# Using this information, together with the course page linked above, fill in the missing part of the following code so we can convert an array of integers to base 8 (octal numbers). 

def convert_to_base_8(n)
  n.to_s(8).to_i
end

base8_proc = method(:convert_to_base_8)#.to_proc

p [8, 10, 12, 14, 16, 33].map(&base8_proc)
