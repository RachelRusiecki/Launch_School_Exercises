# You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: no implicit conversion of nil into String
# (TypeError). What is the problem and how can you fix it?

def get_quote(person)
  if person == "Yoda"
    return "Do. Or do not. There is no try."
  end

  if person == "Confucius"
    return "I hear and I forget. I see and I remember. I do and I understand."
  end

  if person == "Einstein"
    "Do not worry about your difficulties in Mathematics. I can assure you mine are still greater."
  end
end

puts "Confucius says:"
puts '"' + get_quote("Einstein") + '"'

# Only the last line of the method is returned which is the Einstein quote. Otherwise, the 2 other quotes will have a return value of nil, because person != Einstein.
# Fix with explicit returns.