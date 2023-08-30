=begin

Problem:
- Input: year
- Output: integer

Explicit Rules:
- Method will take 1 argument, a year.
- The return value will be the number of occurences of a Friday the 13th.
- Assume the year is greater than 1752.

Implicit Rules:
- The return value should be an integer.

Algorithm:
- Define a method called `friday_13th` that takes 1 argument, an integer representing a year.
  - Initialize an empty array variable for the Friday dates.
  - Iterate through the numbers 1-12 representing the months of the year.
    - Iterate through the numbers 1-31 representing the days of each month.
    - Create a new Date variable and set it equal to each day of the month (and therefore each day of the year).
    - If the date is a Friday, append it to the Fridays array.
  - Return the size of the Fridays array.

=end

require 'date'
require 'pry'

def friday_13th(year)
  fridays = []
  1.upto(12) do |month|
    date = Date.new(year, month, 13)
    fridays << date if date.friday?
  end
  fridays.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# An interesting variation on this problem is to count the number of months that have five Fridays. This one is harder than it sounds since you must account for leap years.

def five_fridays(year)
  month_count = 0
  1.upto(12) do |month|
    fridays = 0
    date = Date.new(year, month, 1)
    date.upto(date.next_month.prev_day) { |day| fridays += 1 if day.wday == 5 }
    month_count += 1 if fridays == 5
  end
  month_count
end

p five_fridays(2023)

