# rubocop:disable Layout/LineLength
=begin

Problem:
- Input: integer
- Output: string

Explicit Rules:
- Create Clock class
- Should add & subtract minutes from the given time
- Don't mutate clock objects when adding/subtracting minutes, create new Clock object
- Clocks are equal if they show the same time
- May not use date or time functionality

Implicit Rules:
- String times should be in military time format
- 1st argument represents hours
- 2nd optional argument represents minutes
- Going past midnight should wrap around to 00:00

Data Structures:
- Clock class
- integers
- strings
- addition / subtraction

Algorithm:
- Define Clock class
  - Define at class method that takes 1 - 2 arguments, 2nd argument defaults to 0 if not given
    - Instantiate new Clock object
    - Initialize an array of the 2 arguments, representing hours & minutes respectively, save it as @time instance variable
    - Return Clock object
  - Define to_s instance method
    - Initialize empty string variable
    - If 1st element of @time array is less than 10
      - Append 0 to newly created string
    - Append number to string
    - Append colon to string
    - If 2nd element is 0
      - Append 00 to string
      - Return string
    - If 2nd element is less than 10
      - Append 0 to string
    - Append number to string
  - Define + instance variable
    - Instantiate new Clock object
    - Set @time instance variable to original array
    - Add number to minutes element
    - If minutes reaches 60
      - Reassign minutes to 0
      - Increase hours by 1
    - If hours reaches 24
      - Reassign hours to 0
  - Define - instance method
    - Instantiate new Clock object
    - Set @time instance variable to original array
    - Subtract number to minutes element
    - If minutes reaches -1
      - Reassign minutes to 59
      - Decrease hours by 1
    - If hours reaches -1
      - Reassign hours to 23

=end
# rubocop:enable Layout/LineLength

class Clock
  attr_reader :hrs, :mins

  def initialize(hrs, mins)
    @hrs = hrs
    @mins = mins
  end

  def self.at(hrs, mins=0)
    new(hrs, mins)
  end

  def to_s
    format('%02d:%02d', hrs, mins)
  end

  def +(add_mins)
    new_time = add_mins.divmod(60)
    new_time.map!.with_index { |time, idx| time + [hrs, mins][idx] }
    new_time[0] += new_time[1] / 60
    new_time[1] %= 60
    new_time[0] %= 24
    Clock.new(new_time[0], new_time[1])
  end

  def -(subtract_mins)
    new_time = [hrs, mins]
    new_time[1] -= subtract_mins
    until new_time[1] >= 0
      new_time[1] += 60
      new_time[0] -= 1
    end
    new_time[0] += 24 until new_time[0] >= 0
    Clock.new(new_time[0], new_time[1])
  end

  def ==(other_clock)
    hrs == other_clock.hrs && mins == other_clock.mins
  end
end
