# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0 - 2 and then nil because the count will go to 2 and then exit because of the if statement and nil is the return value of the method because the explicit return didn't have anything.