# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

def century(year)
  century = ((year - 1) / 100) + 1
  if (11..13).include?(century % 100)
    "#{century}th"
  else
    case century % 10
    when 1 then "#{century}st"
    when 2 then "#{century}nd"
    when 3 then "#{century}rd"
    else "#{century}th"
    end
  end
end

p century(2000) == "20th"
p century(2001) == "21st"
p century(1965) == "20th"
p century(256) == "3rd"
p century(5) == "1st"
p century(10103) == "102nd"
p century(1052) == "11th"
p century(1127) == "12th"
p century(11201) == "113th"
