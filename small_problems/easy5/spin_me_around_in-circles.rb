# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed.
# Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

greeting = 'hello world'
p greeting.object_id
p spin_me(greeting).object_id

# The return value will be a different string object because on line 5, the `split` method creates a new array object and the rest of the code uses that array to call new methods.
