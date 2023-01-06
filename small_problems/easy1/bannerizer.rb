# Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  edge = ""
  mid = ""
  string.size.times { edge << "-"}
  string.size.times { mid << " "}
  if string.size > 76
    puts "This message is too large to fit in the box."
  else
    puts "+-#{edge}-+"
    puts "| #{mid} |"
    puts "| #{string} |"
    puts "| #{mid} |"
    puts "+-#{edge}-+"
  end
end

print_in_box("To boldly go where no one has gone before.")

print_in_box("")

print_in_box("To boldly go where no one has gone before. To boldly go where no one has gone before.")
