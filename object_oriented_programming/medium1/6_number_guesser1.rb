# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game.
# Note that a game object should start a new game with a new number to guess with each call to #play.

class GuessingGame
  attr_reader :num, :guesses

  def initialize
    @num = nil
    @guesses = nil
  end

  def play
    answer = nil
    @num = rand(1..100)
    @guesses = 7
    loop do
      if guesses > 1
        puts "You have #{guesses} guesses remaining."
      else
        puts 'You have 1 guess remaining.'
      end
      loop do
        print 'Enter a number between 1 and 100: '
        answer = gets.chomp.to_i
        break if (1..100).cover?(answer)
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

game = GuessingGame.new
game.play
game.play

# We took a straightforward approach here and implemented a single class. Do you think it's a good idea to have a Player class? What methods and data should be part of it?
# How many Player objects do you need? Should you use inheritance, a mix-in module, or a collaborative object?

class Player
  def guess
    answer = nil
    loop do
      print 'Enter a number between 1 and 100: '
      answer = gets.chomp.to_i
      break if (1..100).cover?(answer)
      print 'Invalid guess. '
    end
    answer
  end
end

class GuessingGameRevised
  attr_reader :num, :guesses, :player

  def initialize
    @num = nil
    @guesses = nil
    @player = Player.new
  end

  def play
    answer = nil
    @num = rand(1..100)
    @guesses = 7
    loop do
      if guesses > 1
        puts "You have #{guesses} guesses remaining."
      else
        puts 'You have 1 guess remaining.'
      end
      answer = player.guess
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

revised_game = GuessingGameRevised.new
revised_game.play
revised_game.play
