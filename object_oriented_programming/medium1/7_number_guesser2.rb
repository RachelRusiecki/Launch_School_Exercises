# In the previous exercise, you wrote a number guessing game that determines a secret number between 1 and 100, and gives the user 7 opportunities to guess the number.
# Update your solution to accept a low and high value when you create a GuessingGame object, and use those values to compute a secret number for the game.
# You should also change the number of guesses allowed so the user can always win if she uses a good strategy.
# Note that a game object should start a new game with a new number to guess with each call to #play.

class GuessingGame
  attr_reader :num, :guesses, :range_start, :range_end

  def initialize(range_start, range_end)
    @range_start = range_start
    @range_end = range_end
    @num = nil
    @guesses = nil
  end

  def play
    answer = nil
    @num = rand(range_start..range_end)
    @guesses = Math.log2((range_end - range_start) + 1).to_i + 1
    loop do
      if guesses > 1
        puts "You have #{guesses} guesses remaining."
      else
        puts 'You have 1 guess remaining.'
      end
      loop do
        print "Enter a number between #{range_start} and #{range_end}: "
        answer = gets.chomp.to_i
        break if (range_start..range_end).cover?(answer)
        print 'Invalid guess. '
      end
      if answer < num
        puts 'Your guess is too low.'
      elsif answer > num
        puts 'Your guess is too high.'
      else
        puts "That's the number!"
        puts ''
        break
      end
      puts ''
      @guesses -= 1
      break if @guesses == 0
    end
    puts answer == num ? 'You won!' : 'You have no more guesses. You lost!'
    puts ''
  end
end

game = GuessingGame.new(501, 1500)
game.play
game.play
