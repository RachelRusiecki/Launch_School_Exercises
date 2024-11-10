=begin

Problem:
- Input: array & hash
- Output: string

Explicit Rules:
- Method will take 2 arguments, an array of strings & a hash w/ 2 key/value pairs
- The array will represent a person's full name
- The hash will represent the person's title & occupation
- The return value will be a string that uses the person's full name, title, & occupation

Implicit Rules:
- This method will return a value; not print an output to the terminal

Algorithm:
- Define a method called `greetings` that takes 2 arguments, an array & a hash
  - Join the strings in the array w/ a space b/t each one to form the person's full name
  - Use string interpolation to return a greeting w/ the person's name, title, & occupation

=end

def greetings(name, job)
  full_name = name.join(' ')
  title = job[:title]
  occupation = job[:occupation]
  "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."
