=begin

Problem:
- Input: string representing time of day in 24 hr format
- Output: integer representing minutes from midnight ('00:00')

Explicit Rules:
- Must write 2 methods that each take a string parameter representing the time of day.
- 1 method will be for calculating minutes BEFORE midnght, 1 will be for calculating minutes AFTER midnight
- Methods should return an integer between 0 and 1439 (# of minutes / day)
- Date & Time classes cannot be used

Implicit Rules:
- A string representing midnight ('00:00') will return 0 for both methods
- `after_midnight` method will find minutes past midnight
- `before_midnight` method will find minutes before midnight

Algorithm:
- Define a method called `after_midnight(time)` where time represents a string argument representing the time of day in 24 hr format
  - Return 0 if `time` is equal to `'24:00'`
  - Initialize an `array` variable and assign it to the return value of the `split(':')` method on the string argument
  - Use the `.map!` method to transform the array.
    - Use the `.to_i` method on each element so that each element is an integer
  - Multiply `array[0]` * 60 and add the result to `array[1]`
- Define a method called `before_midnight(time)` where time represents a string argument representing the time of day in 24 hr format
  - Use the `after_midnight` method to find the minutes after midnight
    - Initialize an `array` variable and assign it to the return value of the `split(':')` method on the string argument
    - Use the `.map!` method to transform the array.
      - Use the `.to_i` method on each element so that each element is an integer
  - Subtract the result of multiplying `array[0]` * 60 and addding the result to `array[1]`from 1440

=end

def after_midnight(time)
  return 0 if time == '24:00'
  arr = time.split(':').map(&:to_i)
  (arr[0] * 60) + arr[1]
end

def before_midnight(time)
  return 0 if time == '00:00'
  arr = time.split(':').map(&:to_i)
  1440 - ((arr[0] * 60) + arr[1])
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

def after_midnight(time)
  return 0 if time == '24:00'
  arr = time.split(':').map(&:to_i)
  (arr[0] * 60) + arr[1]
end

def before_midnight(time)
  return 0 if time == '00:00'
  arr = time.split(':').map(&:to_i)
  1440 - ((arr[0] * 60) + arr[1])
end
