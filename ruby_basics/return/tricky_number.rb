# What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# 1 because Ruby assumes conditions are true unless otherwise specified, so 1 would be the return value of the method.