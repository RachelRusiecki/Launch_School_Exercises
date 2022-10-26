# Write a method that counts down to zero using recursion.

def countdown(n)
    if n <= 0
        puts n
    else
        puts n
        countdown(n - 1)
    end
end
countdown(18)
countdown(-3)