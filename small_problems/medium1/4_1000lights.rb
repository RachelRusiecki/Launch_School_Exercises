=begin

Problem:
- Input: integer
- Output: array of integers

Explicit Rules:
- Method will take 1 argument, an integer representing the number of switches & also the number of iterations
- All switches initially start out off
- On the 1st iteration, all lights are turned on
- On the 2nd iteration, every 2 lights are switched starting w/ the 2nd one
- On the 3rd iteration, every 3 lights are switched starting w/ the 3rd one, etc
- The last iteration will be the number passed in as an argument
- The return value will be an array of integers representing the switches that end up turned on

Implicit Rules:
- Assume all arguments are positive
- Returned arrays should contain integers

Algorithm:
- Define a method that takes 1 argument, an integer
  - Create a range of 1 through that integer
  - Transform the range
    - Convert each element of the range to false
  - Initialize a counter variable & set it equal to 1
  - Start a loop
    - Transform the boolean array
      - If the (index + 1) is divisible by the current counter, change the element from true to false or vice versa
    - Increase the counter by 1
    - Break out of the loop when counter is greater then the size of the integer
  - Initialize a new empty array variable
  - Iterate through the ending boolean array
    - If the element is true, append the index + 1 to the new array
  - Return the new array

=end

# def switches(num)
#   counter = 1
#   end_arr = (1..num).map { false }
#   num.times do |idx|
#     end_arr.map! do |boolean|
#       if (idx + 1) % counter == 0
#         !boolean
#       else
#         boolean
#       end
#     end
#     p end_arr
#     counter += 1
#   end
#   result = []
#   end_arr.each_with_index { |boolean, idx| result << (idx + 1) if boolean }
#   result
# end

def switches(num)
  counter = 1
  end_arr = (1..num).map { false }
  until counter > num
    end_arr.map!.with_index { |boolean, idx| (idx + 1) % counter == 0 ? !boolean : boolean }
    counter += 1
  end
  result = []
  end_arr.each_with_index { |boolean, idx| result << (idx + 1) if boolean }
  result
end

p switches(5) == [1, 4]
p switches(10) == [1, 4, 9]
p switches(1000)

# We could have a method that replicates the output from the description of this problem. How would we go about writing that code?

def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

def off_lights(lights)
  lights.select { |_position, state| state == "off" }.keys
end

def toggle_every_nth_light!(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light!(lights, iteration_number)
  end

  on_lights(lights)
end

def replicate(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light!(lights, iteration_number)
  end
  off_phrase = ''
  on_phrase = ''
  if off_lights(lights).size == 2
    off_phrase =  "lights #{off_lights(lights)[0]}} and #{off_lights(lights)[1]} are now off"
  else
    off_phrase = "lights #{off_lights(lights)[0..-2].join(', ')}, and #{off_lights(lights).last} are now off"
  end
  if on_lights(lights).size == 1
    on_phrase = "#{on_lights(lights)} is on"
  elsif on_lights(lights).size == 2
    on_phrase = "#{on_lights(lights)[0]} and #{on_lights(lights)[1]} are on"
  else
    on_phrase = "#{on_lights(lights)[0..-2].join(', ')}, and #{on_lights(lights).last} are on"
  end
  puts "#{off_phrase}; #{on_phrase}."
end

replicate(5)
replicate(10)
