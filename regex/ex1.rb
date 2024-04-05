# Write a method that returns true if its argument looks like a URL, false if it does not.

def url?(str)
  str.match?(/\Ahttps?:\/\/\S+.com\z/)
end

p url?('https://launchschool.com')     # -> true
p url?('http://example.com')           # -> true
p url?('https://example.com hello')    # -> false
p url?('   https://example.com')       # -> false
