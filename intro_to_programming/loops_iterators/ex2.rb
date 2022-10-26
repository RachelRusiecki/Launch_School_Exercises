# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

x = ""
while x != "STOP" do
    puts "Hi, how are you feeling?"
    answer = gets.chomp
    puts "Want me to ask you again?"
    x = gets.chomp
end