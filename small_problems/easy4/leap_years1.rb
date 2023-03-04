# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400. Assume this rule is good for any year greater than year 0.
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# # The order in which you perform tests for a leap year calculation is important. For what years will leap_year? fail if you rewrite it as:

def leap_year_test?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 00
    true
  else
    year % 4 == 0
  end
end

p leap_year_test?(2016) == true
p leap_year_test?(2015) == false
p leap_year_test?(2100) == false
p leap_year_test?(2400) == false
p leap_year_test?(240000) == false
p leap_year_test?(240001) == false
p leap_year_test?(2000) == false
p leap_year_test?(1900) == false
p leap_year_test?(1752) == true
p leap_year_test?(1700) == false
p leap_year_test?(1) == false
p leap_year_test?(100) == false
p leap_year_test?(400) == false

# Can you rewrite leap_year? to perform its tests in the opposite order of the above solution?
# That is, test whether the year is divisible by 4 first, then, if necessary, test whether it is divisible by 100, and finally, if necessary, test whether it is divisible by 400.

def leap_year_opposite?(year)
  return false if year % 4 != 0
  if year % 100 == 0
    if year % 400 == 0
      true
    else
      false
    end
  else
    true
  end
end

p leap_year_opposite?(2016) == true
p leap_year_opposite?(2015) == false
p leap_year_opposite?(2100) == false
p leap_year_opposite?(2400) == true
p leap_year_opposite?(240000) == true
p leap_year_opposite?(240001) == false
p leap_year_opposite?(2000) == true
p leap_year_opposite?(1900) == false
p leap_year_opposite?(1752) == true
p leap_year_opposite?(1700) == false
p leap_year_opposite?(1) == false
p leap_year_opposite?(100) == false
p leap_year_opposite?(400) == true
