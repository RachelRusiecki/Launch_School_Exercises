=begin

Problem:
- Input: integer or float
- Output: string representing the angle

Explicit Rules:
- Method will take 1 argument, a number representing an angle
- Return value will be a string representing the angle in degrees, minutes, seconds format (00°00'00"), so minutes and seconds should be formatted to 2 digits

Implicit Rules:
- Can use %() format to return the string
- The degrees do not have to be 2 digits, they can be any amount of digits
- 360 can either return 360° or 0°
- There are 60 minutes in a degree, there are 60 seconds in a minute

Algortithm:
- Define a method called `dms` that takes 1 argument, an integer or float
  - Divide the degrees by 1
    - The result will be the degrees
    - The remainder will be the minutes & seconds
  - Multiply the remainder by 60 * & divide the result by 1
    - The result will be the minutes formatted to 2 digits
    - The remainder will be the seconds
  - Multiply the seconds by 60 & format to 2 digits

=end

def dms(angle)
  until angle >= 0
    angle += 360
  end
  degrees, mins_secs = angle.remainder(360).divmod(1)
  mins, secs = (mins_secs * 60).divmod(1)
  %(#{degrees}°#{sprintf('%02d', mins)}'#{sprintf('%02d', (secs * 60).to_i)})
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)
p dms(400)
p dms(-40)
p dms(-420)
