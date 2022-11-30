# You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among(0, 0, 1, 0, 2, 0)

# wrong number of arguments given, method only takes 1 argument but we put 6.

find_first_nonzero_among(1)

# undefined method: .each, this is used only for an array or hash, not an integer.