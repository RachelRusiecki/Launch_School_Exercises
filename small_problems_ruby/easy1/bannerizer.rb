# Write a method that will take a short line of text, and print it within a box.

def print_in_box(str)
  if str.size <= 76
    puts "+-#{'-' * str.size}-+"
    puts "| #{' ' * str.size} |"
    puts "| #{str} |"
    puts "| #{' ' * str.size} |"
    puts "+-#{'-' * str.size}-+"
  else
    puts "+-#{'-' * 76}-+"
    puts "| #{' ' * 76} |"
    idx_start = 0
    idx_end = 75
    loop do
      puts "| #{str[idx_start..idx_end]} |"
      idx_start += 76
      idx_end += 76
      break if (str.size - 1) < idx_end
    end
    puts "| #{str[(idx_start)..]}#{' ' * (76 - (str.size % 76))} |" if str.size % 76 != 0
    puts "| #{' ' * 76} |"
    puts "+-#{'-' * 76}-+"
  end
end

print_in_box("To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no o")
print_in_box("abc")
