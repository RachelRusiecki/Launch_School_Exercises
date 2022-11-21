# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

stoplight = ["green", "yellow", "red"].sample
puts stoplight

# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

case stoplight
when "green" then puts "Go!"
when "yellow" then puts "Slow down!"
else puts "Stop!"
end