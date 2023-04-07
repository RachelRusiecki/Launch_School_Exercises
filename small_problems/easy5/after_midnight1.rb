=begin

Problem:
- Input: integer, can be positive or negative
- Output: string in 24 hour format ('hh:mm')

Explicit Rules:
- Method will take 1 argument (ANY integer)
- If integer input is positive, time will be after midnight
- If integer input is negative, time will be before midnight
- May not use `Date` or `Time` class

Implicit Rules:
- An input of 0 is midnight ('00:00')
- Integer inputs represent minutes before or after midnight
- Will use military time, not am/pm

Algorithm:
- Define a method called `time_of_day(num)` where `num` is a parameter that takes an integer as an argument an represents the amount of minutes from midnight
  - Initialize `hours` & `minutes` variables
    - Use the `.abs` method to get the abolute value of `num`
    - Call the modulo (`%`) method on the absolute value of `num`
    - Call `.divmod(60)` on the modulo value
  - If `num` is negative
    - Reassign `hours` to 23 - `hours`
    - Reassign `minutes` to 60 - `minutes`
  - Use string concatanation to output '#{hours}:#{minutes}'

=end

require 'time'

def time_of_day(num)
  hours, minutes = (num.abs % 1440).divmod(60)
  if num < 0
    hours = 23 - hours
    minutes = 60 - minutes
  end
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# # It's possible to write a single calculation with % that performs the entire normalization operation in one line of code. Give it a try.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  minutes >= 0 ? minutes % MINUTES_PER_DAY : MINUTES_PER_DAY - (minutes.abs % MINUTES_PER_DAY)
end

p normalize_minutes_to_0_through_1439(-3) == 1437
p normalize_minutes_to_0_through_1439(1443) == 3
p normalize_minutes_to_0_through_1439(-2500) == 380

# How would you approach this problem if you were allowed to use ruby's Date and Time classes?

