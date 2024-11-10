# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

def century(year)
  century = (year - 1) / 100 + 1
  ordinize(century)
end

def ordinize(num)
  if (11..13).include?(num % 100)
    "#{num}th"
  else
    case num % 10
    when 1 then "#{num}st"
    when 2 then "#{num}nd"
    when 3 then "#{num}rd"
    else "#{num}th"
    end
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
