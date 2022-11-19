# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# 0 - 5 because the #times method counts from 0 and does 5 iterations (0 - 4). Then, the #times method returns the initial integer (5), so that is also the return value of the method.