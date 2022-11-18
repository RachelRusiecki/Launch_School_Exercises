# Write a program that requests two integers from the user, adds them together, and then displays the result.
# Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.
# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
	loop do
		puts "Please enter a positive or negative integer:"
		answer = gets.chomp
		return answer.to_i if valid_number?(answer)
		puts "Invalid input. Only non-zero integers are allowed."
	end
end

x = nil
y = nil

loop do
	x = read_number
	y = read_number
	break if (x * y) < 0
	puts "Sorry. One integer must be positive, one must be negative. Please start over."
end
puts "#{x} + #{y} = #{x + y}"