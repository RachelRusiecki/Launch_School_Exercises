# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0 - 4 and then 10 because the #times method puts 0 - 4 and 10 is the return value of the method.