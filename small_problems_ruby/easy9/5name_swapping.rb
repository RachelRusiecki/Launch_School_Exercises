=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 string argument representing a first & last name
- The return value will be a new string with the last name & first name separated by a comma

Implicit Rules:
- The first name will always come first & the last name will always come last

Algorithm:
- Define a method called `swap_name` that takes 1 argument, a string
  - Split the string into an array
  - Return the last element of the array, then the 1st, separated by a comma

=end

def swap_name(name)
  "#{name.split[1]}, #{name.split[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
