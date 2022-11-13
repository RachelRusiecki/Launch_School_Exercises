# Given the array below, use loop to remove and print each name from first to last. Stop the loop once names doesn't contain any more elements.

names = ["Sally", "Joe", "Lisa", "Henry"]

loop do
	puts names.shift
	break if names.empty?
end

# To go in reverse order:

# loop do
# 	puts names.pop
# 	break if names.empty?
# end